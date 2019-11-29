package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Version;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface VersionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Version record);

    Version selectByPrimaryKey(Long id);

    List<Version> selectAll();

    int updateByPrimaryKey(Version record);

    int deleteAppId(Long appId);

    List<Map<String,Object>> getAppInfoVersion(Long id);

    int addVersion(Version version);
    /*修改版本状态*/
    int updateVersionStatus(@Param("versionId") Long versionId, @Param("status")Long status);
}