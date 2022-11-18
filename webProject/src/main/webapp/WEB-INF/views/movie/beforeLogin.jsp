<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/project/resources/style/reset.css">
	    <link rel="stylesheet" href="/project/resources/style/index.css">
	    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	</head>
	<body>
		<form>
			<div class="container">
				<header>
					<div class="gnb">
						<div class="btn_content">
							<!-- 로그인 버튼 -->
							<button class="btn" type="button" onclick="location.href='loginForm.do'">로그인</button>
							<!-- 회원가입 버튼 -->
							<button class="btn" type="button" onclick="location.href='signUpForm.do'">회원가입</button>
						</div>
					</div>
				</header>
				<section>
					<div class="section_container">
		
						<h1>조회수 랭킹</h1>
						<div class="views_ranking">
							<button type="button" class="icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="auto" height="192" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);">
									<path d="m4.431 12.822 13 9A1 1 0 0 0 19 21V3a1 1 0 0 0-1.569-.823l-13 9a1.003 1.003 0 0 0 0 1.645z"></path></svg>
							</button>
							<a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a>
		
							<button type="button" class="icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="auto" height="192" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);">
									<path d="M5.536 21.886a1.004 1.004 0 0 0 1.033-.064l13-9a1 1 0 0 0 0-1.644l-13-9A1 1 0 0 0 5 3v18a1 1 0 0 0 .536.886z"></path></svg>
							</button>
						</div>
						<h1>별점 랭킹</h1>
						<div class="star_ranking">
							<button type="button" class="icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="auto" height="192" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);">
									<path d="m4.431 12.822 13 9A1 1 0 0 0 19 21V3a1 1 0 0 0-1.569-.823l-13 9a1.003 1.003 0 0 0 0 1.645z"></path></svg>
							</button>
							<!-- 영화포스터 링크 -->
							<a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a> <a href="#">
								<div class="movie_list"></div>
							</a>
							<button type="button" class="icon">
								<svg xmlns="http://www.w3.org/2000/svg" width="auto" height="192" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);">
									<path d="M5.536 21.886a1.004 1.004 0 0 0 1.033-.064l13-9a1 1 0 0 0 0-1.644l-13-9A1 1 0 0 0 5 3v18a1 1 0 0 0 .536.886z"></path></svg>
							</button>
						</div>
					</div>
				</section>
			</div>
		</form>
	</body>
</html>