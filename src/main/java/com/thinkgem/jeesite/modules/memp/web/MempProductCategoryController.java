/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.modules.memp.entity.MempProductType;
import com.thinkgem.jeesite.modules.memp.service.MempProductTypeService;
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
import com.thinkgem.jeesite.modules.memp.entity.MempProductCategory;
import com.thinkgem.jeesite.modules.memp.service.MempProductCategoryService;

import java.util.ArrayList;
import java.util.List;

/**
 * 商品分类Controller
 * @author yangqh
 * @version 2019-12-15
 */
@Controller
@RequestMapping(value = "${adminPath}/memp/mempProductCategory")
public class MempProductCategoryController extends BaseController {

	@Autowired
	private MempProductCategoryService mempProductCategoryService;

	@Autowired
	private MempProductTypeService mempProductTypeService;

	@ModelAttribute
	public MempProductCategory get(@RequestParam(required=false) String id) {
		MempProductCategory entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mempProductCategoryService.get(id);
		}
		if (entity == null){
			entity = new MempProductCategory();
		}
		return entity;
	}
	
	@RequiresPermissions("memp:mempProductCategory:view")
	@RequestMapping(value = {"list", ""})
	public String list(MempProductCategory mempProductCategory, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MempProductCategory> page = mempProductCategoryService.findPage(new Page<MempProductCategory>(request, response), mempProductCategory); 
		model.addAttribute("page", page);
		List<MempProductCategory> parents = mempProductCategoryService.selectParent();
		model.addAttribute("parents", parents);
		return "modules/memp/mempProductCategoryList";
	}

	@RequiresPermissions("memp:mempProductCategory:view")
	@RequestMapping(value = "form")
	public String form(MempProductCategory mempProductCategory, Model model) {
		model.addAttribute("mempProductCategory", mempProductCategory);
		List<MempProductCategory> parents = mempProductCategoryService.selectParent();
		model.addAttribute("parents", parents);
		MempProductType type = new MempProductType();
		type.setDelFlag("0");
		model.addAttribute("types", mempProductTypeService.findList(type));
		return "modules/memp/mempProductCategoryForm";
	}

	@RequiresPermissions("memp:mempProductCategory:edit")
	@RequestMapping(value = "save")
	public String save(MempProductCategory mempProductCategory, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mempProductCategory)){
			return form(mempProductCategory, model);
		}
		if (StrUtil.equals("0", mempProductCategory.getParentId()) && StrUtil.isBlank(mempProductCategory.getCategoryType())) {
			List<String> list = new ArrayList<String>();
			list.add(0, "数据验证失败：");
			list.add(1,"一级分类时商品大类不能为空");
			addMessage(model, list.toArray(new String[]{}));
			return form(mempProductCategory, model);
		}
		if (!StrUtil.equals("0", mempProductCategory.getParentId()) && StrUtil.isBlank(mempProductCategory.getTypeId())) {
			List<String> list = new ArrayList<String>();
			list.add(0, "数据验证失败：");
			list.add(1,"二级分类时商品类型不能为空");
			addMessage(model, list.toArray(new String[]{}));
			return form(mempProductCategory, model);
		}

		mempProductCategoryService.save(mempProductCategory);
		addMessage(redirectAttributes, "保存商品分类成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempProductCategory/?repage";
	}
	
	@RequiresPermissions("memp:mempProductCategory:edit")
	@RequestMapping(value = "delete")
	public String delete(MempProductCategory mempProductCategory, RedirectAttributes redirectAttributes) {
		mempProductCategoryService.delete(mempProductCategory);
		addMessage(redirectAttributes, "删除商品分类成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempProductCategory/?repage";
	}

}