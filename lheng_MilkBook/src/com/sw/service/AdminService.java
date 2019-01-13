package com.sw.service;

import java.util.List;

import com.sw.dao.AdminDao;
import com.sw.dao.UserDao;
import com.sw.entity.Admin;
import com.sw.entity.User;

public class AdminService implements BaseService {
	AdminDao dao = new AdminDao();
	@Override
	public Object findById(Object t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Admin> selectUser(Admin user){
		return dao.selectUser(user);
	}

	
}
