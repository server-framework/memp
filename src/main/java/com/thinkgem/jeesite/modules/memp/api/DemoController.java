package com.thinkgem.jeesite.modules.memp.api;

import com.thinkgem.jeesite.common.web.ApiBaseController;
import com.thinkgem.jeesite.common.web.Authorization;
import com.thinkgem.jeesite.common.web.Result;
import com.thinkgem.jeesite.common.web.UserConstant;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Api(value = "DemoController", tags = "demo")
@RestController
@RequestMapping(value = "/demo/")
public class DemoController extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(DemoController.class);

    /**
     * @author yangqh
     * @date 2019/12/9
     **/
    @ApiOperation(value = "demo")
    @Authorization
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public Result login(@RequestHeader(UserConstant.REQ_HEADER_TOKEN) String token) {
        log.info("当前用户={}", getCurrentUserId());
        return ok();
    }
}
