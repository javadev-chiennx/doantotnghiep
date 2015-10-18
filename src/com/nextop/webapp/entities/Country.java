package com.nextop.webapp.entities;

public class Country implements java.io.Serializable {

	private static final long serialVersionUID = 5342424503169502774L;
	private Integer countryId;
	private String countryCode;
	private String countryName;

	public Country() {
	}

	public Country(String countryName) {
		this.countryName = countryName;
	}

	public Country(String countryCode, String countryName) {
		this.countryCode = countryCode;
		this.countryName = countryName;
	}

	public Integer getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	public String getCountryCode() {
		return this.countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public String getCountryName() {
		return this.countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

}
