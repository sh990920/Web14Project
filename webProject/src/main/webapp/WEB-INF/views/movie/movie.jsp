<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>영화 재생 페이지</title>
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
.container {
	width: 100%;
	height: 100vh;
}

.movie_container {
	background-color: aliceblue;
	width: 80%;
	height: 2000px;
	margin: auto;
}

.movie_view {
	background-color: antiquewhite;
	width: 100%;
	height: 720px;
	display: flex;
	flex-direction: column;
	position: relative;
}

.btn {
	background-color: #86A8E7;
	border: 1px solid #d9d6d6;
	border-radius: 8px;
	color: #fff;
	width: 100px;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 10px 10px;
	position: absolute;
}

.back_btn {
	left: 10px;
}

.wish_btn {
	left: 10px;
	top: 90%;
}

.view_content {
	width: 80%;
	height: 80%;
	margin: auto;
}

iframe {
	width: 100%;
	height: 100%;
}

.content {
	background-color: darkgrey;
	width: 100%;
	height: 300px;
	display: flex;
}

.content_box {
	width: 40%;
	height: 300px;
}

.box {
	display: flex;
	height: 100px;
}

.movie_title {
	width: 70%;
}

.age_limit {
	width: 30%;
}

.text {
	
}

.write_comment {
	padding: 10px 20px;
}

.comment {
	padding: 10px 20px;
}

.comment_btn {
	display: block;
}

.summary {
	width: 60%;
	line-height: 300px;
}

.star, .staff {
	height: 100px;
}

.comment {
	height: 100px;;
}
</style>
<script src="/project/resources/js/httpRequest.js"></script>
</head>
<body>
	<div class="conatiner">
		<div class="movie_container">
			<div class="movie_view">
				<div class="view_content">
					<iframe width="1071" height="602" src="${ movieOne.movieUrl }"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<!-- 뒤로가기 버튼 -->
				<button type="button" class="back_btn btn"
					onclick="location.href='afterLogin.do'">뒤로가기</button>
				<!-- 찜하기 버튼 -->
				<form>
					<input type="hidden" name="userIdx" value="${ user.userIdx }">
					<input type="hidden" name="movieName"
						value="${ movieOne.movieName }">
					<button type="button" class="wish_btn btn"
						onclick="select(this.form);">찜하기</button>
				</form>
			</div>
			<div class="content text">
				<div class="content_box text">
					<div class="box text">
						<div class="movie_title text">${ movieOne.movieName }</div>
						<div class="age_limit text">${ movieOne.movieClass }</div>
					</div>
					<div class="staff text">배우&제작자</div>
					<div class="star text">별점</div>
				</div>
				<div class="summary text">${ movieOne.movieStory }</div>
			</div>
			<div class="comment_box">
				<div class="write_comment">
					<h2>댓글 쓰기</h2>
					<p>아이디</p>
					
						<textarea id="replyComment" name="replyComment"cols="80" rows="10"></textarea>
						<button class="comment_btn" onclick="insertReply()">등록</button>
					
				</div>
				<c:forEach var="vo" items="${ list }">
				<form>
					<div class="comment" id="comment1">
						<p>${ vo.userIdx }</p>
						<p>${ vo.replyComment }</p>
						<input type="hidden" value="${ vo.replyComment }" name="replyComment">
						<input type="button" value="평점 삭제" onclick="deleteReply(this.form)">
					</div>
				</form>
				</c:forEach>
			</div>
		</div>
	</div>
	<script>
		//영화 찜목록에 저장(중복 안되게)
		function select(f) {
			var userIdx = f.userIdx.value;
			var movieName = f.movieName.value;
			var url = "selectMovie.do";
			var param = "userIdx=" + userIdx + "&movieName=" + movieName;
			sendRequest(url, param, resultFn, "post");
		}
		function resultFn() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if(data == 'a'){
					alert("이미 찜목록에 담겼습니다.");
					return;
				}
				if (data == 'no') {
					alert("찜하기 실패");
					return;
				}
				alert("찜하기 성공");
			}
		}
		
		function insertReply(){
			
			var userIdx = ${user.userIdx};
			var replyComment = document.getElementById("replyComment").value;
			var movieName = "${movieOne.movieName}";
			var url = "insertReply.do";
			var param = "userIdx=" + userIdx +
						"&movieName=" + movieName +
						"&replyComment=" + replyComment;
			sendRequest(url, param, result, "post")
		}
		
		function result(){
			if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if (data == 'no') {
					alert("평점 저장 실패");
					return;
				}
				alert("평점 저장 성공");
				location.reload();
			}
		}
		
		function deleteReply(f){
			var userIdx = ${user.userIdx};
			var movieName = "${movieOne.movieName}";
			var replyComment = f.replyComment.value;
			var url = "deleteReply.do";
			var param = "userIdx=" + userIdx +
						"&movieName=" + movieName +
						"&replyComment=" + replyComment;
			sendRequest(url, param, res, "post");
		}
		
		function res(){
			if (xhr.readyState == 4 && xhr.status == 200) {
				var data = xhr.responseText;
				if (data == 'no') {
					alert("평점 삭제 실패");
					return;
				}
				alert("평점 삭제 성공");
				location.reload();
			}
		}
	</script>
</body>
</html>