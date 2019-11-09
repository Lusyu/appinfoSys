package com.is666is.lpl.domain;

import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

import java.util.Date;
@Setter
@Getter
@Alias("Promotion")
public class Promotion {
    private Long id;

    private Long appId;

    private String adPicPath;

    private Long adPV;

    private Integer carouselPosition;

    private Date startTime;

    private Date endTime;

    private Long createdBy;

    private Date creationDate;

    private Long modifyBy;

    private Date modifyDate;
}