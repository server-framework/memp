package com.thinkgem.jeesite.common.weixin;

import io.swagger.annotations.ApiModelProperty;

public class WeiXinAccessToken {
    @ApiModelProperty("接口调用凭证")
    private String accessToken;
    @ApiModelProperty("access_token接口调用凭证超时时间，单位（秒）")
    private String expiresIn;
    @ApiModelProperty("用户刷新access_token")
    private String refreshToken;
    @ApiModelProperty("授权用户唯一标识")
    private String openId;
    @ApiModelProperty("用户授权的作用域，使用逗号（,）分隔")
    private String scope;
    @ApiModelProperty("同一开放平台下用户唯一标识")
    private String unionId;
    @ApiModelProperty("应用id")
    private String appId;

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getExpiresIn() {
        return this.expiresIn;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public String getOpenId() {
        return this.openId;
    }

    public String getScope() {
        return this.scope;
    }

    public String getUnionId() {
        return this.unionId;
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public void setExpiresIn(String expiresIn) {
        this.expiresIn = expiresIn;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String toString() {
        return "WeiXinAccessToken(accessToken=" + this.getAccessToken() + ", expiresIn=" + this.getExpiresIn() + ", refreshToken=" + this.getRefreshToken() + ", openId=" + this.getOpenId() + ", scope=" + this.getScope() + ", unionId=" + this.getUnionId() + ", appId=" + this.getAppId() + ")";
    }

    public WeiXinAccessToken(String accessToken, String expiresIn, String refreshToken, String openId, String scope, String unionId, String appId) {
        this.accessToken = accessToken;
        this.expiresIn = expiresIn;
        this.refreshToken = refreshToken;
        this.openId = openId;
        this.scope = scope;
        this.unionId = unionId;
        this.appId = appId;
    }

    public WeiXinAccessToken() {
    }
}