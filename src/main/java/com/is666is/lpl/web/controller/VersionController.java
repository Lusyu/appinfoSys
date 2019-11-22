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
    @RequestMapping(value = "/selectVersions",method = RequestMethod.GET)
    public String selectVersions(Long id, Model model){
        model.addAttribute("versions",versionService.getAppInfoVersion(id));
        model.addAttribute("appId",id);
        return "/developer/appversionadd.jsp";
    }
    @RequestMapping("/addVersion")
    public  String addVersion(Version version, MultipartFile apk){
        versionService.addVersion(version,apk);
        return  "redirect:/infoController/selectInfo";
    }
}
