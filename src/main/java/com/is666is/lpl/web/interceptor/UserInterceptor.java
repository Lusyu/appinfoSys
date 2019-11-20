package com.is666is.lpl.web.interceptor;

import com.is666is.lpl.util.UserContext;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用户是否登录
 */
public class UserInterceptor extends HandlerInterceptorAdapter {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (UserContext.getCurrentUser()==null){
            response.sendRedirect(request.getContextPath()+"/index/login");
            return  false;
        }
        return  true;
    }
}
