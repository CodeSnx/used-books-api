package com.soft1851.used.books.api.exception;


import com.soft1851.used.books.api.common.ResultCode;

/**
 * @ClassName CustomException
 * @Description 用户自定义异常
 * @Author mq_xu
 * @Date 2020/4/21
 * @Version 1.0
 */
public class CustomException extends RuntimeException {
    protected ResultCode resultCode;

    public CustomException(String msg, ResultCode resultCode) {
        super(msg);
        this.resultCode = resultCode;
    }

    public ResultCode getResultCode() {
        return resultCode;
    }
}
