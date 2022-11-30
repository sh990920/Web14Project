<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>영화편집 페이지</title>
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
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

table {
	border-collapse: collapse;
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

.btn_box {
	height: 100px;
	display: flex;
	justify-content: flex-end;
}

.btn_box>button {
	width: 100px;
	height: 40px;
	margin: 10px;
}

.container {
	width: 800px;
	height: 600px;
	margin: auto;
	background-color: aliceblue;
	display: flex;
	justify-content: center;
}

td {
	border: 1px solid black;
	text-align: center;
}

.ftd, .ltd {
	border: none;
}

button {
	width: 150px;
	height: 40px;
}
</style>
</head>
<body>
	<div class="btn_box">
		<button type="button" onclick="location.href='managerPage.do'">메인으로</button>
	</div>
	<div class="container">
		<table>
			<tr>
				<td class="ftd" colspan="2"><button type="button">삭제</button></td>
			</tr>
			<tr>
				<td>영화제목</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화주소</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화 심의 등급</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화 주럭리</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화 개봉 날짜</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화 장르</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>영화 배우</td>
				<td><textarea name="" id="" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<td class="ltd" colspan="2"><button type="button">변경</button></td>
			</tr>
		</table>
	</div>
</body>
</html>