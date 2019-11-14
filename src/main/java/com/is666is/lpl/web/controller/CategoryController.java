package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.Category;
import com.is666is.lpl.service.CategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {
    @Resource(name = "categoryService")
    private CategoryService categoryService;
    @RequestMapping("/categorys")
    @ResponseBody
    public List<Category> getCategorys(){
        return  categoryService.getList();
    }
}
