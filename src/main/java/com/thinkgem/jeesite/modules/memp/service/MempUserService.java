/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempUser;
import com.thinkgem.jeesite.modules.memp.dao.MempUserDao;

/**
 * 用户Service
 * @author yangqh
 * @version 2019-12-10
 */
@Service
@Transactional(readOnly = true)
public class MempUserService extends CrudService<MempUserDao, MempUser> {

	public MempUser get(String id) {
		return super.get(id);
	}
	
	public List<MempUser> findList(MempUser mempUser) {
		return super.findList(mempUser);
	}
	
	public Page<MempUser> findPage(Page<MempUser> page, MempUser mempUser) {
		return super.findPage(page, mempUser);
	}
	
	@Transactional(readOnly = false)
	public void save(MempUser mempUser) {
		super.save(mempUser);
	}
	
	@Transactional(readOnly = false)
	public void delete(MempUser mempUser) {
		super.delete(mempUser);
	}
	
}