<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 회원가입 -->
								<h2 class="major">회원가입</h2>
								<form method="post" action="JoinCon">
									<div class="fields">
										<div class="field half">
											<label for="name">이름</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field half">
											<label for="tel">전화번호</label>
											<input type="text" name="tel" id="tel" />
											
										</div>
										<div class="field half">
											<label for="id">ID</label>
											<input type="text" name="j_id" id="j_id" />
										</div>
										<div class="field half">
											<label for="idck">사용할 수 있는 ID입니다.</label>
											<input type="button" name="j_idck" id="j_idck" />
										</div>
										
										
										<div class="field half">
											<label for="password">비밀번호</label>
											<input type="password" name="j_pw" id="j_pw" />
										</div>
										<div class="field half">
											<label for="password">비밀번호확인</label>
											<input type="password" name="j_pwck" id="j_pwck" />
										</div>
									
									</div>
									<ul class="actions">
										<li><input type="submit" value="JOIN" class="primary" /></li>
										<!-- <li><input type="reset" value="Reset" /></li> -->
									</ul>
								</form>
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
								</ul>
</body>
</html>