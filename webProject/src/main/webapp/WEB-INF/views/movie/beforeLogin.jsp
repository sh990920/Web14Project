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

</
script> <script>.header {
	width: 100%;
	height: 200px;
	display: flex;
}

.gnb {
	display: flex;
}

.btn_content {
	display: flex;
	justify-content: center;
	margin-left: auto;
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
}

.btn:hover {
	background-color: rgba(135, 169, 232, 0.7);
}

.section_container {
	width: 100%;
	padding: 70px 30px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.title {
	width: 1380px;
	font-size: 24px;
	margin-bottom: 10px;
}

.star_ranking, .views_ranking {
	background-color: antiquewhite;
	width: 1380px;
	height: 400px;
	display: flex;
	justify-content: center;
	overflow: hidden;
	position: relative;
	margin-bottom: 30px;
}

#vr_slide {
	position: absolute;
	left: 0;
	top: 0;
	transition: left 0.5s ease-out;

	/*ease-out: 처음에는 느렸다가 점점 빨라짐*/
}

#sr_slide {
	position: absolute;
	left: 0;
	top: 0;
	display: flex;
	transition: left 0.5s ease-out;

	/*ease-out: 처음에는 느렸다가 점점 빨라짐*/
}

.movie_content {
	float: left;
	width: 1380px;
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 10px;
	/*ease-out: 처음에는 느렸다가 점점 빨라짐*/
}

.slide1 {
	background-color: aquamarine;
}

.slide2 {
	background-color: lightcoral;
}

.slide3 {
	background-color: lightcyan;
}

a>img {
	background-color: #D16BA5;
	width: 220px;
	height: 350px;
	transition: all 0.1s linear;
}

a:hover img {
	transform: scale(1.05);
}

.prev, .next {
	border: none;
	width: 70px;
	height: 140px;
	font-size: 0;
	background-color: hsl(0deg 0% 8%/ 50%);
}

.prev {
	position: absolute;
	left: 0;
	top: 125px;
}

.next {
	position: absolute;
	right: 0;
	top: 125px;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.7)
}
</style>
<style>
.header {
	width: 100%;
	height: 200px;
	display: flex;
}

.gnb {
	display: flex;
}

.btn_content {
	display: flex;
	justify-content: center;
	margin-left: auto;
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
}

.btn:hover {
	background-color: rgba(135, 169, 232, 0.7);
}

.section_container {
	width: 100%;
	padding: 70px 30px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.title {
	width: 1380px;
	font-size: 24px;
	margin-bottom: 10px;
}

.star_ranking, .views_ranking {
	width: 1380px;
	height: 400px;
	display: flex;
	justify-content: center;
	overflow: hidden;
	position: relative;
	margin-bottom: 30px;
}

#vr_slide {
	position: absolute;
	left: 0;
	top: 0;
	transition: left 0.5s ease-out;

	/*ease-out: 泥섏쓬�먮뒗 �먮졇�ㅺ� �먯젏 鍮⑤씪吏�*/
}

#sr_slide {
	position: absolute;
	left: 0;
	top: 0;
	display: flex;
	transition: left 0.5s ease-out;

	/*ease-out: 泥섏쓬�먮뒗 �먮졇�ㅺ� �먯젏 鍮⑤씪吏�*/
}

.movie_content {
	float: left;
	width: 1380px;
	height: 400px;
	display: flex;
	justify-content: left;
	align-items: center;
	gap: 10px;
	/*ease-out: 泥섏쓬�먮뒗 �먮졇�ㅺ� �먯젏 鍮⑤씪吏�*/
}

.slide1 {
	
}

.slide2 {
	
}

.slide3 {
	
}

a>img {
	width: 220px;
	height: 350px;
	transition: all 0.1s linear;
}

a:hover img {
	transform: scale(1.05);
}

.prev, .next {
	border: none;
	width: 70px;
	height: 140px;
	font-size: 0;
	background-color: hsl(0deg 0% 8%/ 50%);
}

.prev {
	position: absolute;
	left: 0;
	top: 125px;
}

.next {
	position: absolute;
	right: 0;
	top: 125px;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.7)
}
</style>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>
<body>
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

				<div class="title">
					<h1>조회수 랭킹</h1>
				</div>

				<div class="views_ranking">
					<div class="slides_container" id="vr_slide"></div>

					<div class="slide_btn_box">
						<!-- hsl(0deg 0% 8% / 50%) -->
						<button type="button" class="prev" id="vr_prevBtn">
							prev <img src="/project/resources/image/chevron-left-solid-72.png" alt="">
						</button>
						<button type="button" class="next" id="vr_nextBtn">
							next <img src="/project/resources/image/chevron-right-solid-72.png" alt="">
						</button>
					</div>
				</div>
				<div class="title">
					<h1>별점수 랭킹</h1>
				</div>

				<div class="star_ranking">
					<div class="slides_container" id="sr_slide">
						<div class="movie_content slide1" id="sr_slide_list">
							<div class="movie_list">
								<a href="#"> <img src="/project/resources/image/movie_poster1.jpg" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>

						</div>
						<div class="movie_content slide2" id="sr_slide_list">
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>

						</div>
						<div class="movie_content slide3" id="sr_slide_list">
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>
							<div class="movie_list">
								<a href="#"> <img src="" alt="">
								</a>
							</div>

						</div>
					</div>

					<div class="slide_btn_box">
						<!-- hsl(0deg 0% 8% / 50%) -->
						<button type="button" class="prev" id="sr_prevBtn">
							prev <img src="/project/resources/image/chevron-left-solid-72.png" alt="">
						</button>
						<button type="button" class="next" id="sr_nextBtn">
							next <img src="/project/resources/image/chevron-right-solid-72.png" alt="">
						</button>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<!-- 조회수 랭킹 슬라이드 -->
