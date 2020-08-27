package pers.llj.crowdfunding.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.exception.AccessForbiddenException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        Object attribute = request.getSession().getAttribute("admin");
        if (attribute != null) {
            Admin admin = (Admin) attribute;
            return true;
        }
        throw new AccessForbiddenException("您尚未登录，现在不能访问受保护的资源");
    }
}
