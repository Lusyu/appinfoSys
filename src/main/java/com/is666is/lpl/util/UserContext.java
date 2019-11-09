package com.is666is.lpl.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

public class UserContext {
    private static  final String SESSION_USER ="session_user";
    public  static HttpSession getSession(){
        return ((ServletRequestAttributes)(RequestContextHolder.getRequestAttributes()))
                .getRequest()
                .getSession();
    }
    public  static<T>  void setCurrentUser(T user){
        if (user==null){
            getSession().invalidate();
        }else {
            getSession().setAttribute(SESSION_USER,user);
        }
    }
    public  static <T> T getCurrentUser(){
        return (T) getSession().getAttribute(SESSION_USER);
    }
}
