package com.lc.dao;

import com.lc.entity.User;

import java.util.List;

public interface UserDao {

    //查询全部用户
    List<User> queryUserAll();

    //删除某一个用户
    int deleteUserById(int userId);


    /**
     * 编辑功能
     * @param userId
     * @return
     */
    //查询某一个用户
    User queryUserById(int userId);

    //更新某一个数据，jsp页面上的保存按钮
    int updateUserById(User user);

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
