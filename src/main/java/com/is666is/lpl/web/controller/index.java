package com.is666is.lpl.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/index")
public class index {
    @RequestMapping("/login")
    public  String login(){
        System.out.println("你火花塞安定");
        return  "/devlogin.jsp";
    }
}
