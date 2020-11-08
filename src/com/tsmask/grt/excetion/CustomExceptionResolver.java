package com.tsmask.grt.excetion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * CustomExceptionResolver 全局异常处理器
 * 
 * @author tsmak
 *
 */
public class CustomExceptionResolver implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object object,
			Exception ex) {
		CustomException customException = null;
		if (ex instanceof CustomException) {
			customException = (CustomException) ex;
		} else {
			customException = new CustomException("Not Found");
		}

		// 错误信息
		String message = customException.getMessage();
		// 打开错误页面
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("message", message);
		modelAndView.setViewName("JspErrorPages/error");
		return modelAndView;
	}

}
