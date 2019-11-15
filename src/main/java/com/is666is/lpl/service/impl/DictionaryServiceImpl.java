package com.is666is.lpl.service.impl;

import com.is666is.lpl.domain.Dictionary;
import com.is666is.lpl.mapper.DictionaryMapper;
import com.is666is.lpl.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("dictionaryService")
@Transactional
public class DictionaryServiceImpl implements DictionaryService {
    @Autowired
    private DictionaryMapper dictionaryMapper;
    @Transactional(readOnly = true)
    //查询App状态 所属平台 用户类型
    public List<Dictionary> selectTypeName(String typeName) {
        return dictionaryMapper.selectTypeName(typeName);
    }
}
