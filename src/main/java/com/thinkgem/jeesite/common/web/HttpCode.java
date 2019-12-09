package com.thinkgem.jeesite.common.web;

import java.util.HashMap;
import java.util.Map;

/**
 * @author yangqh
 * @date 2019/12/9
 **/
public class HttpCode {

    private static Map<Integer, String> messageMap = new HashMap<Integer, String>();

    public static final int SC_OK = 200;

    public static final int SC_BAD_REQUEST = 400;
    public static final int SC_UNAUTHORIZED = 401;
    public static final int SC_FORBIDDEN = 403;

    public static final int SC_INTERNAL_SERVER_ERROR = 500;

    // HTTP状态码与文字说明
    static {
        HttpCode.messageMap.put(HttpCode.SC_OK, "请求成功");

        HttpCode.messageMap.put(HttpCode.SC_BAD_REQUEST, "请求错误");
        HttpCode.messageMap.put(HttpCode.SC_UNAUTHORIZED, "操作未授权");
        HttpCode.messageMap.put(HttpCode.SC_FORBIDDEN, "禁止访问");

        HttpCode.messageMap.put(HttpCode.SC_INTERNAL_SERVER_ERROR, "吖~系统出错了");

    }

    public static String get(int code) {
        return HttpCode.messageMap.get(code);
    }

}
