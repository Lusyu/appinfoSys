package com.is666is.lpl.page;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class InfoConditions<T> extends ObjectResult<T>{

    private String softwareName;//软件名称
    private Integer statusId=-1;//app状态id
    private Integer flatformId=-1;//所属平台id
    private Integer categoryLevel1=-1;//一级分类
    private Integer categoryLevel2=-1;//二级分类
    private Integer categoryLevel3=-1;//三级分类
    public String getSoftwareName() {
        return super.isNull(this.softwareName);
    }
}
