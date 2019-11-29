package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.BackendUser;
import java.util.List;

public interface BackendUserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BackendUser record);

    BackendUser selectByPrimaryKey(Long id);

    List<BackendUser> selectAll();

    int updateByPrimaryKey(BackendUser record);

    BackendUser getBakendUser(BackendUser backendUser);
}