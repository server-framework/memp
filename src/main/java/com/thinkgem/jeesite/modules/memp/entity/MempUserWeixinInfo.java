/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import com.thinkgem.jeesite.modules.sys.entity.User;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 微信用户Entity
 * @author yangqh
 * @version 2019-12-12
 */
public class MempUserWeixinInfo extends DataEntity<MempUserWeixinInfo> {
	
	private static final long serialVersionUID = 1L;
	private String userId;		// 用户id
	private String appId;		// 应用id
	private String openId;		// 微信对应第三方应用的唯一标识
	private String unionId;		// 统一开发平台的id
	private String deviceId;		// 设备id
	private String userInfo;		// 微信用户信息
	
	public MempUserWeixinInfo() {
		super();
	}

	public MempUserWeixinInfo(String id){
		super(id);
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Length(min=1, max=128, message="应用id长度必须介于 1 和 128 之间")
	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}
	
	@Length(min=1, max=128, message="微信对应第三方应用的唯一标识长度必须介于 1 和 128 之间")
	public String getOpenId() {
		return openId;
	}

	public void setOpenId(String openId) {
		this.openId = openId;
	}
	
	@Length(min=0, max=128, message="统一开发平台的id长度必须介于 0 和 128 之间")
	public String getUnionId() {
		return unionId;
	}

	public void setUnionId(String unionId) {
		this.unionId = unionId;
	}
	
	@Length(min=0, max=512, message="设备id长度必须介于 0 和 512 之间")
	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	
	@Length(min=0, max=2048, message="微信用户信息长度必须介于 0 和 2048 之间")
	public String getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(String userInfo) {
		this.userInfo = userInfo;
	}
	
}