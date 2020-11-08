//Author: Daniel Saverimuttu

package com.tsmask.grt.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;  
import com.tsmask.grt.pojo.rating;
import com.tsmask.grt.service.RatingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RatingController {
	
	public RatingService ratingservice;
	
	private static final Logger logger = LoggerFactory.getLogger(RatingController.class);
	
	
	/*Contains the back-end logic for the marking page, currently contains a temporary measure to ensure the function of the rating system. 
	As the database implementation has not been finished yet, there is no way to ensure that data can persist for any period of time.
	This implementation will at least allow the the data to persist over a refresh of the page*/
	
	@RequestMapping(value = "/marking", method = RequestMethod.GET)
	public String marking2 (HttpServletRequest req, Model model) {
		logger.info("Now in marking page");
		
		
		//Creates rating object
		rating league1 = new rating();
		rating league2 = new rating();

		//Collects form data if present
		String userrate1 = req.getParameter("userrate1");
		String totalcount1 = req.getParameter("totalcount1");
		String totaluser1 = req.getParameter("totaluser1");
		
		String userrate2 = req.getParameter("userrate2");
		String totalcount2 = req.getParameter("totalcount2");
		String totaluser2 = req.getParameter("totaluser2");
		
		//Checks if values are null (Null values will cause errors on display
		if (totaluser1 == null)
		{
			totaluser1 = "0";
		}
		
		if (totalcount1 == null)
		{
			totalcount1 = "0";
		}
		
		if (userrate1 == null)
		{
			userrate1 = "0";
		}
		
		if (totaluser2 == null)
		{
			totaluser2 = "0";
		}
		
		if (totalcount2 == null)
		{
			totalcount2 = "0";
		}
		
		if (userrate2 == null)
		{
			userrate2 = "0";
		}
		
		//Sets rating for game 1	
		league1.setRating(Float.parseFloat(userrate1));
		league1.setTc(Float.parseFloat(totalcount1));
		league1.setCounter();
		league1.setUserNum(Float.parseFloat(totaluser1));
		league1.setAvgrate();
		
		if (league1.getAvgrate() == 0) 
		{
			league1.baseUserNum(0);
		}
		
		//Sets rating for game 2
		league2.setRating(Float.parseFloat(userrate2));
		league2.setTc(Float.parseFloat(totalcount2));
		league2.setCounter();
		league2.setUserNum(Float.parseFloat(totaluser2));
		league2.setAvgrate();
		
		if (league2.getAvgrate() == 0) 
		{
			league2.baseUserNum(0);
		}
		
		//System.out.println(league1.getTc());
		
		//Feeds data into the front end
		model.addAttribute("counting1", league1.getCount());
		model.addAttribute("number1", league1.getUserNum());
		model.addAttribute("avgrate1", league1.round(league1.getAvgrate()));
		
		model.addAttribute("counting2", league2.getCount());
		model.addAttribute("number2", league2.getUserNum());
		model.addAttribute("avgrate2", league2.round(league1.getAvgrate()));

		
		
		return "marking";
	}
	
	@RequestMapping(value = "/markingprocess", method = RequestMethod.GET)
	public String markingprocess (HttpServletRequest req, Model model) {
		logger.info("Now in marking page");
		
		
		return "markingprocess";
	}
	
	@RequestMapping(value = "/marking2", method = RequestMethod.GET)
	public String marking3 (HttpServletRequest req, Model model) {
		logger.info("Now in marking2 page");
		
		rating league1 = new rating();
		rating league2 = new rating();

		
		String userrate1 = req.getParameter("userrate1");
		String totalcount1 = req.getParameter("totalcount1");
		String totaluser1 = req.getParameter("totaluser1");
		
		String userrate2 = req.getParameter("userrate2");
		String totalcount2 = req.getParameter("totalcount2");
		String totaluser2 = req.getParameter("totaluser2");
		
		//
		
		if (totaluser1 == null)
		{
			totaluser1 = "0";
		}
		
		if (totalcount1 == null)
		{
			totalcount1 = "0";
		}
		
		if (userrate1 == null)
		{
			userrate1 = "0";
		}
		
		if (totaluser2 == null)
		{
			totaluser2 = "0";
		}
		
		if (totalcount2 == null)
		{
			totalcount2 = "0";
		}
		
		if (userrate2 == null)
		{
			userrate2 = "0";
		}
		
			
		league1.setRating(Float.parseFloat(userrate1));
		league1.setTc(Float.parseFloat(totalcount1));
		league1.setCounter();
		league1.setUserNum(Float.parseFloat(totaluser1));
		league1.setAvgrate();
		
		if (league1.getAvgrate() == 0) {
			league1.baseUserNum(0);
		}
		
		league2.setRating(Float.parseFloat(userrate2));
		league2.setTc(Float.parseFloat(totalcount2));
		league2.setCounter();
		league2.setUserNum(Float.parseFloat(totaluser2));
		league2.setAvgrate();
		
		if (league2.getAvgrate() == 0) {
			league2.baseUserNum(0);
		}
			
			//System.out.println(league1.getTc());
			
			model.addAttribute("counting1", league1.getCount());
			model.addAttribute("number1", league1.getUserNum());
			model.addAttribute("avgrate1", league1.round(league1.getAvgrate()));
			
			model.addAttribute("counting2", league2.getCount());
			model.addAttribute("number2", league2.getUserNum());
			model.addAttribute("avgrate2", league2.round(league1.getAvgrate()));

		
		
		return "marking2";
	}
	
	@RequestMapping(value = "/marking3", method = RequestMethod.GET)
	public String marking (HttpServletRequest req, Model model) {
		logger.info("Now in marking3 page");
		
		rating league1 = new rating();
		rating league2 = new rating();

		
		String userrate1 = req.getParameter("userrate1");
		String totalcount1 = req.getParameter("totalcount1");
		String totaluser1 = req.getParameter("totaluser1");
		
		String userrate2 = req.getParameter("userrate2");
		String totalcount2 = req.getParameter("totalcount2");
		String totaluser2 = req.getParameter("totaluser2");
		
		//
		
		if (totaluser1 == null)
		{
			totaluser1 = "0";
		}
		
		if (totalcount1 == null)
		{
			totalcount1 = "0";
		}
		
		if (userrate1 == null)
		{
			userrate1 = "0";
		}
		
		if (totaluser2 == null)
		{
			totaluser2 = "0";
		}
		
		if (totalcount2 == null)
		{
			totalcount2 = "0";
		}
		
		if (userrate2 == null)
		{
			userrate2 = "0";
		}
		
			
		league1.setRating(Float.parseFloat(userrate1));
		league1.setTc(Float.parseFloat(totalcount1));
		league1.setCounter();
		league1.setUserNum(Float.parseFloat(totaluser1));
		league1.setAvgrate();
		
		if (league1.getAvgrate() == 0) {
			league1.baseUserNum(0);
		}
		
		league2.setRating(Float.parseFloat(userrate2));
		league2.setTc(Float.parseFloat(totalcount2));
		league2.setCounter();
		league2.setUserNum(Float.parseFloat(totaluser2));
		league2.setAvgrate();
		
		if (league2.getAvgrate() == 0) {
			league2.baseUserNum(0);
		}
			
			
			//System.out.println(league1.getTc());
			
			model.addAttribute("counting1", league1.getCount());
			model.addAttribute("number1", league1.getUserNum());
			model.addAttribute("avgrate1", league1.round(league1.getAvgrate()));
			
			model.addAttribute("counting2", league2.getCount());
			model.addAttribute("number2", league2.getUserNum());
			model.addAttribute("avgrate2", league2.round(league1.getAvgrate()));

		
		
		return "marking3";
	}
}