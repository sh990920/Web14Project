package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MovieVO;
import vo.ReplyVO;

public class ReplyDAO {
	
	//sqlSession 생성
	SqlSession sqlSession;
	//생성자로 sqlSession 받아오기
	public ReplyDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//댓글추가
	public int insertReply(ReplyVO vo) {
		int res = sqlSession.insert("reply.insertReply", vo);
		return res;
	}
	
	//댓글 불러오기
	public List<ReplyVO> replySelect(String movieName) {
		List<ReplyVO> list = sqlSession.selectList("reply.selectAll", movieName);
		return list;
	}
	
	//평점 삭제
	public int deleteReply(ReplyVO vo) {
		int res = sqlSession.delete("reply.deleteReply", vo);
		return res;
	}
	
}
