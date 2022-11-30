package com.korea.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ReplyDAO;
import vo.ReplyVO;

@Controller
public class ReplyController {
	
	@Autowired
	HttpServletRequest request;
	
	ReplyDAO replyDao;
	
	public ReplyController(ReplyDAO replyDao) {
		this.replyDao = replyDao;
	}
	
	@RequestMapping("insertReply.do")
	@ResponseBody
	public String insertReply(ReplyVO vo) {
		
		int res = replyDao.insertReply(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	@RequestMapping("deleteReply")
	@ResponseBody
	public String deleteReply(ReplyVO vo) {
		int res = replyDao.deleteReply(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	
	
	
}
