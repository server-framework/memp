package com.thinkgem.jeesite.modules.memp.api.controller;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONObject;
import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.JwtUtils;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.TokenDTO;
import com.thinkgem.jeesite.common.weixin.WeXinUserRegisterDTO;
import com.thinkgem.jeesite.common.weixin.WeiXinUserInfo;
import com.thinkgem.jeesite.common.weixin.WeiXinUtil;
import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;
import com.thinkgem.jeesite.modules.memp.entity.MempUserWeixinInfo;
import com.thinkgem.jeesite.modules.memp.service.MempUserService;
import com.thinkgem.jeesite.modules.memp.service.MempUserWeixinInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.WxMpUserService;
import me.chanjar.weixin.mp.api.impl.WxMpServiceImpl;
import me.chanjar.weixin.mp.api.impl.WxMpUserServiceImpl;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import me.chanjar.weixin.mp.config.impl.WxMpDefaultConfigImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Api(value = "WxMpController", tags = "微信开放平台")
@RestController
@RequestMapping(value = "${apiPath}/wxopen/")
public class WxOpenController extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(WxOpenController.class);

    @Value("${wx.mp.appid}")
    private String appid;
    @Value("${wx.mp.appsecret}")
    private String appsecret;

    @Resource
    private MempUserService mempUserService;
    @Resource
    private MempUserWeixinInfoService weixinInfoService;

    /**
     * @author yangqh
     * @date 2019/12/12
     * @since {https://developers.weixin.qq.com/doc/oplatform/Mobile_App/WeChat_Login/Development_Guide.html}
     **/
    @ApiOperation(value = "微信登录", notes = "正常登录返回token，如果第一次需要关联账号返回1005（1000成功|500服务器错误|1005微信账号未关联账号）")
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public Result<TokenDTO> login(@RequestParam String code) {
        WeiXinUserInfo weiXinUserInfo = WeiXinUtil.getWeiXinUserInfo(code, appid, appsecret);
        if (weiXinUserInfo == null) {
            return failServerError("授权失败，请重新尝试！");
        }
        MempUserWeixinInfo weixinInfo = new MempUserWeixinInfo();
        weixinInfo.setDelFlag("0");
        weixinInfo.setOpenId(weiXinUserInfo.getOpenId());
        List<MempUserWeixinInfo> weixinInfoList = weixinInfoService.findList(weixinInfo);
        if (weixinInfoList == null || weixinInfoList.isEmpty()) {
            weixinInfo.setAppId(appid);
            weixinInfo.setUnionId(weiXinUserInfo.getUnionId());
            weixinInfo.setUserInfo(JSONObject.toJSONString(weiXinUserInfo));
            weixinInfoService.initWeixinInfo(weixinInfo, false);
        } else {
            weixinInfo = weixinInfoList.get(0);
            weixinInfo.setUnionId(weiXinUserInfo.getUnionId());
            weixinInfo.setUserInfo(JSONObject.toJSONString(weiXinUserInfo));
            weixinInfo.setAppId(appid);
            weixinInfoService.save(weixinInfo);
        }

        TokenDTO tokenDTO = new TokenDTO();
        if (StrUtil.isBlank(weixinInfo.getUserId())) {
            String token = JwtUtils.createToken(weixinInfo.getUserId(), tokenExpire);
            tokenDTO.setToken(token);
            return success(tokenDTO);
        } else {
            tokenDTO.setOpenid(weiXinUserInfo.getOpenId());
            return success(ResultCode.OPENID_NOT_JOIN_USER, tokenDTO);
        }
    }

    /**
     * @author yangqh
     * @date 2019/12/12
     **/
    @ApiOperation(value = "微信用户绑定用户", notes = "（1000成功|500服务器错误）")
    @RequestMapping(value = "boundWeiXinUser", method = RequestMethod.POST)
    public Result<TokenDTO> boundWeiXinUser(@RequestBody @Validated WeXinUserRegisterDTO weXinUserRegisterDTO) {
        MempUserWeixinInfo weixinInfo = new MempUserWeixinInfo();
        weixinInfo.setDelFlag("0");
        weixinInfo.setOpenId(weXinUserRegisterDTO.getOpenId());
        List<MempUserWeixinInfo> weixinInfoList = weixinInfoService.findList(weixinInfo);
        if (weixinInfoList == null || weixinInfoList.isEmpty()) {
            return failServerError("无法获取当前用户的微信信息！");
        }
        if (StrUtil.isNotBlank(weixinInfoList.get(0).getUserId())) {
            return failServerError("当前微信账号已与其他用户绑定！");
        }
        String userId = weixinInfoService.boundWeiXinUser(weixinInfoList.get(0), weXinUserRegisterDTO);

        TokenDTO tokenDTO = new TokenDTO();
        String token = JwtUtils.createToken(userId, tokenExpire);
        tokenDTO.setToken(token);
        return success(tokenDTO);
    }
}
