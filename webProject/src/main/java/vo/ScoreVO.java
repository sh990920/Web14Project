package vo;

public class ScoreVO {
	private int scoreIdx;		//별점 idx
	private String userId;		//유저 테이블에서 끌어올 유저아이디
	private String movieName;	//영화 테이블에서 끌어올 영화제목
	private int starScore;		//별점을 정하는 점수(1~5까지 1점당 별한개)
	
	//getter, setter
	public int getScoreIdx() {
		return scoreIdx;
	}
	public void setScoreIdx(int scoreIdx) {
		this.scoreIdx = scoreIdx;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getStarScore() {
		return starScore;
	}
	public void setStarScore(int starScore) {
		this.starScore = starScore;
	}
	
	
	
}
