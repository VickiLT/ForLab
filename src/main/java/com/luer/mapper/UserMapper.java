package com.luer.mapper;

import com.luer.dto.param.LoginParam;


public interface UserMapper {

    boolean login(LoginParam loginParam);
}
