package com.nextop.webapp.entities;

import java.util.Date;

public class Feedaback implements java.io.Serializable {

	private static final long serialVersionUID = -7321906597472297095L;
	private Integer feedId;
	private Integer customerId;
	private String content;
	private Date createDate;

	public Feedaback() {
	}

	public Feedaback(Integer customerId, String content, Date createDate) {
		this.customerId = customerId;
		this.content = content;
		this.createDate = createDate;
	}

	public Integer getFeedId() {
		return this.feedId;
	}

	public void setFeedId(Integer feedId) {
		this.feedId = feedId;
	}

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
