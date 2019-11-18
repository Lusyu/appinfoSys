package com.is666is.lpl.service;

import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.util.List;

public interface InfoService {
    <T> PageInfo<T> getInfoList(InfoConditions<T> infoConditions);
    void addInfo(Info info, MultipartFile logo, ServletContext servletContext);
}
