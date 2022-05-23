<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<% 
	String tour_num_str = request.getParameter("tour_num"); 
	Member loginMember = (Member)session.getAttribute("loginMember");
	inplan inplan = (inplan)session.getAttribute("review_inplan");
	
	//변환
	BigDecimal tour_num = new BigDecimal(tour_num_str);
	
	//tour정보 불러오기
	tourDAO t_dao = new tourDAO();
	tour tourInfo = t_dao.selectTourInfo2(tour_num);
	String tourImg = tourInfo.getImg();
	String tourName = tourInfo.getName();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${tourImg}
	${tourName}
	<form action="reviewCon" method="post">
		여행지번호<input type="text" name="tour_num" value=tour_num readonly/><br>
		작성자<input type="text" name="mem_id" value="${loginMember.getId()}" readonly/><br>
		
		1<input type="radio" name="rev_star" value="1"/>
		2<input type="radio" name="rev_star" value="2"/>
		3<input type="radio" name="rev_star" value="3"/>
		4<input type="radio" name="rev_star" value="4"/>
		5<input type="radio" name="rev_star" value="5"/><br>
		
		<textarea cols="40" rows="10" name="rev_content"></textarea><br>
		<input type="submit">
		<input type="reset">
	</form>
</body>
</html>