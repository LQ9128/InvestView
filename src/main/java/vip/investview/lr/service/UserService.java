package vip.investview.lr.service;

import vip.investview.lr.bean.User;
import vip.investview.lr.mapper.UserMapper;
import vip.investview.lr.service.ex.PasswordNotFoundException;
import vip.investview.lr.service.ex.UserNotFoundException;
import vip.investview.lr.service.ex.UsernameAlreadyExistException;

import javax.annotation.Resource;

/**
 * 业务层 -- 实例化接口
 */

public class UserService implements IUserService {

    @Resource
    private UserMapper userMapper;

    /**
     * 业务层
     * - - 实现用户注册
     *
     * @param user
     */
    public void addUser(User user) {
        //调用持久层方法 赋予新建对象user1
        User user1 = userMapper.selectByUsername(user.getUsername());
        if (user1 == null) {
            //如果查询不到则调用持久层插入方法 创建对象
            userMapper.insertUser(user);
        } else {
            //否则抛出异常
            throw new UsernameAlreadyExistException("用户名以存在");
        }
    }

    @Override
    public boolean checkUsername(String username) {
        return userMapper.selectByUsername(username) != null;
    }

    @Override
    public boolean checkEmail(String email) {
        return userMapper.selectByEmail(email) > 0;
    }

    @Override
    public boolean checkPhone(String phone) {
        return userMapper.selectByPhone(phone) > 0;
    }

    @Override
    public User getUserById(Integer id) {
        return userMapper.selectById(id);
    }

    /**
     * 业务层
     * - -实现用户登录
     *
     * @param username
     * @param password
     * @return
     */
    public User login(String username, String password) {
        User user = userMapper.selectByUsername(username);
        if (user == null) {
            throw new UserNotFoundException("账户不存在");
        } else {
            if (user.getPassword().equals(password)) {
                return user;
            } else {
                throw new PasswordNotFoundException("密码不正确");
            }
        }
    }

    /**
     * 业务层
     * - - 实现修改用户密码
     *
     * @param id
     * @param oldPwd
     * @param newPwd
     */
    public void changePassword(Integer id, String oldPwd, String newPwd) {
        User user = userMapper.selectById(id);
        if (user != null) {
            if (user.getPassword().equals(oldPwd)) {
                User user1 = new User();
                user1.setId(id);
                user1.setPassword(newPwd);
                userMapper.updateUser(user1);
            } else {
                throw new PasswordNotFoundException("旧密码不匹配");
            }
        } else {
            throw new UserNotFoundException("用户不存在");
        }
    }

    /**
     * 业务层
     * - - 实现修改用户资料
     * @param id
     * @param username
     * @param password
     */
    public void updateUser(Integer id, String username, String password) {

    }
}
