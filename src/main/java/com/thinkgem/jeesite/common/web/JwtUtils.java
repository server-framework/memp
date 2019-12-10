package com.thinkgem.jeesite.common.web;

import cn.hutool.core.util.StrUtil;
import com.thinkgem.jeesite.common.utils.JedisUtils;
import com.thinkgem.jeesite.modules.memp.api.constans.TokenClearType;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import java.util.Calendar;

public class JwtUtils {

    private static Logger log = LoggerFactory.getLogger(JwtUtils.class);

    public static final String TOKEN_KEY = "sdfhsfhgyvcw%#$^%783624wGFGEJH";

    public static final String REQUEST_CURRENT_USER_ID = "request_current_user_id";

    public static String createToken(String userId, int tokenExpire) {
        String id = String.valueOf(userId);
        String token = Jwts
                .builder()
                .setAudience(id)
                .setIssuedAt(Calendar.getInstance().getTime())
                .signWith(SignatureAlgorithm.HS512, TOKEN_KEY)
                .compact();
        handleToken(userId, token, tokenExpire);
        return token;
    }

    private static void handleToken(String userId, String token, int tokenExpire) {
        String cacheToken = JedisUtils.get(userId);
        if (StrUtil.isNotBlank(cacheToken)) {
            JedisUtils.set(cacheToken, TokenClearType.LOGOUT_PASSIVE.getVal(), 0);
        }
        JedisUtils.set(userId, token, tokenExpire);
    }

    public static String parserToken(String token) {
        Jws<Claims> claimsJws = null;
        try {
            claimsJws = Jwts.parser().setSigningKey(TOKEN_KEY).parseClaimsJws(token);
        } catch (Exception e) {
            // don't trust the JWT!
            log.warn("Wrong token: {}", token);
        }
        if (claimsJws != null) {
            String userId = claimsJws.getBody().getAudience();
            return userId;
        }
        log.warn("claimsJws is null");
        return null;
    }

    public static String getCurrentUserId(HttpServletRequest request) {
        Object userId = request.getAttribute(REQUEST_CURRENT_USER_ID);
        if (userId == null) {
            return null;
        }
        return userId.toString();
    }
}