<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별점</title>

	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/reviewStar.css"/>
</head>

<body>
	<div class="score-wrapper">
		<div class="score">
			<div class="foreground">★★★★★</div>
			<div class="background">☆☆☆☆☆</div>
		</div>
		<span class="display">
			4.3
		</span>
	</div>
	
	<script>
		$(function(){
			const rate=4.3;
			const max=5;
			const percent = rate/max*100;
		
			$(".score-wrapper").find(".foreground").css("width",percent+"%");
			$(".scope-wrapper").find(".display").text(rate);
		});
	</script>
</body>
</html>