package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.BackendUser;
import com.is666is.lpl.service.BackendUserService;
import com.is666is.lpl.util.UserContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/backendUser")
public class BackendUserController {
    @Resource(name = "backendUserService")
    private BackendUserService backendUserService;
    @RequestMapping("/loginBackendUser")
    public String loginBackendUser(BackendUser backendUser, Model model){
        try {
            UserContext.getSession().setAttribute("lpl","11111");
            backendUserService.getBackendUser(backendUser);
        }catch (RuntimeException ex){
            model.addAttribute("ts",ex.getMessage());
            return "/backendlogin.jsp";
        }
        return "redirect:/index/mainBackendUser";
    }
}
