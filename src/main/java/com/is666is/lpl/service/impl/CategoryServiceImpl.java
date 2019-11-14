package com.is666is.lpl.service.impl;

import com.is666is.lpl.domain.Category;
import com.is666is.lpl.mapper.CategoryMapper;
import com.is666is.lpl.service.BackendUserService;
import com.is666is.lpl.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Override
    public List<Category> getList() {
        return categoryMapper.selectAll();
    }
}
