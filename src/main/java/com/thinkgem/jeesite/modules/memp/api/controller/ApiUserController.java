package com.thinkgem.jeesite.modules.memp.api.controller;

import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.TokenDTO;
import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;
import com.thinkgem.jeesite.modules.memp.api.dto.LoginDTO;
import com.thinkgem.jeesite.modules.memp.api.interceptor.Authorization;
import com.thinkgem.jeesite.modules.memp.entity.MempUser;
import com.thinkgem.jeesite.modules.memp.service.MempUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Api(value = "ApiUserController", tags = "用户")
@RestController
@RequestMapping(value = "${apiPath}/user/")
public class ApiUserController extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(ApiUserController.class);

    @Resource
    private MempUserService mempUserService;

    /**
     * @author yangqh
     * @date 2019/12/10
     **/
    @ApiOperation(value = "绑定手机号码", notes = "1000-成功|1002-用户不存在")
    @Authorization
    @RequestMapping(value = "bandingMobile", method = RequestMethod.PUT)
    public Result bandingMobile(@RequestParam String mobile) {
        MempUser mempUser = getCurrentUser(mempUserService);
        mempUser.setMobile(mobile);
        mempUserService.save(mempUser);
        return ok();
    }

    @ApiOperation(value = "密码登录", notes = "")
    @RequestMapping(value = "pwdLogin", method = RequestMethod.POST)
    public Result<TokenDTO> pwdLogin(@RequestBody @Validated LoginDTO loginDTO) {
        MempUser mempUser = new MempUser();

        mempUserService.save(mempUser);
        return ok();
    }
}
