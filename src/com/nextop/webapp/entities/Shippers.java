package com.nextop.webapp.entities;

import java.util.Date;

public class Shippers implements java.io.Serializable {

	private static final long serialVersionUID = -3947358243569469136L;
	private Integer shipperId;
	private Integer countryId;
	private String shipperName;
	private Date birthDate;
	private String address;
	private String phone;
	private String image;

	public Shippers() {
	}

	public Shippers(String shipperName) {
		this.shipperName = shipperName;
	}

	public Shippers(Integer countryId, String shipperName, Date birthDate,
			String address, String phone, String image) {
		this.countryId = countryId;
		this.shipperName = shipperName;
		this.birthDate = birthDate;
		this.address = address;
		this.phone = phone;
		this.image = image;
	}

	public Integer getShipperId() {
		return this.shipperId;
	}

	public void setShipperId(Integer shipperId) {
		this.shipperId = shipperId;
	}

	public Integer getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	public String getShipperName() {
		return this.shipperName;
	}

	public void setShipperName(String shipperName) {
		this.shipperName = shipperName;
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

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
