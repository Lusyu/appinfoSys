package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.Version;
import com.is666is.lpl.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/vcersion")
public class VersionController {
    @Autowired
    private VersionService versionService;
    //查询与当前app信息有关的版本信息到新增版本页面
    @RequestMapping(value = "/selectVersions",method = RequestMethod.GET)
    public String selectVersions(Long id, Model model){
        model.addAttribute("versions",versionService.getAppInfoVersion(id));
        model.addAttribute("appId",id);
        return "/developer/appversionadd.jsp";
    }
    //新增版本
    @RequestMapping(value = "/addVersion",method = RequestMethod.POST)
    public  String addVersion(Version version, MultipartFile apk){
        versionService.addVersion(version,apk);
        return  "redirect:/infoController/selectInfo";
    }
    //查询版本到修改页面
    @RequestMapping("/selectVersion")
    public  String selectVersion(Long appId,Long versionId,Model model){
        versionService.getVersions(appId,versionId,model);
        return  "/developer/appversionmodify.jsp";
    }
    //版本修改
    @RequestMapping("/updateVersion")
    public  String updateVersion(Version version,MultipartFile logo){
        versionService.updateVersion(version,logo);
        return  "redirect:/infoController/selectInfo";
    }
}
