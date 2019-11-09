package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.Date;
@Alias("User")
@Setter
@Getter
public class User {
    private Long id;

    private String devCode;

    private String devName;

    private String devPassword;

    private String devEmail;

    private String devInfo;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;
}