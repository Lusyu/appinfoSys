package com.is666is.lpl.web.advice;

import com.is666is.lpl.util.UserContext;
import org.springframework.http.HttpRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@ControllerAdvice
public class HandlerExceptionAdvice {
    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public String upload(MaxUploadSizeExceededException me, HttpServletRequest request){
        System.out.println(request.getRequestURI());
        UserContext.getSession().setAttribute("ts","文件大小不能超过大小100KB");
        return  "redirect:/index/appinfoadd";
    }
}
