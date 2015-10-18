package com.nextop.webapp.dao;

import com.nextop.webapp.entities.Customer;

public interface CustomerDAO extends BaseDAO<Customer> {
	public Customer login(String username, String password);
}
