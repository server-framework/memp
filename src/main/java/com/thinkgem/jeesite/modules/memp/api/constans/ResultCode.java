package com.thinkgem.jeesite.modules.memp.api.constans;

import java.util.HashMap;
import java.util.Map;

/**
 * 业务返回码
 *
 * @author yangqh
 * @date 2019/12/9
 **/
public class ResultCode {

    public static Map<Integer, String> messageMap = new HashMap<Integer, String>();

    public static final int SUCCESS = 1000;
    public static final int NO_OPEN_ID = 1001;
    public static final int USER_NOT_EXIST = 1002;
    public static final int USER_NOT_REGIEST = 1003;
    public static final int USER_EXIST = 1004;
    public static final int OPENID_NOT_JOIN_USER = 1005;

    static {
        messageMap.put(SUCCESS, "success");
        messageMap.put(NO_OPEN_ID, "微信未授权");
        messageMap.put(USER_NOT_EXIST, "用户不存在");
        messageMap.put(USER_NOT_REGIEST, "用户未注册");
        messageMap.put(USER_EXIST, "账号已存在");
        messageMap.put(OPENID_NOT_JOIN_USER, "微信账号未关联账号");
    }

    public static String get(int code) {
        return messageMap.get(code);
    }
}
