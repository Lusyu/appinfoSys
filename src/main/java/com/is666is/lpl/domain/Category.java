package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.Date;
@Setter
@Getter
@Alias("Category")
public class Category {
    private Long id;

    private String categoryCode;

    private String categoryName;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", categoryCode='" + categoryCode + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", parentId=" + parentId +
                ", createdBy=" + createdBy +
                ", creationTime=" + creationTime +
                ", modifyBy=" + modifyBy +
                ", modifyDate=" + modifyDate +
                '}';
    }

    private Long parentId;

    private Long createdBy;

    private Date creationTime;

    private Long modifyBy;

    private Date modifyDate;
 }