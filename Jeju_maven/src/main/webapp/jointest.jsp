<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="assets/css/logintest.css">
    <script src="jquery-3.4.1.js"></script>
</head>
<body>
 <section class = "join-form">
       
        <form action="JoinCon" method = "post">
         <h1>회원가입</h1>
            <div class = "int-area">
                <input type = "text" name = "j_id" id = "j_id" autocomplete="off" required>
                <label for ="j_id">ID</label>                
            </div>
            <div class = "int-area">
                <input type = "button" value = "ID중복체크" onclick="idCheck()"  required>
                <div>
                <span id="check"></span>
                </div>
            </div>
            <div class = "int-area">
                <input type = "password" name = "j_pw" id = "j_pw" class = "pw" autocomplete="off" required>
                <label for ="j_pw">비밀번호</label>
                
            </div>
            <div class = "int-area">
                <input type = "password" name = "j_pwck" id = "j_pwck" class = "pw" autocomplete="off" required>
                <label for ="j_pwck">비밀번호를 다시한번 입력해주세요</label>
                
</div>
  

            </div>

            <div class = "int-area">
                <input type = "text" name = "name" id = "name" autocomplete="off" required>
                <label for ="name">이름</label>
                
            </div>

            <div class = "int-area">
                <input type = "text" name = "tel" id = "tel" autocomplete="off" required>
                <label for ="tel">tel</label>
                
            </div>

            <div class = "btn-area">
                <button type = "submit">J O I N</button>
            </div>

            <div class = "btn-area">
                <a href="maintest.jsp">
                <input type = "button" value = "메인페이지로"></a>
            </div>
        </form>
       
    </section>
    
    <!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
    
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
	

 <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>

</body>
</html>