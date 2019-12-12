package com.thinkgem.jeesite.modules.memp.api.dto;

import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;
import java.io.Serializable;

public class ModifyPwdDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "短信验证码", example = "123456")
    @NotBlank(message = "短信验证码不能为空！")
    @Size(min = 6, max = 6, message = "短信验证码长度需在8位至32位！")
    private String msgCode;

    @ApiModelProperty(value = "密码", example = "12345678")
    @NotBlank(message = "密码不能为空！")
    @Size(min = 6, max = 16, message = "密码长度不符！")
    private String password;

    public String getMsgCode() {
        return msgCode;
    }

    public void setMsgCode(String msgCode) {
        this.msgCode = msgCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}