package com.thinkgem.jeesite.common.web;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.common.exception.BusinessException;
import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;
import com.thinkgem.jeesite.modules.memp.entity.MempUser;
import com.thinkgem.jeesite.modules.memp.service.MempUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author yangqh
 * @date 2019/12/9
 **/
public abstract class ApiBaseController {


    Logger log = LoggerFactory.getLogger(ApiBaseController.class);

    @Value("${apiPath}")
    protected String apiPath;

    //    @Value("${token.expire.seconds}")
    // token缓存30天
    protected int tokenExpire = 2592000;

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

    public <T> Result<T> success() {
        return response(HttpCode.SC_OK, ResultCode.SUCCESS, ResultCode.get(ResultCode.SUCCESS), null);
    }

    public <T> Result<T> success(int retCode) {
        return response(HttpCode.SC_OK, retCode, ResultCode.get(retCode), null);
    }

    public <T> Result<T> success(T model) {
        return response(HttpCode.SC_OK, ResultCode.SUCCESS, ResultCode.get(ResultCode.SUCCESS), model);
    }

    public <T> Result<T> success(int retCode, T model) {
        return response(HttpCode.SC_OK, retCode, ResultCode.get(retCode), model);
    }

    public <T> Result<T> failBusinessError(int retCode) {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, retCode, ResultCode.get(retCode), null);
    }

    public <T> Result<T> failServerError() {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.get(HttpCode.SC_INTERNAL_SERVER_ERROR), null);
    }

    public <T> Result<T> failServerError(String message) {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, HttpCode.SC_INTERNAL_SERVER_ERROR, message, null);
    }

    public <T> Result<T> failServerError(int retCode) {
        return response(HttpCode.SC_INTERNAL_SERVER_ERROR, retCode, ResultCode.get(retCode), null);
    }

    public <T> Result<T> failBadReq(String message) {
        return response(HttpCode.SC_BAD_REQUEST, HttpCode.SC_BAD_REQUEST, message, null);
    }

    public MempUser getCurrentUser(MempUserService mempUserService) {
        String userId = JwtUtils.getCurrentUserId(getRequest());
        if (StrUtil.isBlank(userId)) {
            log.error("request_current_user_id为空");
            throw new BusinessException(ResultCode.USER_NOT_EXIST);
        }
        MempUser mempUser;
        if (mempUserService != null) {
            mempUser = mempUserService.get(userId);
            if (mempUser == null) {
                log.error("无此用户,user_id={}", userId);
                new BusinessException(ResultCode.USER_NOT_EXIST);
            }
        } else {
            mempUser = new MempUser();
            mempUser.setId(userId);
        }
        return mempUser;
    }

    public String getCurrentUserId(MempUserService mempUserService) {
        MempUser mempUser = getCurrentUser(mempUserService);
        return mempUser.getId();
    }
}
