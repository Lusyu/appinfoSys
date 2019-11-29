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
    //查询所有App信息
    @RequestMapping(value = "/selectInfo")
    public String selectInfo(Model model,@ModelAttribute("info")InfoConditions<Info> infoConditions){/*app分页查询*/
        PageInfo<Info> infoList = infoService.getInfoList(infoConditions);
        model.addAttribute("pageInfo",infoList);
        return  "/developer/appinfolist.jsp";
    }
    //查询所有审核App信息
    @RequestMapping(value = "/selectInfoAudit")
    public String selectInfoAudit(Model model,@ModelAttribute("info")InfoConditions<Info> infoConditions){/*app分页查询*/
        PageInfo<Info> infoList = infoService.selectInfoAudit(infoConditions);
        model.addAttribute("pageInfo",infoList);
        return  "/backend/applist.jsp";
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
    /*修改appinfo的状态上下架*/
    @RequestMapping(value = "/updateAppInfoStatus",method = RequestMethod.POST)
    @ResponseBody
    public Object updateAppInfoStatus(Long id,String sale){
        return  infoService.updateAppInfoStatus(id,sale);
    }

    //查询出单个appinfo到修改页面
    @RequestMapping(value = "/selectAppInfo",method = RequestMethod.GET)
    public String selectAppInfo(Long id,Model model){
        model.addAttribute("appInfo",infoService.selectInfo(id));
        return "/developer/appinfomodify.jsp";
    }
    //修改appInfo信息
    @RequestMapping(value = "/updateAppInfo",method = RequestMethod.POST)
    public  String updateInfo(Info info,MultipartFile logo){
        infoService.udpateInfo(info,logo);
        return "redirect:/infoController/selectInfo";
    }
    //查询指定app信息到app查看页面包括与之相关的版本号
   @RequestMapping("/queryInfo")
    public  String queryInfo(Long id,Model model){
        infoService.queryInfo(id,model);
        return  "/developer/appinfoview.jsp";
    }

    //查询出单个appinfo到审核页面
    @RequestMapping(value = "/selectAppInfoAndVersion",method = RequestMethod.POST)
    public String selectAppInfoAndVersion(Long id,Model model){
        model.addAttribute("appInfo",infoService.selectInfo(id));
        return "/backend/appcheck.jsp";
    }

    //查询出单个appinfo到审核页面
    @RequestMapping(value = "/updateAppAudit",method = RequestMethod.POST)
    public String updateAppAudit(Long appId,Long versionId,Long status){
        infoService.updateAppAudit(appId,versionId,status);
        return "redirect:/infoController/selectInfoAudit";
    }

}
