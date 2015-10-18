package com.nextop.webapp.entities;

// Generated May 18, 2015 8:02:58 AM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * StaffDAO generated by hbm2java
 */
public class Staff implements java.io.Serializable {

	private static final long serialVersionUID = -2702821251844952832L;
	private Integer staffId;
	private int countryId;
	private String fullname;
	private String username;
	private String password;
	private String idCardNumber;
	private Date birthDate;
	private String address;
	private String email;
	private String phone;
	private String image;
	private Boolean isAdmin;

	public Staff() {
	}

	public Staff(int countryId, String fullname, String address) {
		this.countryId = countryId;
		this.fullname = fullname;
		this.address = address;
	}

	public Staff(Integer staffId, int countryId, String fullname,
			String username, String password, String idCardNumber,
			Date birthDate, String address, String email, String phone,
			String image, Boolean isAdmin) {
		this.staffId = staffId;
		this.countryId = countryId;
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.idCardNumber = idCardNumber;
		this.birthDate = birthDate;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.image = image;
		this.isAdmin = isAdmin;
	}

	public Integer getStaffId() {
		return this.staffId;
	}

	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}

	public int getCountryId() {
		return this.countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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

	public String getIdCardNumber() {
		return this.idCardNumber;
	}

	public void setIdCardNumber(String idCardNumber) {
		this.idCardNumber = idCardNumber;
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

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public Boolean getIsAdmin() {
		return this.isAdmin;
	}

	public void setIsAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

}
