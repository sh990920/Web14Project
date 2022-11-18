package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import dao.UserSelectDAO;

@Controller
public class UserSelectController {
	
	@Autowired
	HttpServletRequest request;
	
	UserSelectDAO userSelectDao;
	
	public UserSelectController(UserSelectDAO userSelectDao) {
		this.userSelectDao = userSelectDao;
	}

}
