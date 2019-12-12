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
import com.thinkgem.jeesite.modules.memp.entity.MempUser;
import com.thinkgem.jeesite.modules.memp.service.MempUserService;

/**
 * 用户Controller
 * @author yangqh
 * @version 2019-12-12
 */
@Controller
@RequestMapping(value = "${adminPath}/memp/mempUser")
public class MempUserController extends BaseController {

	@Autowired
	private MempUserService mempUserService;
	
	@ModelAttribute
	public MempUser get(@RequestParam(required=false) String id) {
		MempUser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = mempUserService.get(id);
		}
		if (entity == null){
			entity = new MempUser();
		}
		return entity;
	}
	
	@RequiresPermissions("memp:mempUser:view")
	@RequestMapping(value = {"list", ""})
	public String list(MempUser mempUser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<MempUser> page = mempUserService.findPage(new Page<MempUser>(request, response), mempUser); 
		model.addAttribute("page", page);
		return "modules/memp/mempUserList";
	}

	@RequiresPermissions("memp:mempUser:view")
	@RequestMapping(value = "form")
	public String form(MempUser mempUser, Model model) {
		model.addAttribute("mempUser", mempUser);
		return "modules/memp/mempUserForm";
	}

	@RequiresPermissions("memp:mempUser:edit")
	@RequestMapping(value = "save")
	public String save(MempUser mempUser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, mempUser)){
			return form(mempUser, model);
		}
		mempUserService.save(mempUser);
		addMessage(redirectAttributes, "保存用户成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempUser/?repage";
	}
	
	@RequiresPermissions("memp:mempUser:edit")
	@RequestMapping(value = "delete")
	public String delete(MempUser mempUser, RedirectAttributes redirectAttributes) {
		mempUserService.delete(mempUser);
		addMessage(redirectAttributes, "删除用户成功");
		return "redirect:"+Global.getAdminPath()+"/memp/mempUser/?repage";
	}

}