package com.lc.entity;

public class User {
   private int userId;
   private String userNum;
   private String userName;
   private String userPwd;
   private int roleId;
   private String userSex;

    public User() {
    }

    public User(int userId, String userNum, String userName, String userPwd, int roleId, String userSex) {
        this.userId = userId;
        this.userNum = userNum;
        this.userName = userName;
        this.userPwd = userPwd;
        this.roleId = roleId;
        this.userSex = userSex;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userNum='" + userNum + '\'' +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", roleId=" + roleId +
                ", userSex='" + userSex + '\'' +
                '}';
    }
}
