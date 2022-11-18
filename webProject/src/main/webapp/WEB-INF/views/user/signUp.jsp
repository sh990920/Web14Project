<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/project/resources/style/reset.css">
<link rel="stylesheet" href="/project/resources/style/signup.css">
</head>
<body>
	<div class="signup_container">
		<div class="input_container">
			<form>
				<div class="input_box">
					<!-- 이름 입력창 -->
					<input class="input" type="text" name="userName" placeholder="이름을 입력해주세요">
				</div>
				<div class="input_box id_box">
					<!-- 아이디 입력창 -->
					<input class="input" type="text" name="userId" placeholder="아이디를 입력해주세요">
					<!-- 중복체크 버튼 -->
					<button class="id_btn" type="button" onclick="">중복확인</button>
				</div>
				<div class="input_box">
					<!-- 비밀번호 입력창 -->
					<input class="input" type="text" name="userPw" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="input_box">
					<!-- 비밀번호확인 입력창 -->
					<input class="input" type="text" name="c_pwd" placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="input_box">
					<!-- 전화번호 입력창 -->
					<input class="input" type="text" name="userPhoneNum" placeholder="전화번호를 입력해주세요">
				</div>
				<div class="input_box">
					<!-- 생일 입력창 -->
					<input class="input" type="text" name="userBirthDate" placeholder="생년월일을 입력해주세요">
				</div>
				<div class="input_box">
					<!-- 이메일 입력창 -->
					<input class="input" type="text" name="userEmail" placeholder="이메일을 입력해주세요">
				</div>
				<div class="input_box">
					<!-- 회원가입 버튼 -->
					<button class="signup_btn" type="button" onclick="sendCheck(this.form)">회원가입</button>
				</div>
			</form>
		</div>

	</div>
	
	<script>
		function sendCheck(f){
			var userName = f.userName.value.trim();
			var userId = f.userId.value.trim();
			var userPw = f.userPw.value.trim();
			var c_pwd = f.c_pwd.value.trim();
			var userPhoneNum = f.userPhoneNum.value.trim();
			var userBirthDate = f.userBirthDate.value.trim();
			var userEmail = f.userEmail.value.trim();
			
			if(userName == ''){
				alert("이름은 필수입니다.");
				return;
			}
			if(userId == ''){
				alert("ID는 필수입니다.");
				return;
			}
			if(userPw == ''){
				alert("비밀번호는 필수입니다.");
				return;
			}
			if(userPw != c_pwd){
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			f.action = "signUp.do";
			f.method = "post";
			f.submit();
			
		}
	</script>
</body>
</html>