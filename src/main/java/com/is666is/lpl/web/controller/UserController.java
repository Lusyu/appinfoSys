package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.User;
import com.is666is.lpl.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name ="userService")
    private UserService userService;
    @RequestMapping(value = "/login")
    public String login(User user, Model model){
        try {
            userService.getUser(user);
        }catch (RuntimeException ex){
            model.addAttribute("ex",ex.getMessage());
            return "/devlogin.jsp";
        }
        return "redirect:/index/main";//重定向到到处理主页的页面
    }
}
