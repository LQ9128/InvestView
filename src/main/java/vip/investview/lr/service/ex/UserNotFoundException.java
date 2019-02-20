package vip.investview.lr.service.ex;

/**
 * 异常类
 *  - -登录用户名不正确
 */
public class UserNotFoundException extends RuntimeException{
    private static final long serialVersionUID = 2835227891302259508L;

    public UserNotFoundException() {
    }

    public UserNotFoundException(String message) {
        super(message);
    }
}
