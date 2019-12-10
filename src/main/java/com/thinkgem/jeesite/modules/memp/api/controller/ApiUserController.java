package com.thinkgem.jeesite.modules.memp.api.controller;

import cn.hutool.crypto.digest.BCrypt;
import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.JwtUtils;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.TokenDTO;
import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;
import com.thinkgem.jeesite.modules.memp.api.dto.LoginDTO;
import com.thinkgem.jeesite.modules.memp.api.dto.RegisterDTO;
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
import java.util.List;

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
    @ApiOperation(value = "绑定手机号码", notes = "1000成功|1002")
    @Authorization
    @RequestMapping(value = "bandingMobile", method = RequestMethod.PUT)
    public Result bandingMobile(@RequestParam String mobile) {
        MempUser mempUser = getCurrentUser(mempUserService);
        mempUser.setMobile(mobile);
        mempUserService.save(mempUser);
        return success();
    }

    /**
     * @author yangqh
     * @date 2019/12/10
     **/
    @ApiOperation(value = "账号密码登录", notes = "返回码：1000成功|1003|500")
    @RequestMapping(value = "pwdLogin", method = RequestMethod.POST)
    public Result<TokenDTO> pwdLogin(@RequestBody @Validated LoginDTO loginDTO) {
        MempUser mempUser = new MempUser();
        mempUser.setAccount(loginDTO.getAccount());
        mempUser.setDelFlag("0");
        List<MempUser> mempUserList = mempUserService.findList(mempUser);
        if (mempUserList == null || mempUserList.isEmpty()) {
            return success(ResultCode.USER_NOT_REGIEST);
        }
        if (!BCrypt.checkpw(loginDTO.getPassword(), mempUserList.get(0).getPassword())) {
            return failServerError("密码错误");
        }
        String token = JwtUtils.createToken(mempUserList.get(0).getId(), tokenExpire);
        TokenDTO tokenDTO = new TokenDTO();
        tokenDTO.setToken(token);
        return success(tokenDTO);
    }

    /**
     * @author yangqh
     * @date 2019/12/10
     **/
    @ApiOperation(value = "注册", notes = "返回码：1000成功|1004|500")
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public Result register(@RequestBody @Validated RegisterDTO registerDTO) {
        MempUser mempUser = new MempUser();
        mempUser.setAccount(registerDTO.getAccount());
        mempUser.setDelFlag("0");
        List<MempUser> mempUserList = mempUserService.findList(mempUser);
        if (mempUserList != null && !mempUserList.isEmpty()) {
            return success(ResultCode.USER_EXIST);
        }
        String salt = BCrypt.gensalt();//盐
        mempUser.setSalt(salt);
        mempUser.setPassword(BCrypt.hashpw(registerDTO.getPassword(), salt));
        mempUser.setMobile(registerDTO.getAccount());
        mempUserService.save(mempUser);
        return success();
    }
}
