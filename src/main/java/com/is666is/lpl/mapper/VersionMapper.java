package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Version;
import java.util.List;

public interface VersionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Version record);

    Version selectByPrimaryKey(Long id);

    List<Version> selectAll();

    int updateByPrimaryKey(Version record);
}