/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.mapper.JsonMapper;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.memp.entity.MempSetting;
import com.thinkgem.jeesite.modules.memp.entity.R;
import com.thinkgem.jeesite.modules.memp.service.MempSettingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * 配置管理Controller
 *
 * @author yangqh
 * @version 2019-12-08
 */
@Controller
@RequestMapping(value = "${adminPath}/memp/mempSetting")
public class MempSettingController extends BaseController {

    @Autowired
    private MempSettingService mempSettingService;

    @ModelAttribute
    public MempSetting get(@RequestParam(required = false) String id) {
        MempSetting entity = null;
        if (StringUtils.isNotBlank(id)) {
            entity = mempSettingService.get(id);
        }
        if (entity == null) {
            entity = new MempSetting();
        }
        return entity;
    }

    @RequestMapping(value = "form")
    public String form(MempSetting mempSetting, Model model) {
        mempSetting.setDelFlag("0");
        List<MempSetting> mempSettingList = mempSettingService.findList(mempSetting);
        if (mempSettingList != null) {
            mempSetting = mempSettingList.get(0);
            if (mempSetting.getStages() != null) {
                mempSetting.setR((R) JsonMapper.fromJsonString(mempSetting.getStages(), R.class));
            }
        }
        model.addAttribute("mempSetting", mempSetting);
        return "modules/memp/mempSettingForm";
    }

    @RequestMapping(value = "save")
    public String save(MempSetting mempSetting, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, mempSetting)) {
            return form(mempSetting, model);
        }
        mempSetting.setStages(JsonMapper.toJsonString(mempSetting.getR()));
        mempSettingService.save(mempSetting);
        addMessage(redirectAttributes, "保存配置成功");
        return "redirect:" + Global.getAdminPath() + "/memp/mempSetting/form";
    }

}