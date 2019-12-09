package com.is666is.lpl.service.impl;
import com.is666is.lpl.domain.User;
import com.is666is.lpl.domain.Version;
import com.is666is.lpl.mapper.VersionMapper;
import com.is666is.lpl.service.VersionService;
import com.is666is.lpl.util.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service("versionService")
@Transactional
public class VersionServiceImpl implements VersionService{
    @Autowired
    private VersionMapper versionMapper;
    @Transactional(readOnly = true)
    public List<Map<String,Object>> getAppInfoVersion(Long id) {
        return versionMapper.getAppInfoVersion(id);
    }

    //版本保存
    @Override
    public void addVersion(Version version, MultipartFile apk) {
        String path = UserContext.getSession().getServletContext().getRealPath("/statics/uploadfiles");
        String contextPath=UserContext.getSession().getServletContext().getContextPath();
        String pakName=null;
        try {
            int i = apk.getOriginalFilename().lastIndexOf(".");
            pakName=apk.getOriginalFilename().substring(0,i)+"-"+version.getVersionNo()+".apk";
            Files.copy(apk.getInputStream(), Paths.get(path,pakName));
            version.setApkFileName(pakName);
            version.setDownloadLink(contextPath+"/statics/uploadfiles/"+pakName);
            version.setApkLocPath(path+"\\"+pakName);
            version.setCreatedBy(((User)(UserContext.getCurrentUser())).getId());
            version.setCreationDate(new Date());
            version.setModifyDate(new Date());
            versionMapper.addVersion(version);
            UserContext.getSession().setAttribute("ts","新增版本成功!");
        } catch (Exception e) {
            e.printStackTrace();
            File file=new File(path+"\\"+pakName);
            file.delete();
            UserContext.getSession().setAttribute("ts","新增版本失败!");
        }
    }

    //查询版本信息到修改版本页面
    @Transactional(readOnly = true)
    public void getVersions(Long appInfoId, Long versionId,Model model) {
        model.addAttribute("versions", versionMapper.getAppInfoVersion(appInfoId));//查询出该app的所有的版本信息
        model.addAttribute("version", versionMapper.selectByPrimaryKey(versionId));//查询出该app的最新版本
    }

    @Override
    public void updateVersion(Version version, MultipartFile logo) {
        String pakName=null;
        System.out.println();
        if (!"".equals(logo.getOriginalFilename())){
            String path = UserContext.getSession().getServletContext().getRealPath("/statics/uploadfiles");
            String contextPath=UserContext.getSession().getServletContext().getContextPath();
            int i = logo.getOriginalFilename().lastIndexOf(".");
            pakName=logo.getOriginalFilename().substring(0,i)+"-"+version.getVersionNo()+".apk";
            try {
                Files.copy(logo.getInputStream(), Paths.get(path,pakName));
            } catch (IOException e) {
                e.printStackTrace();
            }
            version.setApkFileName(pakName);
            version.setDownloadLink(contextPath+"/statics/uploadfiles/"+pakName);
            version.setApkLocPath(path+"\\"+pakName);
        }
        version.setModifyBy(((User)(UserContext.getCurrentUser())).getId());
        version.setModifyDate(new Date());
        int i = versionMapper.updateByPrimaryKey(version);
        UserContext.setInfo(i>0?"修改版本成功!":"修改版本失败!");
    }
}
