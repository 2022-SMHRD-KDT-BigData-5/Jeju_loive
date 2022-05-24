<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%	
	BigDecimal tour_num = new BigDecimal(request.getParameter("tour_num"));
	// BigDecimal tour_num = new BigDecimal(601);
	tourDAO t_dao = new tourDAO();
	tour tourInfo = (tour)t_dao.selectTourInfo2(tour_num);
	pageContext.setAttribute("tourInfo",tourInfo);
	Member loginMember = (Member)session.getAttribute("loginMember");
	String dia_tripday = request.getParameter("dia_tripday");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/star.css" />

<style type="text/css">

body{
	font-family: 'Do Hyeon', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: url("<%=tourInfo.getImg() %>") no-repeat center;
    background-size: cover;
}
body::before {
    content: "";
    position: absolute;
    z-index: 1;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: rgba(0,0,0,.5);
}
form{
    position: relative;
    z-index: 2;
}

.reviewSubmit{
    width: 100%;
    height: 50px;
    background: transparent;
    color: #fff;
    font-size: 20px;
    border: solid 2px #ffffff;
    border-radius: 25px;

}

.inputDiv{
 width: 100%;
    height: 50px;
    color: #fff;
    font-size: 20px;

}

input[type="text"] {
			width : 270px;
			height : 30px;
			color : white;
			font-size : 20px;
			border: solid 2px #ffffff;
			border-radius: 8px;
			background: transparent;
			}

textarea[name="content"]{
			color : white;
			font-size : 20px;
			border: solid 2px #ffffff;
			border-radius: 8px;
			background: transparent;

}

form h1 {
	font-size : 55px;
	color : white;
	
}
</style>


</head>



<body>

		<form name="myform" id="myform" method="post" action="reviewCon"><br/>
		<h1>${tourInfo.getName()} 후기 작성</h1>
		<div class = "inputDiv">작성자ID <input type="text" name="mem_id" value="${loginMember.getId()}" readonly/></div>
		<div class = "inputDiv">여행지ID <input type="text" id="tour_num" name="tour_num" value="${tourInfo.getNum()}" readonly/></div><br/><br/>
    	<fieldset>
    	<input type="date" name="dia_tripday" value="<%=dia_tripday %>" readonly>
        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
    	</fieldset><br>
    	<textarea rows="10" cols="50" name="content"></textarea><br/>
    	<input type="submit" value="후기 등록" class="reviewSubmit">
		</form>

<script>
window. onload=function(){ 
	$(document).find('input[name=tour_num]').hide();
}
</script>
</body>
</html>