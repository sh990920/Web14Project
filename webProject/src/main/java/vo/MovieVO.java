package vo;

public class MovieVO {
	private int idx;					//PK
	private String moviename;			//영화 제목
	private String actor;				//출연진
	private String launchdate;			//개봉일
	private String story;				//줄거리
	private String genre;				//장르
	private String score;				//별점
	private String movieclass;			//영화 등급?심의?
	private String movieurl;			//영화 경로
	
	//setter, getter
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getLaunchdate() {
		return launchdate;
	}
	public void setLaunchdate(String launchdate) {
		this.launchdate = launchdate;
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
	public String getMovieclass() {
		return movieclass;
	}
	public void setMovieclass(String movieclass) {
		this.movieclass = movieclass;
	}
	public String getMovieurl() {
		return movieurl;
	}
	public void setMovieurl(String movieurl) {
		this.movieurl = movieurl;
	}
	
	
	
}
