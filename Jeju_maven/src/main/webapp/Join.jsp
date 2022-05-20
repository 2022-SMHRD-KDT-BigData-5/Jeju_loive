<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>회원가입 성공</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>


</head>


<body>


	<div>

		<form method="post" action="JoinCon">
			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
						<h4 class="mb-3">회원가입</h4>
						<form class="validation-form" novalidate>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="id">아이디</label> <input type="text"
										class="form-control" name="j_id" id="j_id" placeholder=""
										required>
									<div class="invalid-feedback">아이디를 입력해주세요.</div>
								</div>
								<br>
								<div class="col-md-12">
									<input type="button" value="ID중복체크" class="primary"
										onclick="idCheck()">
								</div>
								<div>
									<span id="check"></span>
								</div>
								<br> <br>
								<div class="col-md-6 mb-3">
									<label for="password">비밀번호</label> <input type="password"
										class="form-control" name="j_pw" id="j_pw" placeholder=""
										required>
									<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
								</div>

								<div class="col-md-6 mb-3">
									<label for="password">비밀번호확인</label> <input type="password"
										class="form-control" name="j_pwck" id="j_pwck" placeholder=""
										required>
									<div class="invalid-feedback">비밀번호를 다시한번 입력해주세요.</div>
								</div>

								<div class="col-md-6 mb-3">
									<label for="name">이름</label> <input type="text"
										class="form-control" name="name" id="name" placeholder=""
										required>
									<div class="invalid-feedback">이름을 입력해주세요.</div>
								</div>
							</div>


							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="tel">전화번호</label> <input type="text"
										class="form-control" name="tel" id=""tel"" placeholder=""
										required>
									<div class="invalid-feedback">전화번호를 입력해주세요.</div>
								</div>



							</div>

							<div class="mb-4"></div>
							<button class="btn btn-primary btn-lg btn-block" type="submit">가입
								완료</button>
							<br> <br> <a href="main.jsp">
							<input type="button"
								value="메인페이지로" class="primary"></a>
						
					</div>
				</div>
			</div>
</form>

			<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
		

	</div>




	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->

	<script>
		function idCheck() {
			let j_id = $('#j_id').val();

			//jquery로 ajax(비동기통신) 작성
			$.ajax({
				//전송데이터(json)
				data : {
					'j_id' : j_id
				},
				//요청경로(url매핑값)
				url : 'IdCheckCon',
				//요청방식(get/post)
				method : 'get',
				//전송데이터 정보(형식/인코딩방식)
				contentType : 'application/json; charset=utf-8',
				//응답데이터 형식지정
				dataType : 'text',
				success : function(data) { //'사용할 수 있다'(응답)->data('사용할 수 있다')
					if (data == "true") {
						$('#check').text('사용할 수 있는 아이디입니다.')
					} else {
						$('#check').text('사용할 수 없는 아이디입니다.')
					}
				},
				error : function() {
					alert("통신실패");
				}
			})
		}
	</script>
	<script src="assets/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>

