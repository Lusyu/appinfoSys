package com.is666is.lpl.web.controller;

import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import com.is666is.lpl.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
    //查询App信息
    @RequestMapping("/selectInfo")
    public String selectInfo(Model model,@ModelAttribute("info")InfoConditions<Info> infoConditions){/*app分页查询*/
        PageInfo<Info> infoList = infoService.getInfoList(infoConditions);
        model.addAttribute("pageInfo",infoList);
        return  "developer/appinfolist.jsp";
    }
    /*保存App信息*/
    @RequestMapping(value = "/addInfo",method = RequestMethod.POST)
    public  String addInfo(Info info, MultipartFile logo){
          infoService.addInfo(info,logo,servletContext);
        return "redirect:/infoController/selectInfo";
    }
    //删除appinfo
    @RequestMapping(value = "/deleteAppInfo")
    @ResponseBody
    public Object deleteAppInfo(Long id){
         if (infoService.deleteAppInfo(id)>0){
             return  true;
         }else {
             return  false;
         }
    }
}
