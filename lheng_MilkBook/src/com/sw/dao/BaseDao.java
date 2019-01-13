package com.sw.dao;

import java.util.List;

import com.sw.entity.Book;

public interface BaseDao<T>{
	public T findById(T t);
	public List<T> findAll();
}
