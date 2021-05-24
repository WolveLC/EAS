package com.lc.service;

import com.github.pagehelper.PageInfo;
import com.lc.entity.Teacher;
import com.lc.entity.User;

import java.util.List;

public interface UserService {

    /**
     * 查询全部用户信息
     * @return
     */
    //查询全部User信息
    List<User> queryUserAll();


    /**
     * 分页功能
     * @param pageNum
     * @param pageSize
     * @return
     */
    //分页
    PageInfo<User> queryUserByPage(int pageNum, int pageSize);


    /**
     * 删除功能
     * @param userId
     * @return
     */
    //根据用户Id删除用户
    int deleteUserById(int userId);



    /**
     * 编辑功能
     * @param userId
     * @return
     */
    //查询某一个用户
    User queryUserById(int userId);

    //更新用户信息
    int updateUser(User user);

    /**
     * 添加
     * @param user
     * @return
     */
    int addUser(User user);


    /**
     * 模糊查询
     * @param userNum
     * @return
     */
    User selectUserByNumber(String userNum);


}
