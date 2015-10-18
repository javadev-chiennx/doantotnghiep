package com.nextop.webapp.entities;

import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import com.opensymphony.xwork2.validator.annotations.IntRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;

public class Supplier implements java.io.Serializable {

	private static final long serialVersionUID = -4871162366544493201L;
	private Integer supplierId;
	private int countryId;
	private String supplierName;
	private String address;
	private String email;
	private String phone;
	private String taxCode;

	public Supplier() {
	}

	public Supplier(int countryId, String supplierName, String address,
			String email, String phone, String taxCode) {
		this.countryId = countryId;
		this.supplierName = supplierName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.taxCode = taxCode;
	}

	public Integer getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	@IntRangeFieldValidator(message = "You must pormt a number !")
	public int getCountryId() {
		return this.countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	@RequiredStringValidator(message = "Suppeliers is not null !")
	public String getSupplierName() {
		return this.supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@EmailValidator(message = "Email is incorrect !")
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

	@IntRangeFieldValidator(message = "You must pormt a number !")
	public String getTaxCode() {
		return this.taxCode;
	}

	public void setTaxCode(String taxCode) {
		this.taxCode = taxCode;
	}

}
