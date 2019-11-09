package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.math.BigDecimal;
import java.util.Date;
@Setter
@Getter
@Alias("Version")
public class Version {
    private Long id;

    private Long appId;

    private String versionNo;

    private String versionInfo;

    private Long publishStatus;

    private String downloadLink;

    private BigDecimal versionSize;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;

    private String apkLocPath;

    private String apkFileName;
}