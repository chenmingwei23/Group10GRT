package com.tsmask.grt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tsmask.grt.pojo.TblForums;
import com.tsmask.grt.pojo.TblPost;
import com.tsmask.grt.pojo.TblReply;
import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblForumsService;
import com.tsmask.grt.service.TblPostService;
import com.tsmask.grt.service.TblReplyService;
import com.tsmask.grt.service.TblUserService;

/**
 * TblReplyController 回复-API控制器
 * 
 * @author tsmak
 *
 */
@Controller
public class TblReplyController {
	
	@Autowired
	private TblReplyService tblReplyService;
	@Autowired
	private TblPostService tblPostService;
	@Autowired
	private TblUserService tblUserService;
	@Autowired
	private TblForumsService tblForumsService;
	
	//post
	@RequestMapping("/reply{postid}")
	public String Reply(Model model,@PathVariable Integer postid) {	
		//reply
		List<TblReply> trs = tblReplyService.findByPostID(postid);
		model.addAttribute("listtr", trs);
		//reply user
		List<TblUser> tus = new ArrayList<TblUser>();
		for(TblReply listtr:trs) {
			TblUser tur = tblUserService.findByID(listtr.getUserId());
			tus.add(tur);
		}
		model.addAttribute("listtu", tus);
		//post owner
		TblPost tp = tblPostService.findByID(postid);
		tp.setViews(tp.getViews()+1);
		//view +1
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("views", tp.getViews());
		map.put("id", postid);
		tblPostService.updateByMapSelective(map);
		model.addAttribute("tp",tp);
		//forum
		TblForums tf = tblForumsService.findByID(tp.getForumId());
		model.addAttribute("tf", tf);
		//forum owner
		TblUser tu = tblUserService.findByID(tp.getUserId());
		model.addAttribute("tu", tu);
		return "JspPages/reply";
	}
	
	//reply insert
	@RequestMapping("/replypost")
	public String ReplyPost(Model model, TblReply tblReply) {
		//帖子回帖量+1
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("regens", tblReply.getFloor());
		map.put("id", tblReply.getPostId());
		tblPostService.updateByMapSelective(map);
		//帖子回复+1
		int row = tblReplyService.insertSelective(tblReply);
		if(row>0) {
			model.addAttribute("message", "Reply Success");
		}else {
			model.addAttribute("message", "Reply Fail");
		}
//		return "redirect:forums";
		return "forward:/reply"+tblReply.getPostId();
	}
	
	//发新帖页面
	@RequestMapping("/newspost")
	public String NewsPost(Model model) {
		List<TblForums> listtf = tblForumsService.findAll();
		model.addAttribute("listtf", listtf);
		return "JspPages/newspost";
	}
	
	//发新帖的点击提交插入数据库
	@RequestMapping("/donewspost")
	public String DoNewsPost(Model model, TblPost tblPost) {
		int row = tblPostService.insertSelective(tblPost);
		if(row>0) {
			model.addAttribute("message", "Post success");
			return "forward:/posts"+tblPost.getForumId();
		}else {
			model.addAttribute("message", "Post Fail");
		}
		return "forward:newspost";
	}

	//帖子内容分页
	@RequestMapping("/reply{postid}/{id}")
	public String PageOver(Model model,@PathVariable Integer postid, @PathVariable Integer id) {
		int pageover;
		if(id==1) {
			pageover = 0;
		}else {
			pageover = 10*id-10;
		}
		model.addAttribute("pageover", pageover);
		model.addAttribute("id", id);
		return "forward:/reply"+postid;
	}
}
