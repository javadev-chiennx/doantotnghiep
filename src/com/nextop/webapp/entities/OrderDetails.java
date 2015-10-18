package com.nextop.webapp.entities;

public class OrderDetails implements java.io.Serializable {

	private static final long serialVersionUID = -6954414247172126870L;
	private int orderDetailsId;
	private int orderId;
	private int productId;
	private byte quantity;
	private float price;
	private Float totalMoney;
	private String unit;

	public OrderDetails() {
		super();
	}

	public OrderDetails(int orderDetailsId, int orderId, int productId,
			byte quantity, float price, Float totalMoney, String unit) {
		super();
		this.orderDetailsId = orderDetailsId;
		this.orderId = orderId;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.totalMoney = totalMoney;
		this.unit = unit;
	}

	public int getOrderDetailsId() {
		return this.orderDetailsId;
	}

	public void setOrderDetailsId(int orderDetailsId) {
		this.orderDetailsId = orderDetailsId;
	}

	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public byte getQuantity() {
		return this.quantity;
	}

	public void setQuantity(byte quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Float getTotalMoney() {
		return this.totalMoney;
	}

	public void setTotalMoney(Float totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

}
