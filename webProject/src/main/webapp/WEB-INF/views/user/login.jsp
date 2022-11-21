<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/project/resources/style/reset.css">
<link rel="stylesheet" href="/project/resources/style/login.css">
<script type="/project/resources/js/httpRequest.js"></script>
</head>
<body>
	<div class="signup_container">
		<div class="input_container">

			<form>
				<div class="input_box">
					<input class="input" type="text" name="userId" placeholder="아이디를 입력해주세요">
				</div>
				<div class="input_box">
					<input class="input" type="text" name="userPw" placeholder="비밀번호를 입력해주세요">
				</div>

				<div class="input_box">
					<!-- 카카오 로그인 버튼 -->
					<button class="login_btn btn" type="button" onclick="">카카오 로그인</button>
				</div>
				<div class="input_box">
					<!-- 네이버 로그인 버튼 -->
					<button class="login_btn btn" type="button" onclick="">네이버 로그인</button>
				</div>
				<div class="input_box">
					<!-- 로그인 버튼 -->
					<button class="login_btn btn" type="button" onclick="login(this.form);">로그인</button>
				</div>
				<div class="input_box">
					<!-- 자동로그인 체크박스 -->
					<input type="checkbox" id="auto_login"> <label for="auto_login">자동로그인</label>
				</div>
				<div class="input_box">
					<!-- 아이디 비번찾기 버튼 -->
					<button class="find_id" type="button">ID 찾기</button>
					<button class="find_pw" type="button">PW 찾기</button>
				</div>
			</form>
		</div>

	</div>
	
	<script>
		function login(f){
			var userId = f.userId.value;
			var userPw = f.userPw.value;
			
			if(userId == ''){
				alert("ID는 필수입니다.");
				return;
			}
			if(userPw == ''){
				alert("비밀번호는 필수입니다.");
				return;
			}
			
			var url = "login.do";
			var param = "userId=" + userId + "userPw=" + userPw;
			sendRequest(url, param, resultFn, "post");
			
			
		}
		function resultFn(){
			if(xhr.readyState == 4 && xhr.status == 200){
				var data = xhr.responseText;
				if(data != 'yes'){
					alert('로그인 실패');
					return;
				}else{
					alert('로그인 성공');
					location.href = "afterLogin.do";
				}
			}
		}
	</script>
	
</body>
</html>