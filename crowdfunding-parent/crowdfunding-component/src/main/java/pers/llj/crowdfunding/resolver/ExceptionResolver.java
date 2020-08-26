package pers.llj.crowdfunding.resolver;

import com.google.gson.Gson;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import pers.llj.crowdfunding.exception.LoginFailedException;
import pers.llj.crowdfunding.util.CustomUtils;
import pers.llj.crowdfunding.util.ResultEntity;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@ControllerAdvice
public class ExceptionResolver {

    @ExceptionHandler(LoginFailedException.class)
    public ModelAndView LoginFailedExceptionHandler(Exception e, HttpServletRequest request, HttpServletResponse response) throws IOException {
        return commonExceptionHandler("admin-login", e, request, response);
    }

    @ExceptionHandler(Exception.class)
    public ModelAndView ExceptionHandler(Exception e, HttpServletRequest request, HttpServletResponse response) throws IOException {
        return commonExceptionHandler("system-error", e, request, response);

    }

    private ModelAndView commonExceptionHandler(String viewName,Exception e, HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (CustomUtils.isAjaxRequest(request)) {
            response.getWriter().write(new Gson().toJson(ResultEntity.error(e.getMessage())));
            return null;
        }
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("exception", e);
        return modelAndView;
    }
}
