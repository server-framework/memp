package com.thinkgem.jeesite.modules.memp.api;

import com.thinkgem.jeesite.common.web.BaseResultCode;

/**
 * 业务返回码
 *
 * @author yangqh
 * @date 2019/12/9
 **/
public class ResultCode extends BaseResultCode {

    // 公共代码
    public static final int NOT_FOUND_DATA = 1101;
    public static final int RESOURCE_NOT_FOUND = 1102;
    public static final int ID_EMPTY = 1103;
    public static final int REQUIRED_PARM_EMPTY = 1104;
    public static final int SAVE_FAIL = 1105;
    public static final int UPDATE_FAIL = 1106;

    static {

        // 公共代码 1xxx
        messageMap.put(NOT_FOUND_DATA, "数据不存在");
        messageMap.put(RESOURCE_NOT_FOUND, "ID对应数据不存在");
        messageMap.put(ID_EMPTY, "ID不能为空");
        messageMap.put(REQUIRED_PARM_EMPTY, "非法参数");
        messageMap.put(SAVE_FAIL, "保存失败");
        messageMap.put(UPDATE_FAIL, "更新失败");
    }
}
