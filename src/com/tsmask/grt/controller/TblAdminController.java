package com.tsmask.grt.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.tsmask.grt.pojo.TblAdmin;
import com.tsmask.grt.pojo.TblPost;
import com.tsmask.grt.pojo.TblReply;
import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblAdminService;
import com.tsmask.grt.service.TblPostService;
import com.tsmask.grt.service.TblReplyService;
import com.tsmask.grt.service.TblUserService;

/**
 * TblAdminController 管理员-API控制器
 * 
 * @author tsmak
 *
 */
@Controller
@SessionAttributes("admin")
public class TblAdminController {
	
	@Autowired
	private TblPostService tblPostService;
	@Autowired
	private TblUserService tblUserService;
	@Autowired
	private TblReplyService tblReplyService;
	@Autowired
	private TblAdminService tblAdminService;
	
	
	//admin
	@RequestMapping("/admin")
	public String Admin(HttpSession session) {
		Object admin = session.getAttribute("admin");
		if(admin != null) {
			return "forward:/adminmanager";
		}
		return "JspPages/admin";
	}
	
	//admin logout
	@RequestMapping("/adminlogout{id}")
	public String OutLogin(HttpSession session,SessionStatus sessionStatus,@PathVariable Integer id) {
		TblAdmin tblAdmin = new TblAdmin();
		tblAdmin.setId(id);
		tblAdmin.setLoginOldTime(new Date());
		tblAdminService.updateByAdminSelective(tblAdmin);
		session.removeAttribute("admin");
		sessionStatus.setComplete(); 
		return "redirect:/admin";
	}
	
	//admin login
	@RequestMapping("/adminlogin")
	public String AdminService(Model model,TblAdmin tblAdmin) {
		TblAdmin ta = tblAdminService.findByAdminAndPassword(tblAdmin);
		if(ta==null) {model.addAttribute("message", "Admin Password wrong");return "JspPages/admin";}
		ta.setLoginOldTime(ta.getLoginTime());
		ta.setLoginCount(ta.getLoginCount() + 1);
		ta.setLoginTime(tblAdmin.getLoginTime());
		ta.setLoginIp(tblAdmin.getLoginIp());
		int row = tblAdminService.updateByAdminSelective(ta);
		if(row>0) {
			model.addAttribute("admin", ta);
			return "forward:/adminmanager";
		}else {
			model.addAttribute("message", "error");
		}
		return "JspPages/admin";
	}
	
	// admin page
	@RequestMapping("/adminmanager")
	public String Pic(Model model) {
		List<TblUser> tu = tblUserService.findAll();
		model.addAttribute("listtu", tu);
		List<TblPost> tp = tblPostService.findAll();
		model.addAttribute("listtp", tp);
		List<TblReply> tr = tblReplyService.findAll();
		model.addAttribute("listtr", tr);
		return "JspPages/adminmanager";
	}
	
	
	
}
