package com.sw.service;

import java.util.List;

import com.sw.dao.UserDao;
import com.sw.entity.User;

public class UserService implements BaseService {
	UserDao dao = new UserDao();
	@Override
	public Object findById(Object t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}
	
	//ÃÌº””√ªß
	public void insertUser(User user) {
		dao.insertUser(user);
	}
	public List<User> selectUser(User user){
		return dao.selectUser(user);
	}

	
}
