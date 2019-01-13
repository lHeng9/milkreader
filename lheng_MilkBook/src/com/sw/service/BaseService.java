package com.sw.service;

import java.util.List;

public interface BaseService<T> {
	public T findById(T t);
	public List<T> findAll();
}
