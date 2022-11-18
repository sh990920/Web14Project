package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.UserDAO;
import util.Comm;
import vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	HttpServletRequest request;
	
	
	UserDAO userDao;
	
	public UserController(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	//로그인 페이지로 이동
	@RequestMapping(value = {"/loginForm.do"})
	public String login() {
		return Comm.PATH + "user/login.jsp";
	}
	
	
	
	//회원가입 페이지로 이동
	@RequestMapping(value = {"signUpForm.do"})
	public String join() {
		return Comm.PATH + "user/signUp.jsp";
	}
	
	//회원가입 
	@RequestMapping("signUp.do")
	public String signUp(UserVO vo) {
		System.out.println(vo.getUserId());
		System.out.println(vo.getUserName());
		return "redirect:list.do";
	}
	
	
}
