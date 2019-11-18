package com.is666is.lpl.web.controller;

import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import com.is666is.lpl.service.InfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/infoController")
public class InfoController {
    @Resource(name = "infoService")
    private InfoService infoService;
    @RequestMapping("/selectInfo")
    public String selectInfo(Model model,@ModelAttribute("info")InfoConditions<Info> infoConditions){/*app分页查询*/
        //System.out.println(infoConditions.getSoftwareName()+"----- "+infoConditions.getStatusId()+"-----  1:"+infoConditions.getCategoryLevel1()+"-----  2:"+infoConditions.getCategoryLevel2()+"-----  3:"+infoConditions.getCategoryLevel3());
        PageInfo<Info> infoList = infoService.getInfoList(infoConditions);
        model.addAttribute("pageInfo",infoList);
       // System.out.println("--------------");
        return  "developer/appinfolist.jsp";
    }
}
