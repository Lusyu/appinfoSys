package com.is666is.lpl.web.controller;

import com.is666is.lpl.domain.Dictionary;
import com.is666is.lpl.service.DictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/dictionary")
public class DictionaryController {
    @Resource(name = "dictionaryService")
    private DictionaryService dictionaryService;
    @RequestMapping("/selectTypeName")
    @ResponseBody
    public List<Dictionary> selectTypeName(@RequestParam(name = "typeName",required = false)String typeName){
        return  dictionaryService.selectTypeName(typeName);
    }
}
