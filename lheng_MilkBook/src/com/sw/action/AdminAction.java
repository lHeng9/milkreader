package com.sw.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sw.entity.Admin;
import com.sw.entity.User;
import com.sw.service.AdminService;

public class AdminAction extends ActionSupport implements ModelDriven {
	Admin admin = new Admin();
	AdminService as = new AdminService();
	List<Admin> users = new ArrayList<Admin>();
	
	public String execute() {
		return "success";
	}
	public String showuserAdmin() {
		return "showuserOK";
	}
	public String loginAdmin() {
		users = as.selectUser(admin);
		Iterator it = users.iterator();
		if(it.hasNext()) {
			return "loginAdminOK";			
		}else {
			return "loginAdminFalse";
		}
	}
	public String insertbookAdmin() {
		return "insertbookOK";
	}
	public String showbookAdmin() {
		return "showbookOK";
	}
	
	
	public Admin getModel() {
		return admin;
	}

	
}
