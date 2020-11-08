package com.tsmask.grt.pojo;

/**
 * TblForums 版块表实体
 * 
 * @author tsmask
 *
 */
public class TblForums {

	private Integer id;

	private String title;

	private String info;

	private String logo;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	@Override
	public String toString() {
		return "TblForums [id=" + id + ", title=" + title + ", info=" + info + ", logo=" + logo + "]";
	}

}