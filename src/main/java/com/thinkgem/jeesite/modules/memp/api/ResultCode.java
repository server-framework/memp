package com.thinkgem.jeesite.modules.memp.api;

import com.thinkgem.jeesite.common.web.BaseResultCode;

/**
 * 业务返回码
 *
 * @author yangqh
 * @date 2019/12/9
 **/
public class ResultCode extends BaseResultCode {

    public static final int NO_OPEN_ID = 1001;

    static {

        messageMap.put(NO_OPEN_ID, "微信未授权");
    }
}
