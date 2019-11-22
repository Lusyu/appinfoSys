package com.is666is.lpl.service;

import com.is666is.lpl.domain.Version;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface VersionService {
    List<Map<String,Object>> getAppInfoVersion(Long id);
    void addVersion(Version version, MultipartFile apk);
}
