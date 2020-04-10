package com.bbs.dao;

import com.bbs.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月24日08:56:24
 */
@Repository
public interface UserDao {
    //查询用户对象信息
     List<User> findUser();
    //根据id查询用户对象信息
     List<User> findId(Integer id);
    //根据姓名查询用户对象信息
     List<User> findId(String name);
    //根据用户的注册信息把参数信息存到数据库中
     void  insert( User user);
    //判断用户名是否重复
    Integer findUserName(User user);

}
