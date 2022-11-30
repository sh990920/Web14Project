<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@charset "utf-8";

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a:link, a:active, a:visited {
	text-decoration: none;
	color: inherit;
}

a:hover {
	color: inherit;
	text-decoration: underline;
}

li {
	list-style-type: none;
}

body {
	color: #666;
}

.clearFix::after {
	content: '';
	display: block;
	clear: both;
}

.flex {
	display: flex;
	justify-content: center;
	align-items: center;
}

.span {
	display: block;
	width: 100%;
	height: 100%;
	background-color: skyblue;
}
</style>
<style>
.login_container {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.input_container {
	border: 1px solid #d9d6d6;
	width: 300px;
	height: 400;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.input_box {
	width: 300px;
	height: 50px;
	margin: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

label {
	width: 70px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 12px;
	padding: 0 5px;
}

.input {
	width: 150px;
	font-size: 12px;
	height: 40px;
	box-sizing: border-box;
	margin: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 8px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

input:focus::-webkit-input-placeholder {
	color: transparent;
}

.signin_btn {
	width: 220px;
	height: 40px;
}

#kakao {
	background-color: #fae100;
	font-weight: bold;
}

#naver {
	background-color: #19ce60;
	font-weight: bold;
}

.btn {
	background-color: #86A8E7;
	border: 1px solid #d9d6d6;
	border-radius: 8px;
	color: #fff;
}

.input_box:nth-child(5) {
	height: 20px;
	justify-content: flex-start;
}

#auto_login {
	margin-left: 40px;
}

.login_btn {
	margin-right: 20px;
}

.login_btn, .cancel_btn {
	width: 100px;
	height: 40px;
}

.login_container {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.input_container {
	border: 1px solid #d9d6d6;
	width: 300px;
	height: 400;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.input_box {
	width: 300px;
	height: 50px;
	margin: 10px;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
}

label {
	width: 70px;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 12px;
	padding: 0 5px;
}

.input {
	width: 150px;
	font-size: 12px;
	height: 40px;
	box-sizing: border-box;
	margin: 5px;
	padding: 5px 0 5px 10px;
	border-radius: 8px;
	border: 1px solid #d9d6d6;
	color: #383838;
	background-color: #ffffff;
}

input:focus::-webkit-input-placeholder {
	color: transparent;
}

.signin_btn {
	width: 220px;
	height: 40px;
}

#kakao {
	background-color: #fae100;
	font-weight: bold;
}

#naver {
	background-color: #19ce60;
	font-weight: bold;
}

.btn {
	background-color: #86A8E7;
	border: 1px solid #d9d6d6;
	border-radius: 8px;
	color: #fff;
}

.input_box:nth-child(5) {
	height: 20px;
	justify-content: flex-start;
}

#auto_login {
	margin-left: 40px;
}

.login_btn {
	margin-right: 20px;
}

.login_btn, .cancel_btn {
	width: 100px;
	height: 40px;
}
</style>
<script src="/project/resources/js/httpRequest.js"></script>
<!-- 1. 카카오SDK로드 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

