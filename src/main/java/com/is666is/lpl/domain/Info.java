package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.math.BigDecimal;
import java.util.Date;
@Setter
@Getter
@Alias("Info")
public class Info {
    private Long id;

    private String softwareName;

    private String APKName;

    private String supportROM;

    private String interfaceLanguage;

    private BigDecimal softwareSize;

    private Date updateDate;

    private Long devId;

    private String appInfo;

    @Override
    public String toString() {
        return "Info{" +
                "id=" + id +
                ", softwareName='" + softwareName + '\'' +
                ", APKName='" + APKName + '\'' +
                ", supportROM='" + supportROM + '\'' +
                ", interfaceLanguage='" + interfaceLanguage + '\'' +
                ", softwareSize=" + softwareSize +
                ", updateDate=" + updateDate +
                ", devId=" + devId +
                ", appInfo='" + appInfo + '\'' +
                ", dictionaryStatus=" + dictionaryStatus +
                ", onSaleDate=" + onSaleDate +
                ", offSaleDate=" + offSaleDate +
                ", dictionaryFlatformId=" + dictionaryFlatformId +
                ", categoryLevel3=" + categoryLevel3 +
                ", downloads=" + downloads +
                ", createdBy=" + createdBy +
                ", creationDate=" + creationDate +
                ", modifyBy=" + modifyBy +
                ", modifyDate=" + modifyDate +
                ", categoryLevel1=" + categoryLevel1 +
                ", categoryLevel2=" + categoryLevel2 +
                ", logoPicPath='" + logoPicPath + '\'' +
                ", logoLocPath='" + logoLocPath + '\'' +
                ", version=" + version +
                '}';
    }

    private Dictionary dictionaryStatus=new Dictionary();//列status状态

    private Date onSaleDate;

    private Date offSaleDate;

    private Dictionary dictionaryFlatformId=new Dictionary();//列flatformId所属平台

    private Category categoryLevel3=new Category();//列categoryLevel3三级分类

    private Long downloads;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;

    private Category categoryLevel1=new Category();//一级分类

    private Category categoryLevel2=new Category();//二级分类

    private String logoPicPath;

    private String logoLocPath;

    private Version version=new Version();
}