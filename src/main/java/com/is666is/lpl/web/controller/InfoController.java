package com.is666is.lpl.web.controller;

import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import com.is666is.lpl.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/infoController")
public class InfoController {
    @Autowired
    private ServletContext servletContext;
    @Resource(name = "infoService")
    private InfoService infoService;
    @RequestMapping("/selectInfo")
    public String selectInfo(Model model,@ModelAttribute("info")InfoConditions<Info> infoConditions){/*app分页查询*/
        //System.out.println(infoConditions.getSoftwareName()+"----- "+infoConditions.getStatusId()+"-----  1:"+infoConditions.getCategoryLevel1()+"-----  2:"+infoConditions.getCategoryLevel2()+"-----  3:"+infoConditions.getCategoryLevel3());
        PageInfo<Info> infoList = infoService.getInfoList(infoConditions);
        model.addAttribute("pageInfo",infoList);
        System.out.println("--------------");
        return  "developer/appinfolist.jsp";
    }
    @RequestMapping(value = "/addInfo",method = RequestMethod.POST)
    @ResponseBody
    public  String addInfo(Info info, MultipartFile logo){
        System.out.println(info);
        System.out.println(logo.getOriginalFilename());
        System.out.println(servletContext.getRealPath("/static/images"));

        //return "redirect:/infoController/selectInfo";
        return "noel";
    }
}
