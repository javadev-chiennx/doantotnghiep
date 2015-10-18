package com.nextop.webapp.entities;

import java.util.Date;

public class Customer implements java.io.Serializable {
	private static final long serialVersionUID = -6040027920172534153L;
	private Integer customerId;
	private int countryId;
	private String customerName;
	private String username;
	private String password;
	private Date birthDate;
	private String address;
	private String phone;
	private Boolean isOnline;
	private int currentPage;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public Customer() {
	}

	public Customer(int countryId, String customerName, String username,
			String password) {
		this.countryId = countryId;
		this.customerName = customerName;
		this.username = username;
		this.password = password;
	}

	public Customer(int countryId, String customerName, String username,
			String password, Date birthDate, String address, String phone,
			Boolean isOnline) {
		this.countryId = countryId;
		this.customerName = customerName;
		this.username = username;
		this.password = password;
		this.birthDate = birthDate;
		this.address = address;
		this.phone = phone;
		this.isOnline = isOnline;
	}

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public int getCountryId() {
		return this.countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Boolean getIsOnline() {
		return this.isOnline;
	}

	public void setIsOnline(Boolean isOnline) {
		this.isOnline = isOnline;
	}

}
