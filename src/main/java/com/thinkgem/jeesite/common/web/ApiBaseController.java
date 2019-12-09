package com.thinkgem.jeesite.common.web;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author yangqh
 * @date 2019/12/9
 **/
public abstract class ApiBaseController {

    public HttpServletRequest getRequest() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return request;
    }

    public HttpServletResponse getResponse() {
        HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
        return response;
    }

    public <T> Result<T> response(int httpCode, int retCode, String message, T model) {
        getResponse().setStatus(httpCode);
        Result<T> result = new Result();
        result.setRet(retCode);
        result.setMsg(message);
        result.setModel(model);
        return result;
    }

    public <T> Result<T> ok() {
        return response(HttpCode.SC_OK, BaseResultCode.SUCCESS, BaseResultCode.get(BaseResultCode.SUCCESS), null);
    }

    public <T> Result<T> ok(int retCode) {
        return response(HttpCode.SC_OK, retCode, BaseResultCode.get(retCode), null);
    }

    public <T> Result<T> ok(T model) {
        return response(HttpCode.SC_OK, BaseResultCode.SUCCESS, BaseResultCode.get(BaseResultCode.SUCCESS), model);
    }

    public <T> Result<T> failBusinessError(int retCode) {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, retCode, BaseResultCode.get(retCode), null);
    }

    public <T> Result<T> failServerError() {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.get(HttpCode.SC_INTERNAL_SERVER_ERROR), null);
    }

    public <T> Result<T> failServerError(String message) {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.SC_INTERNAL_SERVER_ERROR, message, null);
    }

    public String getCurrentUserId() {
        return JwtUtils.getCurrentUserId(getRequest());
    }
}
