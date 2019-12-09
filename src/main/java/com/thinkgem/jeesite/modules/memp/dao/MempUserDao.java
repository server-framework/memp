/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.memp.entity.MempUser;

/**
 * 用户DAO接口
 * @author yangqh
 * @version 2019-12-09
 */
@MyBatisDao
public interface MempUserDao extends CrudDao<MempUser> {
	
}