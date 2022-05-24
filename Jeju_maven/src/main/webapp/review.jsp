<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%	
	BigDecimal tour_num = new BigDecimal(request.getParameter("tour_num"));
	//BigDecimal tour_num = new BigDecimal(601);
	tourDAO t_dao = new tourDAO();
	tour tourInfo = (tour)t_dao.selectTourInfo2(tour_num);
	pageContext.setAttribute("tourInfo",tourInfo);
	Member loginMember = (Member)session.getAttribute("loginMember");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/star.css" />
</head>
<body>

		<form name="myform" id="myform" method="post" action="reviewCon"><br/>
		작성자ID <input type="text" name="mem_id" value="${loginMember.getId()}" readonly/><br/>
		여행지ID <input type="text" id="tour_num" name="tour_num" value="${tourInfo.getNum()}" readonly/><br/><br/>
    	<fieldset>
        <legend>${tourInfo.getName()} 후기 작성</legend>
        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
    	</fieldset><br>
    	<textarea rows="10" cols="50" name="content"></textarea><br/>
    	<input type="submit" value="후기 등록">
		</form>

<script>
window. onload=function(){ 
	$(document).find('input[name=tour_num]').hide();
}
</script>
</body>
</html>