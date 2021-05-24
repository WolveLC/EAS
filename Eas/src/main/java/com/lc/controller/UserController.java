package com.lc.controller;

import com.github.pagehelper.PageInfo;
import com.lc.entity.User;
import com.lc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api")
public class UserController {
    @Autowired
    private UserService userService;
    /**
     * 查询全部用户
     * @return
     */
    @PostMapping("/userAll")
    @ResponseBody
    public List<User> queryUserAll() {
        return userService.queryUserAll();
    }

    /**
     * 分页
     * @param pageSize
     * @param pageNum
     * @return
     */
    @GetMapping("/queryUser")
    @ResponseBody
    public PageInfo<User> queryPersonByPage(int pageSize, int pageNum) {
        if (pageNum == -1) {
            pageNum = 1;
        }
        return userService.queryUserByPage(pageNum,pageSize);
    }

    /**
     * 删除
     * @param userId
     * @return
     */
    @DeleteMapping("/deleteUser/{userId}")
    @ResponseBody
    public String  deleteUserById(@PathVariable("userId") int userId){
        userService.deleteUserById(userId);
        return "success";
    }



    /**
     * 通过用户id来查询用户信息
     * @param userId
     * @return
     */
   @GetMapping("/userOne/{userId}")
   @ResponseBody
    public User queryUserOne(@PathVariable("userId") int userId){
       System.out.println(userId);
       return userService.queryUserById(userId);
    }
    /**
     * 更新信息
     * @param
     * @return
     */
    @PutMapping("/update")
    @ResponseBody
    public int updateOne(@RequestBody User user){
        System.out.println(user);
        return userService.updateUser(user);
    }


    /**
     * 添加功能
     * @param user
     * @return
     */
    @PostMapping("/addUser")
    @ResponseBody
    public int addUserOne(@RequestBody User user){
        System.out.println(user);
        return userService.addUser(user);
    }


    /**
     * 查询
     * @param userNum
     * @return
     */
    @GetMapping("/selectOne/{userNum}")
    @ResponseBody
    public User selectOne(@PathVariable("userNum") String userNum){
        return userService.selectUserByNumber(userNum);
    }

}
