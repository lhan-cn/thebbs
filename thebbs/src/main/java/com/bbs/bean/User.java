package com.bbs.bean;

import java.io.Serializable;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年03月24日08:53:19
 */

public class User implements Serializable{
    private String username;
    private String userpassword;
    private String useremail;
    private String phone;
    private Integer age;
    private String usergender;
    private String userimg;

    public User() {

    }

    public User(String username, String userpassword, String useremail, String phone, Integer age, String usergender, String userimg) {
        this.username = username;
        this.userpassword = userpassword;
        this.useremail = useremail;
        this.phone = phone;
        this.age = age;
        this.usergender = usergender;
        this.userimg = userimg;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getUsergender() {
        return usergender;
    }

    public void setUsergender(String usergender) {
        this.usergender = usergender;
    }

    public String getUserimg() {
        return userimg;
    }

    public void setUserimg(String userimg) {
        this.userimg = userimg;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", useremail='" + useremail + '\'' +
                ", phone=" + phone +
                ", age=" + age +
                ", usergender='" + usergender + '\'' +
                ", userimg='" + userimg + '\'' +
                '}';
    }
}
