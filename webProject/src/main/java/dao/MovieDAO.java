package dao;


import org.apache.ibatis.session.SqlSession;

public class MovieDAO {
	//sqlSession 생성
	SqlSession sqlSession;
	//생성자로 sqlSession 받아오기
	public MovieDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
}
