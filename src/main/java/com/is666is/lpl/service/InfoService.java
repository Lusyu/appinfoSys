package com.is666is.lpl.service;

import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.util.List;

public interface InfoService {
    <T> PageInfo<T> getInfoList(InfoConditions<T> infoConditions);
    public<T> PageInfo<T> selectInfoAudit(InfoConditions<T> infoConditions);
    void addInfo(Info info, MultipartFile logo, ServletContext servletContext);
    int deleteAppInfo(Long id);
    int updateAppInfoStatus(Long id,String sale);
    Info selectInfo(Long id);
    void udpateInfo(Info info,MultipartFile logo);
    void queryInfo(Long id, Model model);
    void updateAppAudit(Long appId,Long versionId,Long status);
}
