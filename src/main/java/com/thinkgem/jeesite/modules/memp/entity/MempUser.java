/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户Entity
 * @author yangqh
 * @version 2019-12-12
 */
public class MempUser extends DataEntity<MempUser> {
	
	private static final long serialVersionUID = 1L;
	private String account;		// 账号
	private String password;		// 密码
	private String salt;		// 密码盐
	private String headimg;		// 头像
	private String nickname;		// 昵称
	private String mobile;		// 手机号
	private Integer sex;		// 性别 1-男|2-女
	
	public MempUser() {
		super();
	}

	public MempUser(String id){
		super(id);
	}

	@Length(min=0, max=64, message="账号长度必须介于 0 和 64 之间")
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}
	
	@Length(min=0, max=128, message="密码长度必须介于 0 和 128 之间")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Length(min=0, max=64, message="密码盐长度必须介于 0 和 64 之间")
	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
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
	
	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}
	
}