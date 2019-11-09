package com.is666is.lpl.mapper;

import com.is666is.lpl.domain.Promotion;
import java.util.List;

public interface PromotionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Promotion record);

    Promotion selectByPrimaryKey(Long id);

    List<Promotion> selectAll();

    int updateByPrimaryKey(Promotion record);
}