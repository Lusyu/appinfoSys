package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.Date;
@Setter@Getter@Alias("BackendUser")
public class BackendUser {
    private Long id;

    private String userCode;

    private String userName;

    private Dictionary dictionary=new Dictionary();

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;

    private String userPassword;
}