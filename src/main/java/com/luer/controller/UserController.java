package com.luer.controller;

import com.luer.dto.param.LoginParam;
import com.luer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute("form") LoginParam loginParam) {
        if (userService.login(loginParam)) {
            return "index";
        } else {
            return "error";
        }
    }
}
