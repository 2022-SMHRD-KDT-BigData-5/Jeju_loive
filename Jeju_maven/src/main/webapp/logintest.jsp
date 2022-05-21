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
    <section class = "login-form">
        <h1>제주살앙</h1>
        <form action="">
            <div class = "int-area">
                <input type = "text" name = "l_id" id = "l_id" autocomplete="off" required>
                <label for ="id">USER NAME</label>

            </div>
            <div class = "int-area">
                <input type = "password" name = "l_pw" id = "l_pw" autocomplete="off" required>
                <label for ="pw">PASSWORD</label>
            </div>
            <div class = "btn-area">
            	<button id = "btn" type = "submit" >LOGIN</button>
            	
            </div>
           
            <div class = "caption">
                <a href='jointest.jsp'>회원가입하러 가기</a>
            </div>
        </form>

    </section>

    <script>
        let id = $('#id');
        let pw = $('#pw');
        let btn = $('#btn');

        $(btn).on('click', function(){
            if($(id).val() == "") {
                $(id).next('label').addClass('warning');
                setTimeout(function() {
                    $('label').removeClass('warings')
                },1500)
            }
            else if($(pw).val() == "") {
                $(pw).next('label').addClass('warning')
            }
        });

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