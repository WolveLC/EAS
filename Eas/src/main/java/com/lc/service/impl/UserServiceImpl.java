package com.lc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lc.dao.UserDao;
import com.lc.entity.User;
import com.lc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
     /**
     * 查询全部用户
     * @return
     */
    @Override
    public List<User> queryUserAll() {
        return userDao.queryUserAll();
    }

    /**
     * 分页
     */
    @Override
    public PageInfo<User> queryUserByPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> users =userDao.queryUserAll();
        PageInfo pageInfo = new PageInfo(users);
        return pageInfo;
    }


    /**
     * 删除
     * @param userId
     * @return
     */
    @Override
    public int deleteUserById(int userId) {
        return userDao.deleteUserById(userId);
    }


    /**
     * 编辑功能
     * 查询某一个用户
     * @param userId
     * @return
     */
    @Override
    public User queryUserById(int userId) {
        return userDao.queryUserById(userId);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUserById(user);
    }


    /**
     * 添加
     * @param user
     * @return
     */
    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    /**
     * 模糊查询
     * @param userNum
     * @return
     */
    @Override
    public User selectUserByNumber(String userNum) {
        return userDao.selectUserByNumber(userNum);
    }
}
