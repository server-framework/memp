package com.thinkgem.jeesite.common.web;

import com.fasterxml.jackson.annotation.JsonInclude;

import io.swagger.annotations.ApiModelProperty;

/**
 * @author yangqh
 * @date 2019/12/9
 **/
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Result<T> {

    @ApiModelProperty(value = "返回码(成功-1000|失败-1001|...)", required = true)
    private int ret;

    @ApiModelProperty(value = "返回信息", required = true)
    private String msg;

    @ApiModelProperty(value = "返回的数据")
    private T model;

    public int getRet() {
        return ret;
    }

    public void setRet(int ret) {
        this.ret = ret;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getModel() {
        return model;
    }

    public void setModel(T model) {
        this.model = model;
    }
}