package com.is666is.lpl.page;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ObjectResult<T> {
    private Integer currentPage=1;
    private Integer sizePage=4;
    protected String isNull(String str){
        return  hasLength(str)?str:null;
    }
    protected  boolean hasLength(String str){
        return  str!=null&&!"".equals(str.trim());
    }

}
