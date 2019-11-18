package com.is666is.lpl.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.is666is.lpl.domain.Info;
import com.is666is.lpl.mapper.InfoMapper;
import com.is666is.lpl.page.InfoConditions;
import com.is666is.lpl.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.util.List;

@Service("infoService")
@Transactional
public class InfoServiceImpl implements InfoService {
    @Autowired
    private InfoMapper infoMapper;
    @Transactional(readOnly = true)
    public<T> PageInfo<T> getInfoList(InfoConditions<T> infoConditions) {
        PageHelper.startPage(infoConditions.getCurrentPage(),infoConditions.getSizePage());
        return new PageInfo<T>(infoMapper.selectInfo(infoConditions));
    }
    public void addInfo(Info info, MultipartFile logo, ServletContext servletContext) {

    }
}
