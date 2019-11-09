package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.Date;
@Setter
@Getter
@Alias("Dictionary")
public class Dictionary {
    private Long id;

    private String typeCode;

    private String typeName;

    private Long valueId;

    private String valueName;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;
 }