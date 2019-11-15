package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Info;
import java.util.List;

public interface InfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Info record);

    Info selectByPrimaryKey(Long id);

    List<Info> selectAll();

    int updateByPrimaryKey(Info record);

    List<Info> selectInfo();
}