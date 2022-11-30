package com.korea.project;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDAO;
import util.Comm;
import vo.UserVO;

@Controller
public class UserController {

	@Autowired
	HttpServletRequest request;

	UserDAO userDao;

	// 로그인 이후 세션 저장
	HttpSession session;

	public UserController(UserDAO userDao) {
		this.userDao = userDao;
	}

	// 로그인 페이지로 이동
	@RequestMapping(value = { "/loginForm.do" })
	public String loginForm() {
		return Comm.USERPATH + "login.jsp";
	}

	// 로그인 페이지로 이동
	@RequestMapping(value = "/loginForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginForm(@ModelAttribute("url") String url) {

		return Comm.USERPATH + "login.jsp";
	}

	// 로그인
	@RequestMapping("login.do")
	@ResponseBody
	public String login(UserVO vo) {
		UserVO baseVO = userDao.loginId(vo);
		String result = "no";
		if (baseVO != null) {
			result = "idOk";
			if (baseVO.getUserPw().equals(vo.getUserPw())) {
				// 세션에 로그인 정보 저장
				if (session == null) {
					// 세션에서 값 얻기
					session = request.getSession();
					// 세션에 값 저장
					session.setAttribute("login", baseVO);
				} else {
					try {
						if (session.getAttribute("login") == null) {
							// 세션에서 값 얻기
							session = request.getSession();
							// 세션에 값 저장
							session.setAttribute("login", baseVO);
						}
					} catch (Exception e) {
						System.out.println("세션 받기 실패");
					}
				}
				result = "yes";
				// 계정이 관리자인지 확인
				if (baseVO.getUserId().equals("manager")) {
					result = "manager";
				}
			}
		}
		return result;
	}

	// 카카오 로그인
	@RequestMapping("kakaoLogin.do")
	@ResponseBody
	public String kakaoLogin(UserVO vo) {
		UserVO baseVO = userDao.kakaoLogin(vo.getUserEmail());
		String result = "no";
		if (baseVO != null) {
			result = "login";
			// 세션에 로그인 정보 저장
			if (session == null) {
				session = request.getSession();
				session.setAttribute("login", baseVO);
			} else {
				try {
					if (session.getAttribute("login") == null) {
						// 세션에서 값 얻기
						session = request.getSession();
						// 세션에 값 저장
						session.setAttribute("login", baseVO);
					}
				} catch (Exception e) {
					System.out.println("세션 받기 실패");
				}
			}
		} else {
			int res = userDao.kakaoSignUp(vo);
			if (res == 1) {
				result = "signUp";
				// 세션에 로그인 정보 저장
				if (session == null) {
					session = request.getSession();
					session.setAttribute("login", vo);
				} else {
					try {
						if (session.getAttribute("login") == null) {
							// 세션에서 값 얻기
							session = request.getSession();
							// 세션에 값 저장
							session.setAttribute("login", baseVO);
						}
					} catch (Exception e) {
						System.out.println("세션 받기 실패");
					}
				}
			} else {
				result = "no";
			}
		}
		return result;
	}

	// 네이버 로그인
	@RequestMapping("naverLogin.do")
	@ResponseBody
	public String naverLogin(UserVO vo) {
		UserVO baseVO = userDao.naverLogin(vo.getUserEmail());
		String result = "no";
		if (baseVO != null) {
			result = "login";
			// 세션에 로그인 정보 저장
			if (session == null) {
				session = request.getSession();
				session.setAttribute("login", baseVO);
			} else {
				try {
					if (session.getAttribute("login") == null) {
						// 세션에서 값 얻기
						session = request.getSession();
						// 세션에 값 저장
						session.setAttribute("login", baseVO);
					}
				} catch (Exception e) {
					System.out.println("세션 받기 실패");
				}
			}
		} else {
			int res = userDao.naverSignUp(vo);
			if (res == 1) {
				result = "signUp";
				// 세션에 로그인 정보 저장
				if (session == null) {
					session = request.getSession();
					session.setAttribute("login", vo);
				} else {
					try {
						if (session.getAttribute("login") == null) {
							// 세션에서 값 얻기
							session = request.getSession();
							// 세션에 값 저장
							session.setAttribute("login", baseVO);
						}
					} catch (Exception e) {
						System.out.println("세션 받기 실패");
					}
				}
			} else {
				result = "no";
			}
		}
		return result;
	}

