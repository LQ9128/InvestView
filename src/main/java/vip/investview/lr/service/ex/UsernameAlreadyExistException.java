package vip.investview.lr.service.ex;

/**
 * 异常类
 *      - - 用户名以存在
 */
public class UsernameAlreadyExistException extends RuntimeException{

    private static final long serialVersionUID = 6685315100607154455L;

    public UsernameAlreadyExistException() {
    }

    public UsernameAlreadyExistException(String message) {
        super(message);
    }
}
