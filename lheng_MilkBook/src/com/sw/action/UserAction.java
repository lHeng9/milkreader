package com.sw.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sw.entity.User;
import com.sw.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven{
	UserService us = new UserService();
	User user = new User();
	List<User> users = new ArrayList<User>();
	
	public String mainUser() {
		return "mainUserOK";
	}
	public String logintoUser() {
		return "logintoUserOK";
	}
	public String registerUser() {
		us.insertUser(user);
		return "registerUserOK";
	}
	public String loginUser() {
		users = us.selectUser(user);
		Iterator it = users.iterator();
		if(it.hasNext()) {
			User user1 = (User) it.next();
			ActionContext.getContext().getSession().put("username", user1.getName());
			ActionContext.getContext().getSession().put("userid", user1.getId());
			System.out.println("DBUserid="+user1.getId());
			return "loginUserOK";			
		}else {
			return "loginUserFalse";
		}
	}
	public String showAllUser() {
		users = us.findAll();
		return "showAllOK";
	}
	
	public String updateUser() {
		return "updateUserOK";
	}
	
	public User getModel() {
		return user;
	}
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	
}
