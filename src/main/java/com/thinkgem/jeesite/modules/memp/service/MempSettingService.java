/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempSetting;
import com.thinkgem.jeesite.modules.memp.dao.MempSettingDao;

/**
 * 配置管理Service
 * @author yangqh
 * @version 2019-12-08
 */
@Service
@Transactional(readOnly = true)
public class MempSettingService extends CrudService<MempSettingDao, MempSetting> {

	public MempSetting get(String id) {
		return super.get(id);
	}
	
	public List<MempSetting> findList(MempSetting mempSetting) {
		return super.findList(mempSetting);
	}
	
	public Page<MempSetting> findPage(Page<MempSetting> page, MempSetting mempSetting) {
		return super.findPage(page, mempSetting);
	}
	
	@Transactional(readOnly = false)
	public void save(MempSetting mempSetting) {
		super.save(mempSetting);
	}
	
	@Transactional(readOnly = false)
	public void delete(MempSetting mempSetting) {
		super.delete(mempSetting);
	}
	
}