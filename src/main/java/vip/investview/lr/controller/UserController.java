package vip.investview.lr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import vip.investview.lr.service.IUserService;

import javax.annotation.Resource;

/**
 * 控制器层
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
    @Resource
    private IUserService userService;

    @RequestMapping("/showRegister.v")
    public String showRegister() {
        return "LR_register";
    }
}
