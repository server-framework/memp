/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;

/**
 * 商品类型DAO接口
 * @author yangqh
 * @version 2019-12-15
 */
@MyBatisDao
public interface MempProductTypeDao extends CrudDao<MempProductType> {
	
}