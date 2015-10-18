package com.nextop.webapp.entities;

import java.util.Set;

public class Category implements java.io.Serializable {

	private static final long serialVersionUID = 3908802232784115632L;
	private Integer categoryId;
	private String categoryName;
	private String description;
	private Set<Product> setProducts;
	private Product product;

	public Category() {
	}

	public Category(String categoryName) {
		this.categoryName = categoryName;
	}

	public Category(String categoryName, String description) {
		this.categoryName = categoryName;
		this.description = description;
	}

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Product> getSetProducts() {
		return setProducts;
	}

	public void setSetProducts(Set<Product> setProducts) {
		this.setProducts = setProducts;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
