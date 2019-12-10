package com.thinkgem.jeesite.modules.memp.api.dto;

import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Size;
import java.io.Serializable;

public class RegisterDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "账号", example = "18876788787")
    @NotBlank(message = "账号不能为空！")
    @Size(min = 8, max = 32, message = "账号长度需在8位至32位！")
    private String account;

    @ApiModelProperty(value = "密码", example = "12345678")
    @NotBlank(message = "密码不能为空！")
    @Size(min = 6, max = 16, message = "密码长度不符！")
    private String password;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}