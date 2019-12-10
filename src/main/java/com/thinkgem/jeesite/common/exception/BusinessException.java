package com.thinkgem.jeesite.common.exception;


import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;

/**
 * @author yangqh
 * @date 2019/12/10
 **/
public class BusinessException extends RuntimeException {

    private static final long serialVersionUID = 3455708526465670030L;
    private int code;

    /**
     * Instantiates a new Business exception.
     *
     * @param msg the msg
     * @author tangxianjie
     * @date 2018 -12-21 09:59:36
     */
    public BusinessException(String msg) {
        super(msg);
    }

    public BusinessException(int code, String msg) {
        super(msg);
        this.code = code;
    }

    public BusinessException(int code) {
        super(ResultCode.get(code));
        this.code = code;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}