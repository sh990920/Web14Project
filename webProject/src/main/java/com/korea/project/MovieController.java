package com.korea.project;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MovieDAO;
import dao.ReplyDAO;
import dao.UserDAO;
import dao.UserSelectDAO;
import util.Comm;
import vo.MovieVO;
import vo.ReplyVO;
import vo.UserSelectVO;
import vo.UserVO;

@Controller
public class MovieController {
	
	@Autowired
	HttpServletRequest request;
	
	//세션 불러오기
	HttpSession session;
	
	MovieDAO movieDao;
	UserDAO userDao;
	UserSelectDAO userSelectDao;
	ReplyDAO replyDao;
	
	public MovieController(MovieDAO movieDao, UserDAO userDao, UserSelectDAO userSelectDao, ReplyDAO replyDao) {
		this.movieDao = movieDao;
		this.userDao = userDao;
		this.userSelectDao = userSelectDao;
		this.replyDao = replyDao;
	}
		
	//로그인 전 화면
	@RequestMapping(value = {"/", "beforeLogin.do"})
	public String main() {
		return Comm.MOVIEPATH + "beforeLogin.jsp";
	}

	//로그인 후 화면
	//영화 정보 싹다 끌어와야되고
	@RequestMapping(value = {"afterLogin.do"})
	public String Main(Model model) {
		//영화 조회수 세션 삭제
		session = request.getSession();
		session.removeAttribute("s");
		//전체 영화 조회
		//movieHit 횟수로 정렬
		//리스트로 전달
		//뿌리기 끝(영화 조회수)
		
		//리스트로 영화 받아오기(조회순 정렬)
		List<MovieVO> hitList = movieDao.movieList();
		model.addAttribute("movieHit", hitList);
		
		//사용자 조회(idx)
		//찜 목록 들어가서 idx로 값 조회
		//찜 목록에 있는 영화 제목 끌어오기
		//영화 제목들을 리스트로 받아서 영화 테이블에 입력
		//movie객체로 전달받은 값들을 리스트에 저장
		//뿌리기 끝(찜)
		//아직 정보가 없어서 나중에 테스트
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		//로그인 사용자 정보 끌어오기 성공
		System.out.println("로그인한 사용자의 idx : " + vo.getUserIdx());
		List<UserSelectVO> selectList = userSelectDao.selectList(vo.getUserIdx());
		//영화 제목 받아오는 리스트 생성
		List<String> movieNameList = new ArrayList<String>();
		//리스트안에 있는 영화제목들을 영화제목리스트에 넣어준다.
		for(int i = 0; i < selectList.size(); i++) {
			movieNameList.add(selectList.get(i).getMovieName());
		}
		//movie테이블 끌어오기
		List<MovieVO> movieSelectList = movieDao.movieSelectList(movieNameList);
		model.addAttribute("movieSelect", movieSelectList);
		
		return Comm.MOVIEPATH + "afterLogin.jsp";
	}
	
	//영화 화면 설정
	@RequestMapping("movie.do")
	public String movie(HttpServletRequest request, Model model, MovieVO movieVo) {
		//세션 받아오기
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		
		//영화 정보가져오기
		MovieVO baseVO = movieDao.movieSelect(movieVo.getMovieIdx());
		//영화 시청횟수 증가
		session = request.getSession();
		String show = (String)session.getAttribute("s");
		if(show == null) {
			int res = movieDao.updateMovieHit(baseVO.getMovieIdx());
			session.setAttribute("s", "check");
		}
		//댓글 목록 가져오기
		List<ReplyVO> list = replyDao.replySelect(baseVO.getMovieName());
		
		
		model.addAttribute("movieOne", baseVO);
		model.addAttribute("user", vo);
		model.addAttribute("list", list);
		return Comm.MOVIEPATH + "movie.jsp";
	}
	
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//관리자 관련 코드	
	//매니저 확인
	@RequestMapping("managerPage.do")
	public String managerPage() {
		//세션 받아오기
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("login");
		return Comm.MOVIEPATH + "managerPage.jsp";	
	}
	
	//영화 추가 페이지
	@RequestMapping("insertMovieForm.do")
	public String insertMovieForm() {
		return Comm.MOVIEPATH + "insertMovie.jsp";
	}
	//영화 추가하기
	@RequestMapping("movieInsert.do")
	@ResponseBody
	public String movieInsert(MovieVO vo) {
		int res = movieDao.movieInsert(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	//영화 변경 페이지
	@RequestMapping("updateMovieForm.do")
	public String updateMovieForm() {
		return Comm.MOVIEPATH + "updateMovie.jsp";
	}
	//사용자 조회 페이지
	@RequestMapping("selectUsersForm.do")
	public String selectUsersForm() {
		List<UserVO> list = userDao.userList();
		request.setAttribute("list", list);
		return Comm.MOVIEPATH + "selectUsers.jsp";
	}
	
	
	
	
	
	
	
	
}
