package com.is666is.lpl.service.impl;

import com.is666is.lpl.domain.Info;
import com.is666is.lpl.mapper.InfoMapper;
import com.is666is.lpl.service.InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("infoService")
public class InfoServiceImpl implements InfoService {
    @Autowired
    private InfoMapper infoMapper;
    public List<Info> getInfoList() {
        return infoMapper.selectInfo();
    }
}
