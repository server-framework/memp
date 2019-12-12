package com.thinkgem.jeesite.common.weixin;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;
import java.io.Serializable;

public class WeXinUserRegisterDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "手机号",example = "18876788787")
    @NotEmpty(message = "手机号不能为空！")
    @Size(min = 11,max = 11,message = "手机号格式错误！")
    private String phone;

    @ApiModelProperty(value = "openId",example = "12xssadsads122132")
    @NotEmpty(message = "openId不能为空！")
    @Size(min = 1,max = 512,message = "用户标识长度超出范围！")
    private String openId;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }
}