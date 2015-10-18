package com.nextop.webapp.entities;

import java.text.DecimalFormat;
import java.util.Date;

public class Product implements java.io.Serializable {

	private static final long serialVersionUID = 800143664869671833L;
	private Integer productId;
	private String productName;
	private int categoryId;
	private int supplierId;
	private Float purchasePrice;
	private Float salePrice;
	private Date productDate;
	private Short quantity;
	private String color;
	private String img;
	private String guaranteeTime;
	private Boolean status;
	private Boolean isSpecifial;
	private Category category;

	public Product() {
	}

	public String formatSalePrice() {
		DecimalFormat decimalFormat = new DecimalFormat("0.###");
		return decimalFormat.format(getSalePrice());
	}

	public Product(String productName, int categoryId, int supplierId) {
		this.productName = productName;
		this.categoryId = categoryId;
		this.supplierId = supplierId;
	}

	public Product(String productName, int categoryId, int supplierId,
			Float purchasePrice, Float salePrice, Date productDate,
			Short quantity, String color, String img, String guaranteeTime,
			Boolean status, Boolean isSpecifial) {
		this.productName = productName;
		this.categoryId = categoryId;
		this.supplierId = supplierId;
		this.purchasePrice = purchasePrice;
		this.salePrice = salePrice;
		this.productDate = productDate;
		this.quantity = quantity;
		this.color = color;
		this.img = img;
		this.guaranteeTime = guaranteeTime;
		this.status = status;
		this.isSpecifial = isSpecifial;
	}

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public Float getPurchasePrice() {
		return this.purchasePrice;
	}

	public void setPurchasePrice(Float purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public Float getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public Date getProductDate() {
		return this.productDate;
	}

	public void setProductDate(Date productDate) {
		this.productDate = productDate;
	}

	public Short getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Short quantity) {
		this.quantity = quantity;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getGuaranteeTime() {
		return this.guaranteeTime;
	}

	public void setGuaranteeTime(String guaranteeTime) {
		this.guaranteeTime = guaranteeTime;
	}

	public Boolean getStatus() {
		return this.status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Boolean getIsSpecifial() {
		return this.isSpecifial;
	}

	public void setIsSpecifial(Boolean isSpecifial) {
		this.isSpecifial = isSpecifial;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
