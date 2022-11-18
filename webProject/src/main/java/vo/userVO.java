package vo;

public class userVO {
	private int idx;					//PK
	private String id;					//사용자 id
	private String pw;					//사용자 pw
	private String name;				//사용자 이름
	private String phonenum;			//사용자 핸드폰 번호
	private String email;				//사용자 이메일
	private String regdate;				//사용자 가입 날짜
	private String birthdate;			//사용자 생년월일
	private String selectmovie;			//사용자 찜목록
	private int age;					//사용자 나이
	private String nickname;			//사용자 닉네임
	
	//getter, setter
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getSelectmovie() {
		return selectmovie;
	}
	public void setSelectmovie(String selectmovie) {
		this.selectmovie = selectmovie;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
