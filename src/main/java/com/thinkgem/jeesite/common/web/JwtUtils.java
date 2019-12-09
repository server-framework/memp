package com.thinkgem.jeesite.common.web;

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

    public static final String REQUEST_CURRENT_USER_ID = "REQUEST_CURRENT_USER_ID";

    public static String createToken(String userId) {
        String id = String.valueOf(userId);
        // JWT
        String token = Jwts
                .builder()
                .setAudience(id)
                .setIssuedAt(Calendar.getInstance().getTime())
                .signWith(SignatureAlgorithm.HS512, TOKEN_KEY)
                .compact();
        return token;
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