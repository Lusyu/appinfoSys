package com.is666is.lpl.service.impl;

import com.is666is.lpl.domain.User;
import com.is666is.lpl.mapper.UserMapper;
import com.is666is.lpl.service.UserService;
import com.is666is.lpl.util.MD5Utils;
import com.is666is.lpl.util.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    @Transactional(readOnly = true)
    public void getUser(User user) {
        user.setDevPassword(MD5Utils.md5(user.getDevPassword()));
        User userTwo = userMapper.getUser(user);
        UserContext.setCurrentUser(userTwo);
        if (userTwo==null){
            throw new RuntimeException("账号或密码错误!");
        }
    }
}
