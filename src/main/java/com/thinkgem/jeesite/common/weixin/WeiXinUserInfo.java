package com.thinkgem.jeesite.common.weixin;

import io.swagger.annotations.ApiModelProperty;
import java.util.List;

public class WeiXinUserInfo {
    @ApiModelProperty("普通用户的标识，对当前开发者帐号唯一")
    private String openId;
    @ApiModelProperty("普通用户昵称")
    private String nickname;
    @ApiModelProperty("应用id")
    private String appId;
    @ApiModelProperty("性别(0未知，1男，2女 )")
    private int sex;
    @ApiModelProperty("省")
    private String province;
    @ApiModelProperty("市")
    private String city;
    @ApiModelProperty("国家")
    private String country;
    @ApiModelProperty("图像")
    private String headimgurl;
    @ApiModelProperty("用户特权信息，json数组，如微信沃卡用户为（chinaunicom）")
    private List privilege;
    @ApiModelProperty("用户统一标识。针对一个微信开放平台帐号下的应用，同一用户的unionid是唯一的")
    private String unionId;

    public String getOpenId() {
        return this.openId;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getAppId() {
        return this.appId;
    }

    public int getSex() {
        return this.sex;
    }

    public String getProvince() {
        return this.province;
    }

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public String getHeadimgurl() {
        return this.headimgurl;
    }

    public List getPrivilege() {
        return this.privilege;
    }

    public String getUnionId() {
        return this.unionId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public void setPrivilege(List privilege) {
        this.privilege = privilege;
    }

    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    public String toString() {
        return "WeiXinUserInfo(openId=" + this.getOpenId() + ", nickname=" + this.getNickname() + ", appId=" + this.getAppId() + ", sex=" + this.getSex() + ", province=" + this.getProvince() + ", city=" + this.getCity() + ", country=" + this.getCountry() + ", headimgurl=" + this.getHeadimgurl() + ", privilege=" + this.getPrivilege() + ", unionId=" + this.getUnionId() + ")";
    }
}