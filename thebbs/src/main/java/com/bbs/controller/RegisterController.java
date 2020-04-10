package com.bbs.controller;

import com.bbs.bean.User;
import com.bbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**用户注册控制器
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月25日13:55:53
 */

@Controller
public class RegisterController {
    @Autowired
    private UserService userService;
    @RequestMapping("/user/insert")
    public String insertAccount(User user) throws Exception {
        System.out.println("---------------------");
        System.out.println(user.toString());
        System.out.println("---------------------");
        user.setUserimg("static/img/login_logo.png");
        /*Integer count = userService.findUserName(user);
        System.out.println(count);
        if(count>0){
            request.setAttribute("username_error","用户名已存在！");
            return "register";
        }else {
            request.setAttribute("username_error","");
            userService.insert(user);
            return "registersuccess";
        }*/
        userService.insert(user);
        return "registersuccess";

        }

    //注册成功后返回登陆界面
    @RequestMapping("/registersuccess/run")
    public String Returnsuccess(){
        return "login";
    }

}
