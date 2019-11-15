package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.Info;
import com.is666is.lpl.service.InfoService;
import org.springframework.stereotype.Controller;
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
    @ResponseBody
    public List<Info> selectInfo(){
        System.out.println(1+"---------------------");
        List<Info> infoList = infoService.getInfoList();
        System.out.println(infoList.size()+"****-----------------");
        return  infoList;
    }
}
