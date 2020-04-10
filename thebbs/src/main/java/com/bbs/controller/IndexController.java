package com.bbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月24日08:34:26
 */
@Controller
public class IndexController {
    @RequestMapping("/login")
    public String Login(){
        System.out.println("访问登陆页面");

        return "login";
    }
    @RequestMapping("/register")
    public String Register(){
        return "register";
    }


    @RequestMapping("/writing")
    public String Writing() {
        return "writing";
    }
}
