package com.tsmask.grt.controller;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class NewsController {
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	@RequestMapping(value = "/News", method = RequestMethod.GET)
	public String News(Locale locale, Model model) {
		logger.info("News page");
		return "News";
	}
	@RequestMapping(value = "/News2", method = RequestMethod.GET)
	public String News2(Locale locale, Model model) {
		logger.info("News page");
		return "News2";
	}
	@RequestMapping(value = "/News3", method = RequestMethod.GET)
	public String News3(Locale locale, Model model) {
		logger.info("News page");
		return "News3";
	}
	@RequestMapping(value = "/News4", method = RequestMethod.GET)
	public String News4(Locale locale, Model model) {
		logger.info("News page");
		return "News4";
	}
	@RequestMapping(value = "/News5", method = RequestMethod.GET)
	public String News5(Locale locale, Model model) {
		logger.info("News page");
		return "News5";
	}
}
