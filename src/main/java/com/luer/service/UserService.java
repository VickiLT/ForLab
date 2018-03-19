package com.luer.service;

import com.luer.dto.param.LoginParam;
import com.luer.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public boolean login(LoginParam loginParam) {

        // 检查参数
        checkLoginParam(loginParam);

        return userMapper.login(loginParam);
    }

    private void checkLoginParam(LoginParam loginParam) {
        if (loginParam == null || StringUtils.isEmpty(loginParam.getName()) || StringUtils.isEmpty(loginParam.getPassword())) {
            throw new IllegalArgumentException("所传参数有误!");
        }
    }
}
