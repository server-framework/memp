package com.thinkgem.jeesite.modules.memp.api.interceptor;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.common.utils.JedisUtils;
import com.thinkgem.jeesite.common.web.JwtUtils;
import com.thinkgem.jeesite.common.web.UserConstant;
import com.thinkgem.jeesite.modules.memp.api.constans.TokenClearType;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;

/**
 * 身份验证的拦截器
 * 自定义拦截器，对请求进行身份验证
 *
 * @author yangqh
 * @date 2019/12/10
 * @see Authorization
 */
public class AuthorizationInterceptor implements HandlerInterceptor {

    private Logger logger = LoggerFactory.getLogger(AuthorizationInterceptor.class);

    private String unauthorizedErrorMessage = "401 unauthorized";
    ;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        // 如果不是映射到方法直接通过
        if (!(handler instanceof HandlerMethod)) {
            return true;
        }
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        Method method = handlerMethod.getMethod();

        String unauthorizedErrorMsg = unauthorizedErrorMessage;

        // 从header中得到token
        String token = request.getHeader(UserConstant.REQ_HEADER_TOKEN);
        if (token != null && token.length() > 0) {
            Jws<Claims> claimsJws = null;
            try {
                claimsJws = Jwts.parser().setSigningKey(JwtUtils.TOKEN_KEY).parseClaimsJws(token);
            } catch (Exception e) {
                // don't trust the JWT!
                logger.warn("Wrong token: {}", token);
            }
            if (claimsJws != null) {
                String key = JedisUtils.get(token);
                if (StrUtil.isBlank(key)) {
                    String userId = claimsJws.getBody().getAudience();
                    if (StrUtil.isNotBlank(userId)) {
                        request.setAttribute(JwtUtils.REQUEST_CURRENT_USER_ID, userId);
                        return true;
                    }
                } else {
                    // token失效原因
                    unauthorizedErrorMsg = TokenClearType.getEnum(key).getMessage();
                }
            }
        }
        // 如果验证token失败，并且方法注明了Authorization，返回401错误
        if (handlerMethod.getBeanType().getAnnotation(Authorization.class) != null   // 查看方法所在的Controller是否有注解
                || method.getAnnotation(Authorization.class) != null) { // 查看方法上是否有注解
            response.setHeader("content-type", "text/html;charset=UTF-8");
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(response.getOutputStream()));
            writer.write("{\n" +
                    "  \"msg\": \"" + unauthorizedErrorMsg + "\",\n" +
                    "  \"ret\": 401\n" +
                    "}");
            writer.close();
            return false;
        }
        // 为了防止以恶意操作直接在request_current_user_id中写入数据，将其设为null
        request.setAttribute(JwtUtils.REQUEST_CURRENT_USER_ID, null);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

