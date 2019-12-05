package com.is666is.lpl.util;

import java.util.HashMap;
import java.util.Map;

public class PageScope {
    /**
     * 根据当前页码，显示页码工具栏，显示当前页码的前两页、当前页和后两页
     * @param curPage   当前页码
     * @param totalPage  总条数
     * @return
     */
    public static Map<String,Integer> getMapPageSize(int curPage, int totalPage){
        Integer currentPageMinPage=1;
        Integer currentPageMaxPage=1;
        if(totalPage>5){//总条数大于5
            if(1==curPage||2==curPage||3==curPage){//当前页码1，2，3都直接显示1-5
                currentPageMaxPage=5;
            }else{//当前页码>=4
                if(curPage>(totalPage-2)){//当 当前页码是最后两页，不再计算，就显示 总条数-4 - 总条数
                    currentPageMinPage=totalPage-4;
                    currentPageMaxPage=totalPage;
                }else{//当  4=<当前页码<总条数-2  计算显示 当前页码的前两页、当前页和后两页
                    currentPageMinPage=curPage-2;
                    currentPageMaxPage=curPage+2;
                }
            }
        }else {
            currentPageMaxPage=totalPage;
        }
        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("currentPageMinPage",currentPageMinPage);
        map.put("currentPageMaxPage",currentPageMaxPage);
        return map;
    }
}
