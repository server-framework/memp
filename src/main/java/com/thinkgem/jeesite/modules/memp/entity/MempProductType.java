/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 商品类型Entity
 * @author yangqh
 * @version 2019-12-15
 */
public class MempProductType extends DataEntity<MempProductType> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 类型
	private String specInfo;		// 默认规则

	private String spec;
	private String item;
	
	public MempProductType() {
		super();
	}

	public MempProductType(String id){
		super(id);
	}

	@Length(min=1, max=255, message="类型长度必须介于 1 和 255 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=1024, message="默认规则长度必须介于 0 和 1024 之间")
	public String getSpecInfo() {
		return specInfo;
	}

	public void setSpecInfo(String specInfo) {
		this.specInfo = specInfo;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}
}