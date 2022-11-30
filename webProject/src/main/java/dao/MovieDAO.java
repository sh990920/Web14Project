package dao;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MovieVO;

public class MovieDAO {
	//sqlSession 생성
	SqlSession sqlSession;
	//생성자로 sqlSession 받아오기
	public MovieDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//영화 추가하기
	public int movieInsert(MovieVO vo) {
		int res = sqlSession.insert("movie.movieInsert", vo);
		return res;
	}
	
	//영화 조회순으로 정렬후 전체 영화 가져오기
	public List<MovieVO> movieList(){
		List<MovieVO> list = sqlSession.selectList("movie.movieList");
		return list;
	}
	
	//영화 제목으로 영화 정보 끌어오기
	public List<MovieVO> movieSelectList(List<String> movieNameList){
		List<MovieVO> list = new ArrayList<MovieVO>();
		for(int i = 0; i < movieNameList.size(); i++) {
			MovieVO vo = sqlSession.selectOne("movie.movieSelectList", movieNameList.get(i));
			list.add(vo);
		}
		
		return list;
	}
	
	//
	public MovieVO movieSelect(int movieIdx) {
		MovieVO vo = sqlSession.selectOne("movie.movieSelect", movieIdx);
		return vo;
	}
	
	//영화 조회수증가
	public int updateMovieHit(int movieIdx) {
		int res = sqlSession.update("movieHitUpdate", movieIdx);
		return res;
	}
	
}
