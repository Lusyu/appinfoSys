package com.is666is.lpl.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.domain.User;
import com.is666is.lpl.mapper.InfoMapper;
import com.is666is.lpl.mapper.VersionMapper;
import com.is666is.lpl.page.InfoConditions;
import com.is666is.lpl.service.InfoService;
import com.is666is.lpl.util.UserContext;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service("infoService")
@Transactional
public class InfoServiceImpl implements InfoService {
    @Autowired
    private InfoMapper infoMapper;
    @Autowired
    private VersionMapper versionMapper;
    /*分页查询*/
    @Transactional(readOnly = true)
    public<T> PageInfo<T> getInfoList(InfoConditions<T> infoConditions) {
        PageHelper.startPage(infoConditions.getCurrentPage(),infoConditions.getSizePage());
        return new PageInfo<T>(infoMapper.selectInfo(infoConditions));
    }
    /*保存APP信息*/
    public void addInfo(Info info, MultipartFile logo, ServletContext servletContext) {
        String imagName=UUID.randomUUID().toString()+"."+ FilenameUtils.getExtension(logo.getOriginalFilename());
        String  path= servletContext.getRealPath("/statics/images");
        String  logoLocPath=path+"\\"+imagName;
        String  logoPicPath="statics/images/"+imagName;
        try {
            Files.copy(logo.getInputStream(), Paths.get(path,imagName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        User user = UserContext.getCurrentUser();
        info.setLogoLocPath(logoLocPath);
        info.setLogoPicPath(logoPicPath);
        info.setDevId(user.getId());
        info.setUpdateDate(new Date());
        info.setCreationDate(new Date());
        infoMapper.insert(info);
    }

    @Override
    public int deleteAppInfo(Long id) {
        versionMapper.deleteAppId(id);
        return infoMapper.deleteByPrimaryKey(id);
    }
}
