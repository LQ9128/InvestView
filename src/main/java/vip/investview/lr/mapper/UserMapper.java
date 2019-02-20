package vip.investview.lr.mapper;

import vip.investview.lr.bean.User;

/**
 * 持久层
 */
public interface UserMapper {
    /**
     * 插入一条用户信息
     * @param user
     */
    void insertUser(User user);

    /**
     * 根据用户名查询
     * @param username
     * @return 如果查到了 把记录封装成user 对象返回
     *         如果没有查询到返回 null
     */
    User selectByUsername(String username);

    /**
     * 根据ID 查询用户信息
     * @param id
     * @return 如果查到了 把记录封装成user 对象返回
     *        如果没有查询到返回 null
     */
    User selectById(Integer id);

    /**
     * 根据 Phone 查询
     * @param phone
     * @return 如果存在返回行数； 不存在返回0；
     */
    Integer selectByPhone(String phone);

    /**
     * 根据 Email 查询
     * @param email
     * @return 如果存在返回行数； 不存在返回0；
     */
    Integer selectByEmail(String email);

    /**
     *  修改用户信息
     * @param user
     */
    void updateUser(User user);

}