	// 회원가입 페이지로 이동
	@RequestMapping(value = { "/signUpForm.do" })
	public String join() {
		return Comm.USERPATH + "signUp.jsp";
	}

	// 회원가입
	@RequestMapping("signUp.do")
	public String signUp(UserVO vo, Model model) {
		String bd = vo.getUserBirthDate();
		String by = "";
		for (int i = 0; i < 4; i++) {
			by += bd.charAt(i);
		}
		int date = Integer.parseInt(by);
		int age = 2022 - date + 1;
		vo.setUserAge(age);
		// Dao 내부의 회원가입 메서드
		int res = userDao.signUp(vo);
		model.addAttribute("vo", vo);
		return Comm.USERPATH + "Welcome.jsp";
	}

	// 회원가입 이후 웰컴창으로 이동
	@RequestMapping("/welcome.do")
	public String welcome() {
		return Comm.USERPATH + "Welcome.jsp";
	}

	// id체크
	@RequestMapping("idCheck.do")
	@ResponseBody
	public String idCheck(@RequestParam("userId") String userId) throws Exception {
		UserVO baseVO = userDao.checkId(userId);
		String result = "no";
		try {
			if (baseVO == null) {
				result = "yes";
			}
			return result;
		} catch (Exception e) {
			return result;
		}

	}

	// 이메일 체크
	@RequestMapping("emailCheck.do")
	@ResponseBody
	public String emailCheck(@RequestParam("userEmail") String userEmail) throws Exception {
		UserVO baseVO = userDao.checkEmail(userEmail);
		String res = "no";
		try {
			if (baseVO == null) {
				res = "yes";
			}
			return res;
		} catch (Exception e) {
			return res;
		}
	}
	//전화번호 중복체크
	@RequestMapping("phoneNumCheck.do")
	@ResponseBody
	public String phoneNumCheck(@RequestParam("userPhoneNum") String userPhoneNum) {
		UserVO baseVO = userDao.checkPhoneNum(userPhoneNum);
		String res = "no";
		try {
			if(baseVO == null) {
				res = "yes";
			}
			return res;
		} catch (Exception e) {
			return res;
		}
	}

	// 닉네임 체크
	@RequestMapping("nickNameCheck.do")
	@ResponseBody
	public String nickNameCheck(@RequestParam("userNickName") String userNickName) throws Exception {
		UserVO baseVO = userDao.checkNickName(userNickName);
		String res = "no";
		try {
			if (baseVO == null) {
				res = "yes";
			}
			return res;
		} catch (Exception e) {
			return res;
		}
	}
	
	//비밀번호 변경
	@RequestMapping("pwdupdate.do")
	@ResponseBody
	public String pwdupdate(UserVO vo) {
		UserVO baseVO = (UserVO)session.getAttribute("login");
		vo.setUserIdx(baseVO.getUserIdx());
		int res = userDao.pwdUpdate(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	//닉네임 변경
	@RequestMapping("nickNameUpdate.do")
	@ResponseBody
	public String nickNameUpdate(UserVO vo) {
		UserVO baseVo = (UserVO)session.getAttribute("login");
		vo.setUserIdx(baseVo.getUserIdx());
		int res = userDao.nickNameUpdate(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	//이메일 변경
	@RequestMapping("emailUpdate.do")
	@ResponseBody
	public String emailUpdate(UserVO vo) {
		UserVO baseVo = (UserVO)session.getAttribute("login");
		vo.setUserIdx(baseVo.getUserIdx());
		int res = userDao.emailUpdate(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	//전화번호 변경
	@RequestMapping("phoneNumUpdate.do")
	@ResponseBody
	public String phoneNumUpdate(UserVO vo) {
		UserVO baseVo = (UserVO)session.getAttribute("login");
		vo.setUserIdx(baseVo.getUserIdx());
		int res = userDao.phoneNumUpdate(vo);
		String result = "no";
		if(res == 1) {
			result = "yes";
		}
		return result;
	}
	
	// 세션 삭제
	@RequestMapping("sessionDrop.do")
	@ResponseBody
	public String sessionDrop() {
		String result = "no";
		if (session != null) {
			System.out.println("세션삭제 1 : " + session.getAttribute("login"));
			session.removeAttribute("login");
			result = "yes";
		}
		return result;
	}

}
