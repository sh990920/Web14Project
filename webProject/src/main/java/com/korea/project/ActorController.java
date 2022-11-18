package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import dao.ActorDAO;

@Controller
public class ActorController {
	
	@Autowired
	HttpServletRequest request;
	
	ActorDAO actorDao;
	
	public ActorController(ActorDAO actorDao) {
		this.actorDao = actorDao;
	}
	
	
}
