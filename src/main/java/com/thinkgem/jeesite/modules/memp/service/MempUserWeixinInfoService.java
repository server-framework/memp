/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.memp.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.thinkgem.jeesite.common.weixin.WeXinUserRegisterDTO;
import com.thinkgem.jeesite.common.weixin.WeiXinUserInfo;
import com.thinkgem.jeesite.modules.memp.entity.MempUser;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.memp.entity.MempUserWeixinInfo;
import com.thinkgem.jeesite.modules.memp.dao.MempUserWeixinInfoDao;

import javax.annotation.Resource;

/**
 * 微信用户Service
 *
 * @author yangqh
 * @version 2019-12-12
 */
@Service
@Transactional(readOnly = true)
public class MempUserWeixinInfoService extends CrudService<MempUserWeixinInfoDao, MempUserWeixinInfo> {

    @Resource
    private MempUserService mempUserService;

    public MempUserWeixinInfo get(String id) {
        return super.get(id);
    }

    public List<MempUserWeixinInfo> findList(MempUserWeixinInfo mempUserWeixinInfo) {
        return super.findList(mempUserWeixinInfo);
    }

    public Page<MempUserWeixinInfo> findPage(Page<MempUserWeixinInfo> page, MempUserWeixinInfo mempUserWeixinInfo) {
        return super.findPage(page, mempUserWeixinInfo);
    }

    @Transactional(readOnly = false)
    public void save(MempUserWeixinInfo mempUserWeixinInfo) {
        super.save(mempUserWeixinInfo);
    }

    @Transactional(readOnly = false)
    public void delete(MempUserWeixinInfo mempUserWeixinInfo) {
        super.delete(mempUserWeixinInfo);
    }

    /**
     * @author yangqh
     * @date 2019/12/12
     **/
    @Transactional(rollbackFor = Exception.class)
    public void initWeixinInfo(MempUserWeixinInfo weixinInfo, boolean initUser) {
        if (initUser) {
            MempUser mempUser = new MempUser();
            mempUserService.save(mempUser);
            weixinInfo.setUserId(mempUser.getId());
        }
        save(weixinInfo);
    }

    /**
     * @author yangqh
     * @date 2019/12/12
     **/
    @Transactional(rollbackFor = Exception.class)
    public void updateWeixinInfo(WxMpUser wxMpUser, MempUserWeixinInfo weixinInfo) {
        weixinInfo.setUnionId(wxMpUser.getUnionId());
        weixinInfo.setUserInfo(JSONObject.toJSONString(wxMpUser));
        MempUser mempUser = mempUserService.get(weixinInfo.getUserId());
        mempUser.setId(weixinInfo.getUserId());
        mempUser.setNickname(wxMpUser.getNickname());
        mempUser.setHeadimg(wxMpUser.getHeadImgUrl());
        mempUser.setSex(wxMpUser.getSex());
        mempUserService.save(mempUser);
    }

    /**
     * @author yangqh
     * @date 2019/12/12
     **/
    @Transactional(rollbackFor = Exception.class)
    public String boundWeiXinUser(MempUserWeixinInfo mempUserWeixinInfo, WeXinUserRegisterDTO weXinUserRegisterDTO) {
        MempUser mempUser = new MempUser();
        mempUser.setAccount(weXinUserRegisterDTO.getPhone());
        mempUser.setDelFlag("0");
        WeiXinUserInfo weiXinUserInfo = JSONObject.parseObject(mempUserWeixinInfo.getUserInfo(), WeiXinUserInfo.class);
        List<MempUser> mempUserList = mempUserService.findList(mempUser);
        if (mempUserList != null && !mempUserList.isEmpty()) {
            mempUser = mempUserList.get(0);
        }
        mempUser.setNickname(weiXinUserInfo.getNickname());
        mempUser.setHeadimg(weiXinUserInfo.getHeadimgurl());
        mempUser.setSex(weiXinUserInfo.getSex());
        mempUser.setMobile(weXinUserRegisterDTO.getPhone());
        mempUserService.save(mempUser);
        //微信关联用户
        mempUserWeixinInfo.setUserId(mempUser.getId());
        return mempUser.getId();
    }
}