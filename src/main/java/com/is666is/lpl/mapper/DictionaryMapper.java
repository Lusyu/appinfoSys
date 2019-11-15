package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Dictionary;
import java.util.List;

public interface DictionaryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Dictionary record);

    Dictionary selectByPrimaryKey(Long id);

    List<Dictionary> selectAll();

    int updateByPrimaryKey(Dictionary record);
    List<Dictionary> selectTypeName(String typeName);

    Dictionary selectInfoId(Long status);
}