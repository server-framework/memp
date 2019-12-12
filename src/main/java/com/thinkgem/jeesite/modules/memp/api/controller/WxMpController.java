package com.thinkgem.jeesite.modules.memp.api.controller;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.JwtUtils;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.TokenDTO;
import com.thinkgem.jeesite.modules.memp.api.constans.ResultCode;
import com.thinkgem.jeesite.modules.memp.entity.MempUserWeixinInfo;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@Api(value = "WxMpController", tags = "微信公众号")
@RestController
@RequestMapping(value = "${apiPath}/wxmp/")
public class WxMpController extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(WxMpController.class);

    @Value("${wx.mp.appid}")
    private String appid;
    @Value("${wx.mp.appsecret}")
    private String appsecret;

    @Resource
    private MempUserWeixinInfoService weixinInfoService;

    /**
     * @author yangqh
     * @date 2019/12/9
     * @since {https://developers.weixin.qq.com/doc/offiaccount/OA_Web_Apps/Wechat_webpage_authorization.html#1}
     **/
    @ApiOperation(value = "微信授权登录", notes = "第一次调用微信静默授权换取code进行登录，成功直接返回token，未授权提示1001并引导用户进行微信授权操作再次换取code，进行登录。（1000成功|500服务器错误|1001微信未授权）")
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public Result<TokenDTO> login(@RequestParam String code) {
        WxMpDefaultConfigImpl config = new WxMpDefaultConfigImpl();
        config.setAppId(appid);
        config.setSecret(appsecret);
        WxMpService wxMpService = new WxMpServiceImpl();
        wxMpService.setWxMpConfigStorage(config);
        WxMpOAuth2AccessToken wxMpOAuth2AccessToken;
        try {
            wxMpOAuth2AccessToken = wxMpService.oauth2getAccessToken(code);
        } catch (Exception e) {
            log.error("通过code换取网页授权access_token和openid异常", e);
            return failServerError("授权失败，请重新尝试！");
        }
        MempUserWeixinInfo weixinInfo = new MempUserWeixinInfo();
        weixinInfo.setDelFlag("0");
        weixinInfo.setOpenId(wxMpOAuth2AccessToken.getOpenId());
        List<MempUserWeixinInfo> weixinInfoList = weixinInfoService.findList(weixinInfo);
        if (weixinInfoList == null || weixinInfoList.isEmpty()) {
            weixinInfo.setAppId(appid);
            weixinInfoService.initWeixinInfo(weixinInfo, true);
            return success(ResultCode.NO_OPEN_ID);
        }
        if (StrUtil.isBlank(weixinInfoList.get(0).getUserInfo())) {
            //获取微信用户信息
            WxMpUserService wxMpUserService = new WxMpUserServiceImpl(wxMpService);
            WxMpUser wxMpUser;
            try {
                wxMpUser = wxMpUserService.userInfo(wxMpOAuth2AccessToken.getOpenId());
            } catch (Exception e) {
                log.error("获取微信用户信息异常", e);
                return failServerError("获取微信用户信息失败");
            }
            weixinInfoService.updateWeixinInfo(wxMpUser, weixinInfoList.get(0));
        }

        String token = JwtUtils.createToken(weixinInfoList.get(0).getUserId(), tokenExpire);
        TokenDTO tokenDTO = new TokenDTO();
        tokenDTO.setToken(token);
        return success(tokenDTO);
    }

    @ApiOperation(value = "测试获取token")
    @RequestMapping(value = "testGetToken", method = RequestMethod.GET)
    public Result<TokenDTO> testGetToken(@RequestParam String userId) {
        String token = JwtUtils.createToken(userId, tokenExpire);
        TokenDTO tokenDTO = new TokenDTO();
        tokenDTO.setToken(token);
        return success(tokenDTO);
    }
}
