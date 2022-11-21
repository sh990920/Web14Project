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
	public String loginForm() {
		return Comm.USERPATH + "login.jsp";
	}
	
	//로그인
	@RequestMapping("login.do")
	public String login(UserVO vo) {
		int res = userDao.login(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	
	
	//회원가입 페이지로 이동
	@RequestMapping(value = {"signUpForm.do"})
	public String join() {
		return Comm.USERPATH + "signUp.jsp";
	}
	
	//회원가입 
	@RequestMapping("signUp.do")
	public String signUp(UserVO vo) {
		//Dao 내부의 회원가입 메서드
		int res = userDao.signUp(vo);
		
		return "redirect:beforeLogin.do";
	}
	
	
	
	
	
	
}
