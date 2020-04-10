package com.bbs.controller;

import com.bbs.bean.User;
import com.bbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月25日14:32:44
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/user/login")
    //添加@ModelAttribute注解（实际上，可以不添加@ModelAttribute注解） ，由这个入参对象接收表单namem提交的数据与user数据对应
    public String toLogin(User user, HttpServletRequest request) throws Exception {
       /* System.out.println("----------------------------");
        System.out.println(user.getUsername());
        System.out.println(user.getUserpassword());
        System.out.println("----------------------------");*/
        //将用户名字显示到页面中去
        request.setAttribute("UserName",user.getUsername());
        request.setAttribute("UserImg","login_logo.png");
        //将数据库中用户的信息存储到list集合中
        List<User> list = userService.query();
        for (User user0:list
             ) {
            /*System.out.println("----------------------------");
            System.out.println(user0.getUsername());
            System.out.println(user0.getUserpassword());
            System.out.println("----------------------------");*/
            if(user0.getUsername().equals(user.getUsername())&&user0.getUserpassword().equals(user.getUserpassword())){
                return "index";
            }
        }
        return "404";
    }
}
