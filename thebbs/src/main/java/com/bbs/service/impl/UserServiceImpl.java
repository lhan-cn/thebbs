package com.bbs.service.impl;

import com.bbs.bean.User;
import com.bbs.dao.UserDao;
import com.bbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月26日18:21:15
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    //查询用户的信息
    @Override
    public List<User> query() throws Exception {
        List<User> list = userDao.findUser();
        for (User user:list
             ) {
            System.out.println(user.toString());
        }
        return list;
    }
    //用户注册
    @Override
    public void insert(User user) throws Exception {
        userDao.insert(user);
    }
    //查询用户名是否重复
    @Override
        public Integer findUserName(User user) {
        Integer message = userDao.findUserName(user);
        return message;
    }


}
