package com.nextop.webapp.entities;

import java.util.Date;

public class Orders implements java.io.Serializable {

	private static final long serialVersionUID = -1042880045120341724L;
	private Integer orderId;
	private int customerId;
	private int staffId;
	private Date establishDate;
	private String payType;
	private Integer shipperId;

	public Orders() {
	}

	public Orders(int customerId, int staffId, Date establishDate) {
		this.customerId = customerId;
		this.staffId = staffId;
		this.establishDate = establishDate;
	}

	public Orders(int customerId, int staffId, Date establishDate,
			String payType, Integer shipperId) {
		this.customerId = customerId;
		this.staffId = staffId;
		this.establishDate = establishDate;
		this.payType = payType;
		this.shipperId = shipperId;
	}

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public int getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getStaffId() {
		return this.staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public Date getEstablishDate() {
		return this.establishDate;
	}

	public void setEstablishDate(Date establishDate) {
		this.establishDate = establishDate;
	}

	public String getPayType() {
		return this.payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public Integer getShipperId() {
		return this.shipperId;
	}

	public void setShipperId(Integer shipperId) {
		this.shipperId = shipperId;
	}

}
