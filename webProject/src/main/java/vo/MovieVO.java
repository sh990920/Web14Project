package vo;

public class MovieVO {
	private int movieIdx;				//PK, 영화 인덱스 번호
	private String movieName;			//영화 제목
	private String movieLaunchDate;		//개봉일
	private String movieStory;			//줄거리
	private String movieGenre;			//장르
	private String movieClass;			//영화 심의등급
	private String movieUrl;			//영화 경로
	
	//getter, setter
	public int getMovieIdx() {
		return movieIdx;
	}
	public void setMovieIdx(int movieIdx) {
		this.movieIdx = movieIdx;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieLaunchDate() {
		return movieLaunchDate;
	}
	public void setMovieLaunchDate(String movieLaunchDate) {
		this.movieLaunchDate = movieLaunchDate;
	}
	public String getMovieStory() {
		return movieStory;
	}
	public void setMovieStory(String movieStory) {
		this.movieStory = movieStory;
	}
	public String getMovieGenre() {
		return movieGenre;
	}
	public void setMovieGenre(String movieGenre) {
		this.movieGenre = movieGenre;
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
