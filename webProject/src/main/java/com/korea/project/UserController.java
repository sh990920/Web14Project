package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import dao.UserDAO;

@Controller
public class UserController {
	
	@Autowired
	HttpServletRequest request;
	
	
	UserDAO userDao;
	
	public UserController(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	
	
	
	
}
