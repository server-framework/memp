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
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;
import com.thinkgem.jeesite.modules.memp.service.MempProductTypeService;

/**
 * 商品类型Controller
 * @author yangqh
 * @version 2019-12-15
 */
@Controller
@RequestMapping(value = "${adminPath}/memp/mempProductType")
public class MempProductTypeController extends BaseController {

	@Autowired
	private MempProductTypeService mempProductTypeService;
	
	@ModelAttribute
	public MempProductType get(@RequestParam(required=false) String id) {
		MempProductType entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mempProductTypeService.get(id);
		}
		if (entity == null){
			entity = new MempProductType();
		}
		return entity;
	}
	
	@RequiresPermissions("memp:mempProductType:view")
	@RequestMapping(value = {"list", ""})
	public String list(MempProductType mempProductType, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MempProductType> page = mempProductTypeService.findPage(new Page<MempProductType>(request, response), mempProductType); 
		model.addAttribute("page", page);
		return "modules/memp/mempProductTypeList";
	}

	@RequiresPermissions("memp:mempProductType:view")
	@RequestMapping(value = "form")
	public String form(MempProductType mempProductType, Model model) {
		model.addAttribute("mempProductType", mempProductType);
		return "modules/memp/mempProductTypeForm";
	}

	@RequiresPermissions("memp:mempProductType:edit")
	@RequestMapping(value = "save")
	public String save(MempProductType mempProductType, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mempProductType)){
			return form(mempProductType, model);
		}
		mempProductTypeService.save(mempProductType);
		addMessage(redirectAttributes, "保存商品类型成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempProductType/?repage";
	}
	
	@RequiresPermissions("memp:mempProductType:edit")
	@RequestMapping(value = "delete")
	public String delete(MempProductType mempProductType, RedirectAttributes redirectAttributes) {
		mempProductTypeService.delete(mempProductType);
		addMessage(redirectAttributes, "删除商品类型成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempProductType/?repage";
	}

}