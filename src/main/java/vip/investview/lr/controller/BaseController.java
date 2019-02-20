package vip.investview.lr.controller;

import vip.investview.lr.bean.User;

import javax.servlet.http.HttpSession;

/**
 * 控制器层
 * - -？
 */
public class BaseController {
    //获取用户id值
    public Integer getId(HttpSession session){
        //id？ 从session中获取user对象 再从user对象中获取id
     Integer id=null;
     User user =(User)session.getAttribute("user");
     if (user!=null){
         id=user.getId();
     }
     return id;
    }
}
