package com.tsmask.grt.controller;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String News(Locale locale, Model model) {
		logger.info("News page");
		return "JspPages/News";
	}
	@RequestMapping(value = "/news2", method = RequestMethod.GET)
	public String News2(Locale locale, Model model) {
		logger.info("News page");
		return "JspPages/News2";
	}
	@RequestMapping(value = "/news3", method = RequestMethod.GET)
	public String News3(Locale locale, Model model) {
		logger.info("News page");
		return "JspPages/News3";
	}
	@RequestMapping(value = "/news4", method = RequestMethod.GET)
	public String News4(Locale locale, Model model) {
		logger.info("News page");
		return "JspPages/News4";
	}
	@RequestMapping(value = "/news5", method = RequestMethod.GET)
	public String News5(Locale locale, Model model) {
		logger.info("News page");
		return "JspPages/News5";
	}
}