</head>
<body>
	  <div class="login_container">
        <div class="input_container">
          
            <form>
                <div class="input_box">
                    <label >아이디</label>
                    <input class="input" type="text" name="userId"
                    placeholder="아이디 입력">
                </div>
                <div class="input_box">
                    <label >비밀번호</label>
                    <input class="input" type="text" name="userPw"
                    placeholder="비밀번호 입력">
                </div>
                
                <div class="input_box">
                    <!-- 카카오 로그인 버튼 -->
                    <button class="signin_btn btn" id="kakao" type="button" onclick="loginWithKakao();">
                        <img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="223" />
                    </button>
                </div>
                <div class="input_box" id="naverIdLogin">
	              	<!-- 네이버 로그인 버튼 -->
	                <button class="signin_btn btn" id="naver" type="button" onclick="">
	                    <img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/>
	                </button>
	          	</div>
                
                
                <div class="input_box">
                    <!-- 자동로그인 체크박스 -->
                        <input type="checkbox" id="auto_login">
                        <label for="auto_login">자동로그인</label>
                </div>
                <div class="input_box">
                    <!-- 아이디 비번찾기 버튼 -->
                    <button class="login_btn btn" type="button" onclick="login(this.form);">로그인</button>
                    <button class="cancel_btn btn" type="button" onclick="location.href='beforeLogin.do'">취소</button>
                </div>
            </form>
        </div>
        
    </div>

	<script>
		function login(f) {
			var userId = f.userId.value;
			var userPw = f.userPw.value;

			if (userId == '') {
				alert("ID는 필수입니다.");
				return;
			}
			if (userPw == '') {
				alert("비밀번호는 필수입니다.");
				return;
			}

			var url = "login.do";
			var param = "userId=" + userId + "&userPw=" + userPw;
			sendRequest(url, param, resultFn, "post");

		}
		function resultFn() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if (data == 'no') {
					alert('id가 일치하지 않습니다');
					return;
				} else if (data == 'idOk') {
					alert('비밀번호가 일치하지 않습니다');
					return;
				} else if(data == 'manager'){
					alert("관리자");
					location.href = "managerPage.do";
				} else {
					alert('로그인 성공');
					location.href = "afterLogin.do";
				}
			}
		}
		
		
		//카카오
		// 2. 카카오 초기화
        Kakao.init('0942662a60138d6b23579d0eb15a2657');
        //console.log( Kakao.isInitialized() ); // 초기화 판단여부

        // 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) {
                    //console.log(authObj); // access토큰 값
                    Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

                    getInfo();
                },
                fail: function (err) {
                    console.log(err);
                }
            });
        }
		
        //카카오 이메일
        var emial;
        
        // 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
        function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    //console.log(res);
                    // 이메일, 성별, 닉네임, 프로필이미지
                    email = res.kakao_account.email;
                    var gender = res.kakao_account.gender;
                    var nickname = res.kakao_account.profile.nickname;
                    var profile_image = res.kakao_account.profile.thumbnail_image_url;
                   	var birthday = res.kakao_account.birthday;
                   	var phone_number = res.kakao_account.phone_number;
                   	
                   	kakaoLogin();
                    
                },
                fail: function (error) {
                    alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
                }
            });
        }
        //카카오 로그인
        function kakaoLogin(){
       		var url = "kakaoLogin.do";
       		var param = "userEmail=" + email;
       		sendRequest(url, param, res, "post");
       	}
       	function res(){
       		if(xhr.readyState == 4 && xhr.status == 200){
       			var data = xhr.responseText;
       			if(data == "no"){
       				alert("카카오 로그인 실패");
       				return;
       			}
       			else {
       				alert("카카오 로그인 성공");
       				location.href = 'afterLogin.do';
       			}
       		}
       	}
       	
       	//네이버 로그인
       	const naverLogin = new naver.LoginWithNaverId(
       		   {
       		    clientId: "Yn0lLOYBMyxzLqiDaCYF",
       		    callbackUrl: "http://localhost:9090/project/loginForm.do",
       		    loginButton: {color: "green", type: 3, height: 48}
       		    }
       		   );
       		  

       		    naverLogin.init();
       		    naverLogin.getLoginStatus(function (status) {
       		      if (status) {
       		          const nickName=naverLogin.user.getNickName();
       		          var birthYear = naverLogin.user.getBirthyear();
       		          const birthday=naverLogin.user.getBirthday();
       		          var userBirthDate = birthYear + '-' + birthday;
       		          var userEmail = naverLogin.user.getEmail();
       		          
					  var mobile = naverLogin.user.getMobile();
       		          if(nickName===null||nickName===undefined ){
       		            alert("별명이 필요합니다. 정보제공을 동의해주세요.");
       		            naverLogin.reprompt();
       		            return ;  
       		         }else{
       		          var url = "naverLogin.do";
       		          var param = "userBirthYear=" + userBirthDate + "&userEmail=" + userEmail + "&userPhoenNum=" + mobile;
       		          sendRequest(url, param, result, "post");
       		         }
       			}
       		      naverLogin.logout();
       		    });
       		    console.log(naverLogin);
       	function result(){
       		if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if(data == "no"){
       				alert("네이버 로그인 실패");
       				return;
       			}
       			else {
       				alert("네이버 로그인 성공");
       				location.href = 'afterLogin.do';
       			}
			}
       	}
		
	</script>

</body>s
</html>