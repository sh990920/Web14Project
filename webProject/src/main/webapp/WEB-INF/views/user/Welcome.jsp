<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>welcome</title>
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
.welcome_container {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.welcome_box {
	width: 800px;
	height: 400px;
	margin: auto;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.text_box {
	width: 600px;
	height: 60px;
	font-size: 36px;
	text-align: center;
	margin-bottom: 50px;
}

.btn_box {
	width: 700px;
	height: 300px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

button {
	width: 600px;
	height: 80px;
	margin-bottom: 50px;
	background-color: #86A8E7;
	border: 1px solid #d9d6d6;
	border-radius: 8px;
	color: #fff;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="welcome_container">
		<div class="welcome_box">
			<div class="text_box">
				<!-- 님 앞에 이름넣기 -->
				<p>${ vo.userNickName }님 가입이 완료되었습니다.</p>
			</div>
			<div class="btn_box">
				<button type="button" onclick="location.href='beforeLogin.do'">메인 페이지로 이동</button>
				<button type="button" onclick="location.href='loginForm.do'">로그인 페이지로 이동</button>
			</div>
		</div>
	
	</div>
</body>
</html>