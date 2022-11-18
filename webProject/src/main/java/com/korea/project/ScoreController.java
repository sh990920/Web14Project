package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import dao.ScoreDAO;

public class ScoreController {
	
	@Autowired
	HttpServletRequest request;
	
	ScoreDAO scoreDao;
	
	public ScoreController(ScoreDAO scoreDao) {
		this.scoreDao = scoreDao;
	}
	
}
