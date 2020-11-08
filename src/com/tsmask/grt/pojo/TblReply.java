package com.tsmask.grt.pojo;

import java.util.Date;

/**
 * TblReply 帖子回复表实体
 * 
 * @author tsmask
 *
 */
public class TblReply {
	private Integer id;

	private Integer postId;

	private Integer userId;

	private Integer floor;

	private Date time;

	private String content;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getFloor() {
		return floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "TblReply [id=" + id + ", postId=" + postId + ", userId=" + userId + ", floor=" + floor + ", time="
				+ time + ", content=" + content + "]";
	}

}