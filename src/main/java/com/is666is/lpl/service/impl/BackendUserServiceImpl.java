package com.is666is.lpl.service.impl;

import com.is666is.lpl.domain.BackendUser;
import com.is666is.lpl.mapper.BackendUserMapper;
import com.is666is.lpl.service.BackendUserService;
import com.is666is.lpl.util.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("backendUserService")
@Transactional
public class BackendUserServiceImpl implements BackendUserService {
    @Autowired
    private BackendUserMapper backendUserMapper;
    @Transactional(readOnly = true)
    public void getBackendUser(BackendUser backendUser) {
        BackendUser bakendUser = backendUserMapper.getBakendUser(backendUser);
        if (bakendUser==null){
            throw  new RuntimeException("账号或密码错误!");
        }else{
            UserContext.setCurrentSuperUser(bakendUser);
        }
    }
}
