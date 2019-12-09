package com.thinkgem.jeesite.modules.memp.api;

import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.UserCacheDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.chanjar.weixin.common.error.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.WxMpUserService;
import me.chanjar.weixin.mp.api.impl.WxMpServiceImpl;
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

@Api(value = "WxController", tags = "wx")
@RestController
@RequestMapping(value = "/wx/")
public class WxController extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(WxController.class);

    @Resource
    private WxMpUserService wxMpUserService;
    @Resource
    private WxMpService wxMpService;

    @Value("${wx.mp.appid}")
    private String appid;
    @Value("${wx.mp.appsecret}")
    private String appsecret;

    /**
     * @author yangqh
     * @date 2019/12/9
     * @since {https://developers.weixin.qq.com/doc/offiaccount/OA_Web_Apps/Wechat_webpage_authorization.html#1}
     **/
    @ApiOperation("通过code换取网页授权access_token和openid")
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public Result<UserCacheDto> login(@RequestParam String code) {
        WxMpDefaultConfigImpl config = new WxMpDefaultConfigImpl();
        config.setAppId(appid);
        config.setSecret(appsecret);
        wxMpService.setWxMpConfigStorage(config);
        WxMpOAuth2AccessToken wxMpOAuth2AccessToken;
        try {
            wxMpOAuth2AccessToken = wxMpService.oauth2getAccessToken(code);
        } catch (WxErrorException e) {
            log.error("通过code换取网页授权access_token异常", e);
            return failServerError("登录失败");
        }
        WxMpUser wxMpUser;
        try {
            wxMpUser = wxMpUserService.userInfo(wxMpOAuth2AccessToken.getOpenId());
        } catch (WxErrorException e) {
            e.printStackTrace();
        }

        return null;
    }
}
