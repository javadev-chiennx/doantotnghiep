package com.nextop.webapp.dao;

import java.util.List;

import com.nextop.webapp.entities.Product;

public interface ProductsDAO extends BaseDAO<Product> {
	public List<Product> findByPrice();
}
