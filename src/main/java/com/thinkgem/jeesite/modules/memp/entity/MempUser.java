/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户Entity
 * @author yangqh
 * @version 2019-12-09
 */
public class MempUser extends DataEntity<MempUser> {
	
	private static final long serialVersionUID = 1L;
	private String openid;		// OPENID
	private String headimg;		// 头像
	private String nickname;		// 昵称
	private String mobile;		// 手机号
	private int coin;		// 乐币数
	private int versionNo;		// 乐币数乐观锁
	private int sex;
	
	public MempUser() {
		super();
	}

	public MempUser(String id){
		super(id);
	}

	@Length(min=0, max=64, message="OPENID长度必须介于 0 和 64 之间")
	public String getOpenid() {
		return openid;
	}

	public void setOpenid(String openid) {
		this.openid = openid;
	}
	
	@Length(min=0, max=256, message="头像长度必须介于 0 和 256 之间")
	public String getHeadimg() {
		return headimg;
	}

	public void setHeadimg(String headimg) {
		this.headimg = headimg;
	}
	
	@Length(min=0, max=64, message="昵称长度必须介于 0 和 64 之间")
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Length(min=0, max=64, message="手机号长度必须介于 0 和 64 之间")
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public int getCoin() {
		return coin;
	}

	public void setCoin(int coin) {
		this.coin = coin;
	}
	
	public int getVersionNo() {
		return versionNo;
	}

	public void setVersionNo(int versionNo) {
		this.versionNo = versionNo;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}
}