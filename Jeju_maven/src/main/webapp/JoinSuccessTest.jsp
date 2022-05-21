<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>회원가입 성공!</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <link rel = "stylesheet" href="assets/css/logintest.css">
    <script src="jquery-3.4.1.js"></script>
</head>

<body>
    <section class = "join-form">
        <h1>환영합니다!</h1>
        <form action="JoinCon" method = "post">
            <div id = "Update" class = "join-area">
                 ${requestScope.joinName }님
            </div>
            <div class = "join-area">
                회원가입을 축하합니다.🍊
           </div>
        
            <div class = "join-area">
                새로운 아이디는
            </div>
           
            <div class = "join-area">
                ${requestScope.joinId} 입니다.
            </div>

            <div class = "join-area">
                <a href="maintest.jsp">
                <input type = "button" value = "시작하기" ></a>
            </div>
        </form>
       
    </section>

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

