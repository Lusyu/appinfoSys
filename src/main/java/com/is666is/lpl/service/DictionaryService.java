package com.is666is.lpl.service;

import com.is666is.lpl.domain.Dictionary;

import java.util.List;

public interface DictionaryService {
    List<Dictionary> selectTypeName(String typeName);
}
