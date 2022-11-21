package dao;

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
		System.out.println(vo.getUserId());
		UserVO b_vo = sqlSession.selectOne("user.loginId", vo.getUserId());
		
		return b_vo;
	}
	
	public UserVO loginPw(UserVO vo) {
		UserVO b_vo = sqlSession.selectOne("user.loginId", vo.getUserPw());
		return b_vo;
	}
	
	
}