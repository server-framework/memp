package com.thinkgem.jeesite.modules.memp.api.constans;

import cn.hutool.core.util.StrUtil;

/**
 * @author yangqh
 * @date 2019/12/10
 **/
public enum TokenClearType {
    LOGOUT_PASSIVE("1", "已在其他设备登录"), // 被动退出，即在其他设备登录
    MANUAL_FREEZE("2", "该账户已被冻结"), // 人为冻结（管理员冻结）
    FREQUENT_OPT("3", "该账户操作频繁，已被冻结"); // 操作频繁，冻结

    private String val;
    private String message;

    TokenClearType(String val, String message) {
        this.val = val;
        this.message = message;
    }

    public String getVal() {
        return val;
    }

    public String getMessage() {
        return message;
    }

    public static TokenClearType getEnum(String val) {
        TokenClearType[] values = TokenClearType.values();
        for (TokenClearType tokenClearType : values) {
            if (StrUtil.equals(tokenClearType.val, val)) {
                return tokenClearType;
            }
        }
        return null;
    }
}