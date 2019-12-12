/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.memp.entity.MempUserWeixinInfo;
import com.thinkgem.jeesite.modules.memp.service.MempUserWeixinInfoService;

/**
 * 微信用户Controller
 * @author yangqh
 * @version 2019-12-12
 */
@Controller
@RequestMapping(value = "${adminPath}/memp/mempUserWeixinInfo")
public class MempUserWeixinInfoController extends BaseController {

	@Autowired
	private MempUserWeixinInfoService mempUserWeixinInfoService;
	
	@ModelAttribute
	public MempUserWeixinInfo get(@RequestParam(required=false) String id) {
		MempUserWeixinInfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mempUserWeixinInfoService.get(id);
		}
		if (entity == null){
			entity = new MempUserWeixinInfo();
		}
		return entity;
	}
	
	@RequiresPermissions("memp:mempUserWeixinInfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(MempUserWeixinInfo mempUserWeixinInfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MempUserWeixinInfo> page = mempUserWeixinInfoService.findPage(new Page<MempUserWeixinInfo>(request, response), mempUserWeixinInfo); 
		model.addAttribute("page", page);
		return "modules/memp/mempUserWeixinInfoList";
	}

	@RequiresPermissions("memp:mempUserWeixinInfo:view")
	@RequestMapping(value = "form")
	public String form(MempUserWeixinInfo mempUserWeixinInfo, Model model) {
		model.addAttribute("mempUserWeixinInfo", mempUserWeixinInfo);
		return "modules/memp/mempUserWeixinInfoForm";
	}

	@RequiresPermissions("memp:mempUserWeixinInfo:edit")
	@RequestMapping(value = "save")
	public String save(MempUserWeixinInfo mempUserWeixinInfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mempUserWeixinInfo)){
			return form(mempUserWeixinInfo, model);
		}
		mempUserWeixinInfoService.save(mempUserWeixinInfo);
		addMessage(redirectAttributes, "保存微信用户成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempUserWeixinInfo/?repage";
	}
	
	@RequiresPermissions("memp:mempUserWeixinInfo:edit")
	@RequestMapping(value = "delete")
	public String delete(MempUserWeixinInfo mempUserWeixinInfo, RedirectAttributes redirectAttributes) {
		mempUserWeixinInfoService.delete(mempUserWeixinInfo);
		addMessage(redirectAttributes, "删除微信用户成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempUserWeixinInfo/?repage";
	}

}