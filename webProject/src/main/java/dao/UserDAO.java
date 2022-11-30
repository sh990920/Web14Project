package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.UserVO;

public class UserDAO {
	//sqlSession 생성
	SqlSession sqlSession;
	//생성자로 sqlSession 받아오기
	public UserDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//회원가입
	public int signUp(UserVO vo) {
		int res = sqlSession.insert("user.signUp", vo);
		return res;
	}
	
	//로그인을 위한 id찾아오기
	public UserVO loginId(UserVO vo) {
		UserVO b_vo = sqlSession.selectOne("user.loginId", vo.getUserId());
		
		return b_vo;
	}
	
	public UserVO loginPw(UserVO vo) {
		UserVO b_vo = sqlSession.selectOne("user.loginId", vo.getUserPw());
		return b_vo;
	}
	
	//id검사
	public UserVO checkId(String userId) {
		UserVO b_vo = sqlSession.selectOne("user.loginId", userId);
		return b_vo;
	}
	
	//이메일 검사
	public UserVO checkEmail(String userEmail) {
		UserVO b_vo = sqlSession.selectOne("user.checkEmail", userEmail);
		return b_vo;
	}
	
	//전화번호 검사
	public UserVO checkPhoneNum(String userPhoneNum) {
		UserVO b_vo = sqlSession.selectOne("user.checkPhoneNum", userPhoneNum);
		return b_vo;
	}
	
	//닉네임 검사
	public UserVO checkNickName(String userNickName) {
		UserVO b_vo = sqlSession.selectOne("user.checkNickName", userNickName);
		return b_vo;
	}
	
	//카카오 로그인
	public UserVO kakaoLogin(String userEmail) {
		UserVO b_vo = sqlSession.selectOne("user.kakaoLogin", userEmail);
		return b_vo;
	}
	//카카오 회원가입
	public int kakaoSignUp(UserVO vo) {
		int res = sqlSession.insert("user.kakaoSignUp", vo);
		return res;
	}
	//카카오 로그인
	public UserVO naverLogin(String userEmail) {
		UserVO b_vo = sqlSession.selectOne("user.naverLogin", userEmail);
		return b_vo;
	}
	//카카오 회원가입
	public int naverSignUp(UserVO vo) {
		int res = sqlSession.insert("user.naverSignUp", vo);
		return res;
	}
	
	//비밀번호 변경
	public int pwdUpdate(UserVO vo) {
		int res = sqlSession.update("user.pwdUpdate", vo);
		return res;
	}
	
	//닉네임 변경
	public int nickNameUpdate(UserVO vo) {
		int res = sqlSession.update("user.nickNameUpdate", vo);
		return res;
	}
	
	//이메일 변경
	public int emailUpdate(UserVO vo) {
		int res = sqlSession.update("user.emailUpdate", vo);
		return res;
	}
	
	//전화번호 업데이트
	public int phoneNumUpdate(UserVO vo) {
		int res = sqlSession.update("user.phoneNumUpdate", vo);
		return res;
	}
	
	//전체 유저 조회
	public List<UserVO> userList(){
		List<UserVO> list = sqlSession.selectList("user.userList");
		return list;
	}
	
}