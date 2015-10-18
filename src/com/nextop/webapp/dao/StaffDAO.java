package com.nextop.webapp.dao;

import com.nextop.webapp.entities.Staff;

public interface StaffDAO extends BaseDAO<Staff> {

	public Staff loginAdmin(String username, String password, Boolean isAdmin);
	
}
