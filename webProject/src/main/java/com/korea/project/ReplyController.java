package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import dao.ReplyDAO;

public class ReplyController {
	
	@Autowired
	HttpServletRequest request;
	
	ReplyDAO replyDao;
	
	public ReplyController(ReplyDAO replyDao) {
		this.replyDao = replyDao;
	}
	
}
