package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.UserSelectVO;

public class UserSelectDAO {
	
	//sqlSession 생성
	SqlSession sqlSession;
	
	//생성자로 sqlSession 받아오기
	public UserSelectDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//찜 전체 조회(사용자의 idx에 맞는 영화만)
	public List<UserSelectVO> selectList(int userIdx){
		List<UserSelectVO> list = sqlSession.selectList("userSelect.selectList", userIdx);
		return list;
	}
	
	//찜 추가
	public int selectOne(UserSelectVO vo) {
		int res = sqlSession.insert("userSelect.selectOne", vo);
		return res;
	}
	
	 //유저의 idx와 영화의 제목이 일치하는 항목이 있는지 확인
	public UserSelectVO selectCheck(UserSelectVO vo) {
		UserSelectVO b_vo = sqlSession.selectOne("userSelect.selectCheck", vo);
		return b_vo;
	}
	
}
