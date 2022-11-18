package dao;

import org.apache.ibatis.session.SqlSession;

public class ScoreDAO {
	
	//sqlSession 생성
	SqlSession sqlSession;
	//생성자로 sqlSession 받아오기
	public ScoreDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
}
