package com.bbs.service;

import com.bbs.bean.User;

import java.util.List;

/**用户服务类
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月26日18:20:18
 */
public interface UserService {
    List<User> query()throws Exception;
    void insert(User user) throws Exception;
    Integer findUserName(User user);
}
