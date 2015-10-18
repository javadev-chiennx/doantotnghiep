package com.nextop.webapp.dao;

import java.util.List;

public interface BaseDAO<T> {
	public List<T> listAll();

	public void update(Integer integer);

	public List<T> findByName(String name);

	public T findById(Integer integer);
}
