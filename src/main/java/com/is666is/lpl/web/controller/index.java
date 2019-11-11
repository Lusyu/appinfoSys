package com.is666is.lpl.web.controller;

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
    @RequestMapping("/main")//转发到开发者的主页
    public  String main(){
        return  "/developer/main.jsp";
    }
}
