/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.thinkgem.jeesite.common.exception.BusinessException;
import com.thinkgem.jeesite.modules.memp.entity.SpecInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;
import com.thinkgem.jeesite.modules.memp.dao.MempProductTypeDao;

/**
 * 商品类型Service
 *
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
        List<String> specs = Arrays.asList(mempProductType.getSpec().split(","));
        List<String> items = Arrays.asList(mempProductType.getItem().split(","));
        if (specs.size() != items.size()) {
            throw new BusinessException("规格配置不完整");
        }
        List<SpecInfo> specInfoList = new ArrayList<SpecInfo>();
        for (int i = 0; i < specs.size(); i++) {
            SpecInfo specInfo = new SpecInfo();
            specInfo.setSpec(specs.get(i));
            specInfo.setItem(items.get(i));
            specInfoList.add(specInfo);
        }
        mempProductType.setSpecInfo(JSON.toJSONString(specInfoList));
        super.save(mempProductType);
    }

    @Transactional(readOnly = false)
    public void delete(MempProductType mempProductType) {
        super.delete(mempProductType);
    }

}