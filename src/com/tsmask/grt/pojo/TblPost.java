package com.tsmask.grt.pojo;

import java.util.Date;

/**
 * TblPost帖子表实体
 * 
 * @author tsmask
 *
 */
public class TblPost {
	private Integer id;

	private Integer forumId;

	private Integer userId;

	private String title;

	private String pic;

	private Date time;

	private Integer views;

	private Integer regens;

	private String content;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getForumId() {
		return forumId;
	}

	public void setForumId(Integer forumId) {
		this.forumId = forumId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public Integer getRegens() {
		return regens;
	}

	public void setRegens(Integer regens) {
		this.regens = regens;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "TblPost [id=" + id + ", forumId=" + forumId + ", userId=" + userId + ", title=" + title + ", pic="
				+ pic + ", time=" + time + ", views=" + views + ", regens=" + regens + ", content=" + content + "]";
	}

}