<script>
            const slides1 = document.querySelector('#vr_slide'); //전체 슬라이드 컨테이너
            const slide1 = document.querySelectorAll('#vr_slide_list'); //모든 슬라이드들
            let vr_currentIdx = 0; //현재 슬라이드 index
            const vr_slideCount = slide1.length; // 슬라이드 개수
            const vr_prev = document.querySelector('#vr_prevBtn'); //이전 버튼
            const vr_next = document.querySelector('#vr_nextBtn'); //다음 버튼
            const slideWidth1 = 1380; //한개의 슬라이드 넓이
            const slideMargin1 = 0; //슬라이드간의 margin 값

            //전체 슬라이드 컨테이너 넓이 설정
            slides1.style.width = (slideWidth1 + slideMargin1) * vr_slideCount + 'px';

            function moveSlide1(num) {
            slides1.style.left = -num * 1380 + 'px';
            vr_currentIdx = num;
            }

            vr_prev.addEventListener('click', function () {
            /*첫 번째 슬라이드로 표시 됐을때는 
            이전 버튼 눌러도 아무런 반응 없게 하기 위해 
            currentIdx !==0일때만 moveSlide 함수 불러옴 */

            if (vr_currentIdx !== 0) moveSlide1(vr_currentIdx - 1);
            });

            vr_next.addEventListener('click', function () {
            /* 마지막 슬라이드로 표시 됐을때는 
            다음 버튼 눌러도 아무런 반응 없게 하기 위해
            currentIdx !==slideCount - 1 일때만 
            moveSlide 함수 불러옴 */
            if (vr_currentIdx !== vr_slideCount - 1) {
                moveSlide1(vr_currentIdx + 1);
            }
            });
        </script>

<!-- 별점수 랭킹 슬라이드 -->
<script>
            const slides2 = document.querySelector('#sr_slide'); //전체 슬라이드 컨테이너
            const slide2 = document.querySelectorAll('#sr_slide_list'); //모든 슬라이드들
            let sr_currentIdx = 0; //현재 슬라이드 index
            const sr_slideCount = slide2.length; // 슬라이드 개수
            const sr_prev = document.querySelector('#sr_prevBtn'); //이전 버튼
            const sr_next = document.querySelector('#sr_nextBtn'); //다음 버튼
            const slideWidth2 = 1380; //한개의 슬라이드 넓이
            const slideMargin2 = 0; //슬라이드간의 margin 값


            //전체 슬라이드 컨테이너 넓이 설정
            slides1.style.width = (slideWidth2 + slideMargin2) * sr_slideCount + 'px';

            function moveSlide2(num) {
            slides2.style.left = -num * 1380 + 'px';
            sr_currentIdx = num;
            }

            sr_prev.addEventListener('click', function () {
            /*첫 번째 슬라이드로 표시 됐을때는 
            이전 버튼 눌러도 아무런 반응 없게 하기 위해 
            currentIdx !==0일때만 moveSlide 함수 불러옴 */

            if (sr_currentIdx !== 0) moveSlide2(sr_currentIdx - 1);
            });

            sr_next.addEventListener('click', function () {
            /* 마지막 슬라이드로 표시 됐을때는 
            다음 버튼 눌러도 아무런 반응 없게 하기 위해
            currentIdx !==slideCount - 1 일때만 
            moveSlide 함수 불러옴 */
            if (sr_currentIdx !== sr_slideCount - 1) {
                moveSlide2(sr_currentIdx + 1);
            }
            });
        </script>

<!-- data list만큼 slide list 생성 -->
<script>
            var list  = [1,2,3,4,5,6,7,8,9,10,11,12,13,14];
            var slide_page = Math.ceil(list.length / 6);
            console.log(slide_page);
            for(var i = 0; i<slide_page; i++){
                const vr_slide = document.querySelector("#vr_slide");
                const vr_slide_list = document.createElement('div');
                vr_slide_list.setAttribute('class','movie_content');
                vr_slide_list.classList.add('slide'+(i+1));
                vr_slide_list.setAttribute('id','vr_slide_list');
                vr_slide.appendChild(vr_slide_list);
            }
            var slide_idx = 0;
            var child_idx = 0;
            for(var i = 0 ; i<list.length; i++){
                if(i % 6 == 0){
                    slide_idx++;
                    child_idx = 0;
                }
                const slide_list = document.querySelector(".slide"+slide_idx);
                const movie_list = document.createElement('div');
                movie_list.setAttribute('class','movie_list');
                const a = document.createElement('a');
                const img = document.createElement('img');
                img.setAttribute('src','./img/movie_poster'+(i+1)+'.jpg');
                slide_list.append(movie_list);
                slide_list.childNodes[child_idx].append(a);
                slide_list.childNodes[child_idx].childNodes[0].append(img);
                child_idx++;
            }

        </script>
</html>