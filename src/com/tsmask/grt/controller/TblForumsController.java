package com.tsmask.grt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.tsmask.grt.pojo.TblForums;
import com.tsmask.grt.pojo.TblPost;
import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblForumsService;
import com.tsmask.grt.service.TblPostService;
import com.tsmask.grt.service.TblReplyService;
import com.tsmask.grt.service.TblUserService;

/**
 * TblForumsController 版块-API控制器
 * 
 * @author tsmak
 *
 */
@Controller
@SessionAttributes({"tfr","countFPost","tpB","ltutpb"})
public class TblForumsController {
	
	@Autowired
	private TblForumsService tblForumsService;
	@Autowired
	private TblPostService tblPostService;
	@Autowired
	private TblUserService tblUserService;
	@Autowired
	private TblReplyService tblReplyService;
	
	//forum
	@RequestMapping("/forums")
	public String Forums(HttpServletRequest request, Model model) {	
		//forum
		List<TblForums> tf = tblForumsService.findAll();
		model.addAttribute("tf", tf);
		//post list
		List<Integer> countFPost = new ArrayList<Integer>();
		for(TblForums listf:tf) {
			List<TblPost> tp = tblPostService.findByForumID(listf.getId());
			countFPost.add(tp.size());
		}
		model.addAttribute("countFPost", countFPost);
		//post count
		long countPost = tblPostService.count();
		model.addAttribute("countPost", countPost);
		//member count
		long countUser = tblUserService.count();
		model.addAttribute("countUser", countUser);
		//reply count
		long countReply = tblReplyService.count();
		model.addAttribute("countReply", countReply);
		return "JspPages/forums";
	}

	
	@RequestMapping("/")
	public String index(HttpServletRequest request, Model model) {
		//forum
				List<TblForums> tf = tblForumsService.findAll();
				model.addAttribute("tf", tf);
				//post list
				List<Integer> countFPost = new ArrayList<Integer>();
				for(TblForums listf:tf) {
					List<TblPost> tp = tblPostService.findByForumID(listf.getId());
					countFPost.add(tp.size());
				}
				model.addAttribute("countFPost", countFPost);
				//post count
				long countPost = tblPostService.count();
				model.addAttribute("countPost", countPost);
				//member count
				long countUser = tblUserService.count();
				model.addAttribute("countUser", countUser);
				//reply count
				long countReply = tblReplyService.count();
				model.addAttribute("countReply", countReply);
				return "JspPages/forums";
//		ModelAndView mav = new ModelAndView();
//		//所有版块
//		List<TblForums> tfr = tblForumsService.findAll();
//		mav.addObject("tfr", tfr);
//		//得到版块对应的帖子列表
//		List<Integer> countFPost = new ArrayList<Integer>();
//		for(TblForums listf:tfr) {
//			List<TblPost> tpr = tblPostService.findByForumID(listf.getId());
//			countFPost.add(tpr.size());
//		}
//		mav.addObject("countFPost", countFPost);
//		//所有帖子最大浏览量升序
//		List<TblPost> tpB = tblPostService.findByPageViewsDESC();
//		mav.addObject("tpB", tpB);
//		//通过帖子读取用户
//		List<TblUser> listtu = new ArrayList<TblUser>();
//		for(TblPost list:tpB) {
//			TblUser tu = tblUserService.findByID(list.getUserId());
//			listtu.add(tu);
//		}
//		mav.addObject("ltutpb", listtu);
//		mav.setViewName("forward: main.jsp");
//		return mav;
	}
	
	//Streams
	   @RequestMapping("/streams")
	   public String Streams(HttpServletRequest request, Model model) { 
	    return "JspPages/streams";
	   }
	//index
	@RequestMapping("/index{id}")
	public String PageOver(Model model,@PathVariable Integer id) {
		int pageover;
		if(id==1) {
			pageover = 0;
		}else {
			pageover = 4*id-4;
		}
		model.addAttribute("pageover", pageover);
		model.addAttribute("id", id);
		return "forward:/";
	}
	
}
