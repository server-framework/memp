/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 配置管理Entity
 * @author yangqh
 * @version 2019-12-08
 */
public class MempSetting extends DataEntity<MempSetting> {
	
	private static final long serialVersionUID = 1L;
	private Double commission1;		// 一级佣金比例
	private Double commission2;		// 二级佣金比例
	private Double coinRate;		// 乐币汇率
	private Integer minCash;		// 最小提现乐币
	private String stages;		// 分期数对应的利率

	private R r;

	public MempSetting() {
		super();
	}

	public MempSetting(String id){
		super(id);
	}

	@NotNull(message="一级佣金比例不能为空")
	public Double getCommission1() {
		return commission1;
	}

	public void setCommission1(Double commission1) {
		this.commission1 = commission1;
	}
	
	@NotNull(message="二级佣金比例不能为空")
	public Double getCommission2() {
		return commission2;
	}

	public void setCommission2(Double commission2) {
		this.commission2 = commission2;
	}
	
	@NotNull(message="乐币汇率不能为空")
	public Double getCoinRate() {
		return coinRate;
	}

	public void setCoinRate(Double coinRate) {
		this.coinRate = coinRate;
	}
	
	@NotNull(message="最小提现乐币不能为空")
	public Integer getMinCash() {
		return minCash;
	}

	public void setMinCash(Integer minCash) {
		this.minCash = minCash;
	}
	
	@Length(min=1, max=256, message="分期数对应的利率长度必须介于 1 和 256 之间")
	public String getStages() {
		return stages;
	}

	public void setStages(String stages) {
		this.stages = stages;
	}

	public R getR() {
		return r;
	}

	public void setR(R r) {
		this.r = r;
	}
}