/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.List;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempProductCategory;
import com.thinkgem.jeesite.modules.memp.dao.MempProductCategoryDao;

/**
 * 商品分类Service
 * @author yangqh
 * @version 2019-12-15
 */
@Service
@Transactional(readOnly = true)
public class MempProductCategoryService extends CrudService<MempProductCategoryDao, MempProductCategory> {

	public MempProductCategory get(String id) {
		return super.get(id);
	}

	@Autowired
	private MempProductTypeService mempProductTypeService;
	
	public List<MempProductCategory> findList(MempProductCategory mempProductCategory) {
		return super.findList(mempProductCategory);
	}
	
	public Page<MempProductCategory> findPage(Page<MempProductCategory> page, MempProductCategory mempProductCategory) {
		Page<MempProductCategory> page1 = super.findPage(page, mempProductCategory);
		for (MempProductCategory category : page1.getList()) {
			MempProductType type = mempProductTypeService.get(category.getTypeId());
			category.setTypeId(type == null ? "" : type.getName());
			category.setParentId(StrUtil.equals("0",category.getParentId()) ? "一级" : "二级" );
		}
		return page1;
	}
	
	@Transactional(readOnly = false)
	public void save(MempProductCategory mempProductCategory) {
		super.save(mempProductCategory);
	}
	
	@Transactional(readOnly = false)
	public void delete(MempProductCategory mempProductCategory) {
		super.delete(mempProductCategory);
	}

	/**
	 *
	 * @return
	 */
	public List<MempProductCategory> selectParent() {
		MempProductCategory mempProductCategory = new MempProductCategory();
		mempProductCategory.setParentId("0");
		mempProductCategory.setDelFlag("0");
		return findList(mempProductCategory);
	}
}