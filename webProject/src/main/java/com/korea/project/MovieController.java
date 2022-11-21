package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MovieDAO;
import util.Comm;

@Controller
public class MovieController {
	
	@Autowired
	HttpServletRequest request;
	
	MovieDAO movieDao;
	
	public MovieController(MovieDAO movieDao) {
		this.movieDao = movieDao;
	}
	
	@RequestMapping(value = {"/", "beforeLogin.do"})
	public String main() {
		return Comm.MOVIEPATH + "beforeLogin.jsp";
	}
	
	@RequestMapping(value = {"/", "afterLogin.do"})
	public String Main() {
		return Comm.MOVIEPATH + "afterLogin.jsp";
	}
	
	
}
