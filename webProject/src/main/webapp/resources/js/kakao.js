document.write('<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>');

// 2. 카카오 초기화
        Kakao.init('0942662a60138d6b23579d0eb15a2657');
        console.log( Kakao.isInitialized() ); // 초기화 판단여부

        // 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
        function loginWithKakao() {
            Kakao.Auth.login({
                success: function (authObj) {
                    console.log(authObj); // access토큰 값
                    Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장

                    getInfo();
                },
                fail: function (err) {
                    console.log(err);
                }
            });
        }

        // 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
        function getInfo() {
            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    console.log(res);
                    // 이메일, 성별, 닉네임, 프로필이미지
                    var email = res.kakao_account.email;
                    var gender = res.kakao_account.gender;
                    var nickname = res.kakao_account.profile.nickname;
                    var profile_image = res.kakao_account.profile.thumbnail_image_url;
                   	var birthday = res.kakao_account.birthday;
                   	var phone_number = res.kakao_account.phone_number;
                   	

                    console.log(email, gender, nickname, profile_image, birthday, phone_number);
                },
                fail: function (error) {
                    alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
                }
            });
        }