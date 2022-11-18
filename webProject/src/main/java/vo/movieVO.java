package vo;

public class movieVO {
	private int idx;					//PK
	private String movieName;			//영화 제목
	private String actor;				//출연진
	private String launchDate;			//개봉일
	private String story;				//줄거리
	private String genre;				//장르
	private String score;				//별점
	private String movieClass;			//영화 등급?심의?
	private String movieUrl;			//영화 경로
	
	//setter, getter
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getLaunchDate() {
		return launchDate;
	}
	public void setLaunchDate(String launchDate) {
		this.launchDate = launchDate;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getMovieClass() {
		return movieClass;
	}
	public void setMovieClass(String movieClass) {
		this.movieClass = movieClass;
	}
	public String getMovieUrl() {
		return movieUrl;
	}
	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}
	
	
	
}
