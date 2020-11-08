package com.tsmask.grt.pojo;

import java.util.Date;

/**
 * TblAdmin 管理员表实体
 * 
 * @author tsmask
 *
 */
public class TblAdmin {
	private Integer id;

	private String admin;

	private String password;

	private Integer loginCount;

	private String loginIp;

	private Date loginTime;

	private Date loginOldTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
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
		return "TblAdmin [id=" + id + ", admin=" + admin + ", password=" + password + ", loginCount=" + loginCount
				+ ", loginIp=" + loginIp + ", loginTime=" + loginTime + ", loginOldTime=" + loginOldTime + "]";
	}

}