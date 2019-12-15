/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;
import com.thinkgem.jeesite.modules.memp.dao.MempProductTypeDao;

/**
 * 商品类型Service
 * @author yangqh
 * @version 2019-12-15
 */
@Service
@Transactional(readOnly = true)
public class MempProductTypeService extends CrudService<MempProductTypeDao, MempProductType> {

	public MempProductType get(String id) {
		return super.get(id);
	}
	
	public List<MempProductType> findList(MempProductType mempProductType) {
		return super.findList(mempProductType);
	}
	
	public Page<MempProductType> findPage(Page<MempProductType> page, MempProductType mempProductType) {
		return super.findPage(page, mempProductType);
	}
	
	@Transactional(readOnly = false)
	public void save(MempProductType mempProductType) {
		super.save(mempProductType);
	}
	
	@Transactional(readOnly = false)
	public void delete(MempProductType mempProductType) {
		super.delete(mempProductType);
	}
	
}