<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>회원가입 성공</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->



</head>


<body style="text-align: center;">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<form method="post" action="JoinCon">
		<h1 style="text-align: cetner;">회원가입 하기</h1>
									<h1><div class="fields"></h1>
										<br><div class="field half">
											<label for="name">이름</label>
											<input type="text" name="name" id="name" />
										</div>
										<br><div class="field half">
											<label for="tel">전화번호</label>
											<input type="text" name="tel" id="tel" />
											
										</div>
										<br><div class="field half">
											<label for="id">ID</label>
											<input type="text" name="j_id" id="j_id" />
										</div>
										<il><input type="button" value="email중복체크" onclick="emailCheck()"></il>
										<br><div class="field half">
											<label for="idck">사용할 수 있는 ID입니다.</label>
											<input type="button" name="j_idck" id="j_idck" />
										</div>
										
										
										<div class="field half"><br>
											<label for="password">비밀번호</label>
											<input type="password" name="j_pw" id="j_pw" />
										</div>
										<div class="field half"><br>
											<label for="password">비밀번호확인</label>
											<input type="password" name="j_pwck" id="j_pwck" />
										</div>
										
										
									</div>
									<div style="text-align: cetner;">
									<ul class="actions">
										<li><input type="submit" value="JOIN" class="primary"/></li>
										<!-- <li><input type="reset" value="Reset" /></li> -->
									</ul>
									</div>
								</form>
		<a href="main.jsp"><input type="button" value="메인페이지로"></a> </nav>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>

