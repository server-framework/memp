/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import javax.validation.constraints.NotNull;

/**
 * 商品分类Entity
 * @author yangqh
 * @version 2019-12-15
 */
public class MempProductCategory extends DataEntity<MempProductCategory> {
	
	private static final long serialVersionUID = 1L;
	private String parentId;		// 父ID
	private String categoryType;
	private String name;		// 类型名称
	private String typeId;		// 类型
	private String keywords;		// 关键字
	private String unit;		// 单位
	private int sortNo;		// 排序
	
	public MempProductCategory() {
		super();
	}

	public MempProductCategory(String id){
		super(id);
	}

	@Length(min=0, max=64, message="父ID长度必须介于 0 和 64 之间")
	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	@Length(min=1, max=255, message="类型名称长度必须介于 1 和 255 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	
	@Length(min=0, max=64, message="关键字长度必须介于 0 和 64 之间")
	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	@Length(min=0, max=4, message="单位长度必须介于 0 和 4 之间")
	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	@NotNull(message="排序不能为空")
	public int getSortNo() {
		return sortNo;
	}

	public void setSortNo(int sortNo) {
		this.sortNo = sortNo;
	}

	public String getCategoryType() {
		return categoryType;
	}

	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
}