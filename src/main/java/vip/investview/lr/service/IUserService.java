package vip.investview.lr.service;

import vip.investview.lr.bean.User;

/**
 * 业务层--接口
 */

public interface IUserService {
    /**
     * 添加用户信息
     * @param user
     */
    void addUser(User user);

    /**
     * 验证用户名是否存在
     * @param username
     * @return
     */
    boolean checkUsername(String username);

    /**
     * 验证邮箱是否存在
     * @param email
     * @return
     */
    boolean checkEmail(String email);

    /**
     * 验证电话是否存在
     * @param phone
     * @return
     */
    boolean checkPhone(String phone);

    /**
     * 通过ID 查询用户的信息
     * @param id
     * @return
     */
    User getUserById(Integer id);

    /**
     *  实现用户登录
     * @param username
     * @param password
     * @return  成功返回user 对象 ；失败则抛出异常，用户不存在 && 密码不正确
     */
    User login(String username,String password);

    /**
     * 用户密码修改
     * @param id
     * @param oldPwd
     * @param newPwd
     */
    void changePassword(Integer id,String oldPwd,String newPwd);

    //修改用户信息
    void updateUser(Integer id,String username,String password);
}
