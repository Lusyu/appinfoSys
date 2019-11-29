package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Info;
import com.is666is.lpl.page.InfoConditions;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface InfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Info record);

    Info selectByPrimaryKey(Long id);

    List<Info> selectAll();

    int updateByPrimaryKey(Info record);

    <T> List<T> selectInfo(InfoConditions<T> infoConditions);

    int updateAppInfoStatus(@Param("id") Long id, @Param("status") Long status,@Param("date") Date date);

    int updateAppInfo(Info info);

    <T> List<T> selectInfoAudit(InfoConditions<T> infoConditions);
    //修改app审核状态
    int updateAppAudit(@Param("appId") Long appId,@Param("status") Long status);
}