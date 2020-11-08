package com.tsmask.grt.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tsmask.grt.pojo.TblForums;
import com.tsmask.grt.pojo.TblPost;
import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblForumsService;
import com.tsmask.grt.service.TblPostService;
import com.tsmask.grt.service.TblUserService;

/**
 * TblPostController 帖子-API控制器
 * 
 * @author tsmak
 *
 */
@Controller
public class TblPostController {
	
	@Autowired
	private TblForumsService tblForumsService;
	@Autowired
	private TblPostService tblPostService;
	@Autowired
	private TblUserService tblUserService;
	
	//forum post
	@RequestMapping(value= {"/posts{forumsId}"})
	public String Posts(Model model,@PathVariable Integer forumsId) {
		//forum
		TblForums tf = tblForumsService.findByID(forumsId);
		model.addAttribute("tf", tf);
		//forum post
		List<TblPost> tps = tblPostService.findByForumID(forumsId);
		model.addAttribute("listPost", tps);
		//post user
		List<TblUser> listtu = new ArrayList<TblUser>();
		for(TblPost list:tps) {
			TblUser tu = tblUserService.findByID(list.getUserId());
			listtu.add(tu);
		}
		model.addAttribute("listUser", listtu);
		return "JspPages/posts";
	}
	

	@RequestMapping("/posts{forumid}/{id}")
	public String PageOver(Model model,@PathVariable Integer forumid, @PathVariable Integer id) {
		int pageover;
		if(id==1) {
			pageover = 0;
		}else {
			pageover = 10*id-10;
		}
		model.addAttribute("pageover", pageover);
		model.addAttribute("id", id);
		return "forward:/posts"+forumid;
	}
	
	//to post
	@RequestMapping("/posts{forumid}/reply{postid}")
	public String PageOverPost(Model model,@PathVariable Integer forumid, @PathVariable Integer postid) {
		return "forward:/reply"+postid;
	}

}
