package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Category;
import java.util.List;

public interface CategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Category record);

    Category selectByPrimaryKey(Long id);

    List<Category> selectAll();

    int updateByPrimaryKey(Category record);
    Category selectInfoId(Long categoryLevel);
}