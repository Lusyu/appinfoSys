package com.is666is.lpl.web.advice;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class HandlerExceptionAdvice {
    @ExceptionHandler(MaxUploadSizeExceededException.class)
    public ModelAndView upload(MaxUploadSizeExceededException me){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("ts","文件的大小不能超过100KB");
        modelAndView.setViewName("developer/appinfoadd.jsp");
        return  modelAndView;
    }
}
