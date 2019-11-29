package com.is666is.lpl.web.controller;

import com.is666is.lpl.util.UserContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/index")
public class index {
    @RequestMapping("/login")//转发到登录
    public  String login(){
        return  "/devlogin.jsp";
    }
    @RequestMapping("/loginBackendUser")
    public String superUser() {
            return "/backendlogin.jsp";
    }
    @RequestMapping("/mainBackendUser")
    public String loginBackendUser() {
        return "/backend/main.jsp";
    }
    @RequestMapping("/main")//转发到开发者的主页
    public  String main(){
        return  "/developer/main.jsp";
    }
    @RequestMapping("/appinfolist")//转发到开发者的查询app页面
    public  String appinfolist(){
        return  "/developer/appinfolist.jsp";
    }

    @RequestMapping("/appinfoadd")//转发到开发者的保存app页面
    public  String appinfoadd(){
        return  "/developer/appinfoadd.jsp";
    }
}
