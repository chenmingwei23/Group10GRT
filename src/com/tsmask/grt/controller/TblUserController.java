package com.tsmask.grt.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.tsmask.grt.pojo.TblUser;
import com.tsmask.grt.service.TblUserService;

/**
 * TblUserController 用户-API控制器
 * 
 * @author tsmak
 *
 */
@Controller
@SessionAttributes("user")
public class TblUserController {
	
	@Autowired
	private TblUserService tblUserService;
	
	//login
	@RequestMapping("/login")
	public String Login() {
		return "JspPages/login";
	}
	
	//score
	@RequestMapping("/score")
	public String score() {
		return "JspPages/score";
	}
	
	//profile set
	@RequestMapping("/userdata")
	public String UserData() {
		return "JspPages/userdata";
	}
	
	//profile
	@RequestMapping("/userinfo")
	public String UserInfo() {
		return "JspPages/userinfo";
	}
	
	//other info
	@RequestMapping("/otherinfo{id}/{forumid}")
	public String OtherInfo(Model model,@PathVariable Integer id,@PathVariable Integer forumid) {
		TblUser tu = tblUserService.findByID(id);
		model.addAttribute("other", tu);
		model.addAttribute("forumid", forumid);
		return "JspPages/otherinfo";
	}
	
	//experience
	@RequestMapping("/signin{id}")
	public String Signin(Model model, @PathVariable Integer id) {
		//random get
		Random rand = new Random();
		int point = rand.nextInt(10) + 1;
		int exp = rand.nextInt(20) + 1;
		//get user info
		TblUser tu = tblUserService.findByID(id);
		//update user info
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("signinNum", tu.getSigninNum()  + 1);
		map.put("signinPoints", tu.getSigninPoints() + point);
		map.put("exp", tu.getExp() + exp);
		map.put("id", tu.getId());
		if(tu.getExp()>=156) {
			map.put("grade", tu.getGrade() + 1);
			map.put("positi", "rokkie");
		}
		int row = tblUserService.updateByMapSelective(map);
		if(row>0) {
			model.addAttribute("user", tblUserService.findByID(id));
			String message = "Signin Success， Credits：<strong>"+point+"</strong>，Experience<strong>"+exp+"</strong>";
			model.addAttribute("message", message);
		}else {
			model.addAttribute("message", "NO!");
		}
		return "forward:/";
	}
	
	//用户登出提交链接
	@RequestMapping("/userlogout{id}")
	public String OutLogin(HttpSession session,SessionStatus sessionStatus,@PathVariable Integer id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("loginOldTime", new Date());
		tblUserService.updateByMapSelective(map);
		session.removeAttribute("user");
		sessionStatus.setComplete();
		return "redirect:login";
	}
	
	//用户登录提交链接
	@RequestMapping("/userlogin")
	public String UserLogin(Model model,TblUser tblUser) {	
		TblUser tu = tblUserService.findByUserNameAndPassword(tblUser);
		if(tu==null) {model.addAttribute("message", "Wrong Password");return "JspPages/login";}
		tu.setLoginOldTime(tu.getLoginTime());
		tu.setLoginTime(tblUser.getLoginTime());
		tu.setLoginIp(tblUser.getLoginIp());
		int row = tblUserService.updateByUserSelective(tu);
		if(row>0) {
			model.addAttribute("user", tu);
			return "JspPages/userinfo";
		}else {
			model.addAttribute("message", "error");
		}
		return "JspPages/login";
	}
	
	//注册提交链接插入数据
	@RequestMapping("/userregister")
	public String UserRegister(Model model,TblUser tblUser,@RequestParam("repassword") String repwd) {	
		TblUser tu = tblUserService.findByUserName(tblUser.getUsername());
		if(tu!=null) {
			model.addAttribute("message", "User Exsist");
			return "JspPages/login";
		}
		if(tblUser.getUsername().isEmpty() || "".equals(tblUser.getUsername())) {
			model.addAttribute("message", "Username Not null");
			return "JspPages/login";
		}else if(tblUser.getPassword().isEmpty() || !tblUser.getPassword().equals(repwd)) {
			model.addAttribute("message", "Check Again");
			return "JspPages/login";
		}else if(tblUser.getEmail().contains("@")) {
			int row = tblUserService.insertSelective(tblUser);
			if(row>0) {
				model.addAttribute("message", "Success");
				return "JspPages/login";
			}else {
				model.addAttribute("message", "Fail");
			}
		}
		return "JspPages/login";
	}
	
	//忘记密码提交链接
	@RequestMapping("/userforget")
	public String UserForget(Model model,TblUser tblUser,@RequestParam("oldpwd") String oldpwd,@RequestParam("newpwd") String newpwd) {
		TblUser tu = tblUserService.findByUserName(tblUser.getUsername());
		List<TblUser> tulist = tblUserService.findByEmail(tblUser.getEmail());
		if(tu==null) {model.addAttribute("message", "Username not exsistt");return "JspPages/login";}
		else if(tulist.isEmpty()) {model.addAttribute("message", "Input correct E-mail");return "JspPages/login";}
		else if(tu.getPassword().equals(oldpwd)) {
			tu.setPassword(newpwd);
			int row = tblUserService.updateByUserSelective(tu);
			if(row>0) {
				model.addAttribute("message", "Change Success");
				return "JspPages/login";
			}else {
				model.addAttribute("message", "Change Fail");
			}
		}
		return "JspPages/login";
	}
	
	//用户头像提交链接
	@RequestMapping(value="/updateAvatar",method=RequestMethod.POST)
	public String UpdateAvatar(Model model,TblUser tblUser, MultipartFile filed) throws IllegalStateException, IOException {
		//上传的图片名称
		String originalFilename = filed.getOriginalFilename();
		if(!filed.isEmpty()) {
			//存储路径
			String pic_path = "D:\\bbs\\";
			//新的图片名称
			String newfilename = "/user/"+tblUser.getId()+originalFilename.substring(originalFilename.lastIndexOf("."));
			//图片写入
			File file = new File(pic_path+newfilename);
			filed.transferTo(file);
			//名称写到Image实体
			tblUser.setAvatar("/bbs"+newfilename);			
		}
		int row = tblUserService.updateByUserSelective(tblUser);
		if(row>0) {
			model.addAttribute("user", tblUserService.findByID(tblUser.getId()));
			model.addAttribute("message", "Success");
		}else {
			model.addAttribute("message", "Fail");
		}
		return "JspPages/userdata";
	}

	
	//用户修改信息提交链接
	@RequestMapping("/updateData")
	public String UpdateData(Model model,TblUser tblUser) {
		int row = tblUserService.updateByUserSelective(tblUser);
		if(row>0) {
			model.addAttribute("user", tblUserService.findByID(tblUser.getId()));
			model.addAttribute("message", "Success");
		}else {
			model.addAttribute("message", "Fail");
		}
		return "JspPages/userdata";
	}
	
}
