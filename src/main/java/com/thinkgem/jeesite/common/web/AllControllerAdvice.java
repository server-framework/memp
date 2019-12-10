package com.thinkgem.jeesite.common.web;

import com.thinkgem.jeesite.common.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseStatus;
//import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import java.util.Iterator;
import java.util.Set;


/**
 * @author yangqh
 * @date 2019/12/10
 **/
//@RestControllerAdvice
public class AllControllerAdvice extends ApiBaseController {

    Logger log = LoggerFactory.getLogger(AllControllerAdvice.class);

    /**
     * 应用到所有@RequestMapping注解方法，在其执行之前初始化数据绑定器
     */
    @InitBinder
    public void initBinder(WebDataBinder binder) {
    }

    /**
     * 把值绑定到Model中，使全局@RequestMapping可以获取到该值
     */
    @ModelAttribute
    public void addAttributes(Model model) {
    }

    /**
     * 全局异常捕捉处理
     */
    @ExceptionHandler(value = Exception.class)
    public Result<String> errorHandler(Exception e) {
        log.error(e.getMessage(), e);
        return failServerError();
    }

    /**
     * 捕捉BusinessException自定义抛出的异常
     *
     * @return
     */
    @ResponseStatus(HttpStatus.OK)
    @ExceptionHandler(BusinessException.class)
    public Result handleBusinessException(BusinessException e) {
        if (e instanceof BusinessException) {
            return failServerError(e.getCode());
        }
        return failServerError(UserConstant.ERROR);
    }

    /**
     * 捕捉BindException抛出的异常
     *
     * @return
     */
    @ResponseStatus(HttpStatus.OK)
    @ExceptionHandler(value = BindException.class)
    public Result<String> bindExceptionHandler(BindException e) {
        BindingResult bindingResult = e.getBindingResult();
        StringBuilder message = getErrorMsg(bindingResult);
        return failBadReq(message.toString());
    }

    /**
     * 捕捉MethodArgumentNotValidException抛出的异常
     *
     * @return
     */
    @ResponseStatus(HttpStatus.OK)
    @ExceptionHandler(value = MethodArgumentNotValidException.class)
    public Result<String> methodArgumentNotValidExceptionHandler(MethodArgumentNotValidException e) {
        BindingResult bindingResult = e.getBindingResult();
        StringBuilder message = getErrorMsg(bindingResult);
        return failBadReq(message.toString());
    }

    /**
     * 捕捉ConstraintViolationException抛出的异常
     *
     * @return
     */
    @ResponseStatus(HttpStatus.OK)
    @ExceptionHandler(value = ConstraintViolationException.class)
    public Result<String> constraintViolationExceptionHandler(ConstraintViolationException e) {
        StringBuilder message = new StringBuilder();
        Set<ConstraintViolation<?>> constraintViolations = e.getConstraintViolations();
        Iterator<ConstraintViolation<?>> constraintViolationIterator = constraintViolations.iterator();
        if (constraintViolationIterator.hasNext()) {
            ConstraintViolation<?> constraintViolation = constraintViolationIterator.next();
            if (message.length() > 0) {
                message.append("|");
            }
            message.append(constraintViolation.getMessage());
        }
        return failBadReq(message.toString());
    }

    @ExceptionHandler(Throwable.class)
    public Result<String> handleException(Throwable e) {
        log.error("系统异常", e);
        return failServerError("系统异常");
    }

    /**
     * 获取错误信息
     *
     * @param bindingResult
     * @return
     */
    private StringBuilder getErrorMsg(BindingResult bindingResult) {
        StringBuilder message = new StringBuilder();
        if (bindingResult.hasErrors()) {
            for (ObjectError objectError : bindingResult.getAllErrors()) {
                if (message.length() > 0) {
                    message.append("|");
                }
                message.append(objectError.getDefaultMessage());
            }
        }
        return message;
    }
}