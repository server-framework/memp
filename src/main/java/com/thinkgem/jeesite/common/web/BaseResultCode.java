package com.thinkgem.jeesite.common.web;

import java.util.HashMap;
import java.util.Map;

/**
 * 返回码
 *
 * @author yangqh
 * @date 2019/12/9
 **/
public class BaseResultCode {

    public static Map<Integer, String> messageMap = new HashMap<Integer, String>();

    // 公共代码
    public static final int SUCCESS = 1000;

    // 初始化状态码与文字说明
    static {
        // 公共代码 1xxx
        messageMap.put(SUCCESS, "success");
    }

    public static String get(int code) {
        return messageMap.get(code);
    }

}
