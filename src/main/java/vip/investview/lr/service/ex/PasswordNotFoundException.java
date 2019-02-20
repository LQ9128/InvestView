package vip.investview.lr.service.ex;

/**
 * 异常类
 * --登录密码错误
 */
public class PasswordNotFoundException extends RuntimeException {
    private static final long serialVersionUID = -3720389785626661997L;

    public PasswordNotFoundException() {
    }

    public PasswordNotFoundException(String message) {
        super(message);
    }
}
