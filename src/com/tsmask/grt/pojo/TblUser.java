package com.tsmask.grt.pojo;

import java.util.Date;

/**
 * TblUser 用户信息表实体
 * 
 * @author tsmask
 *
 */
public class TblUser {

	private Integer id;

	private String password;

	private String username;

	private String phone;

	private String qq;

	private String email;

	private String sex;

	private String birthday;

	private String address;

	private String avatar;

	private String qianming;

	private Date registrTime;

	private String registrIp;

	private Integer signinNum;

	private Integer signinPoints;

	private Integer exp;

	private Integer grade;

	private String positi;

	private String loginIp;

	private Date loginTime;

	private Date loginOldTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getQianming() {
		return qianming;
	}

	public void setQianming(String qianming) {
		this.qianming = qianming;
	}

	public Date getRegistrTime() {
		return registrTime;
	}

	public void setRegistrTime(Date registrTime) {
		this.registrTime = registrTime;
	}

	public String getRegistrIp() {
		return registrIp;
	}

	public void setRegistrIp(String registrIp) {
		this.registrIp = registrIp;
	}

	public Integer getSigninNum() {
		return signinNum;
	}

	public void setSigninNum(Integer signinNum) {
		this.signinNum = signinNum;
	}

	public Integer getSigninPoints() {
		return signinPoints;
	}

	public void setSigninPoints(Integer signinPoints) {
		this.signinPoints = signinPoints;
	}

	public Integer getExp() {
		return exp;
	}

	public void setExp(Integer exp) {
		this.exp = exp;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public String getPositi() {
		return positi;
	}

	public void setPositi(String positi) {
		this.positi = positi;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Date getLoginOldTime() {
		return loginOldTime;
	}

	public void setLoginOldTime(Date loginOldTime) {
		this.loginOldTime = loginOldTime;
	}

	@Override
	public String toString() {
		return "TblUser [id=" + id + ", password=" + password + ", username=" + username + ", phone=" + phone + ", qq="
				+ qq + ", email=" + email + ", sex=" + sex + ", birthday=" + birthday + ", address=" + address
				+ ", avatar=" + avatar + ", qianming=" + qianming + ", registrTime=" + registrTime + ", registrIp="
				+ registrIp + ", signinNum=" + signinNum + ", signinPoints=" + signinPoints + ", exp=" + exp
				+ ", grade=" + grade + ", positi=" + positi + ", loginIp=" + loginIp + ", loginTime=" + loginTime
				+ ", loginOldTime=" + loginOldTime + "]";
	}

}