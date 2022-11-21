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
	
	//로그인
	public int login(UserVO vo) {
		int res = sqlSession.selectOne("user.login", vo.getUserId());
		return res;
	}
	
	
	
}