<%@page import="java.util.ArrayList"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.inplanDAO"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	
	// BigDecimal tour_num = new BigDecimal(request.getParameter("tour_num"));
	BigDecimal tour_num = new BigDecimal(601);
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
      <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="assets/css/maintest.css" />

</head>


<style>
    body{
    font-size: 12px;
    line-height: 16px;
   background-position: center;
   background-color : #F6F6F6;
   background-size: cover;
      
}


#reviewMain{
	width : 1500px;
	height : 800px;
	margin : 0 auto;
	margin-top : 25px;
	position : relative;
	display : flex;
	border: 1px solid black;
	border-radius: 30px;
	
	
	/* box-shadow: 5px 5px; */
}

.rightDiv{

height : 100%;
width : 40%;
}


.reImg{
	width : 60%;
	height : 100%;
	float:left;
	border-radius: 30px;

}
.reImgDiv{
width:100%;
    height:100%;
    object-fit:cover;
    border-radius: 30px;
    
    
}

#myform{

	position : absolute;
	width : 40%
	
	
}

.anyWrite{
height : 59%;
}

label {
    display: inline-block;
    margin-bottom: 1.5rem;
    margin-top : 0.5rem;
}

.retime{
	text-align: right;
	width : 500px;
	
}
.recontent{
	margin-top : 10px;
	margin-bottom : 10px;
	font-size : 20px;
	
}

li{
		margin-top : 10px;
	   border-bottom: 1px solid orange;
		width : 500px;
}
</style>


<body>

<div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
            <a href="main.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><i class="fa fa-paper-plane"></i> 제주살앙</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="main.jsp" class="nav-item nav-link active">Home</a>
                    <a href="tour_att.jsp" class="nav-item nav-link">투어</a>
                    <a href="planner.jsp" class="nav-item nav-link">플래너</a>
                    <a href= "diary1.jsp" class="nav-item nav-link">다이어리</a>
                    <a href= "board.jsp" class="nav-item nav-link">게시판</a>
                </div>
               <nav>
                <c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="logintest.jsp" class="btn btn-primary py-2 px-4 d-none d-lg-block">login</a>
                  </c:when>
                  <c:otherwise>
                     <a href="LogoutCon" class="btn btn-primary py-2 px-4 d-none d-lg-block">logout</a>
                  </c:otherwise>
               </c:choose>
               </nav>
                </div>
               
                 </nav>
            </div>
<!-- 리뷰작성 ================================================================================================ -->

	<div id="reviewMain">
	
	<div class = "reImg"><img src="./images/벌레.png"/ class="reImgDiv"></div>
	<div class = "rightDiv">
	<div class = 'anyWrite'>
		<ul>
		<li>
		<div>아이디</div>
		<div class="recontent">content</div>
		<div class="retime">reviw time</div>
		</li>
		<li>
		<div>아이디</div>
		<div class="recontent">content</div>
		<div class="retime">reviw time</div>
		</li>
		<li>
		<div>아이디</div>
		<div class="recontent">content</div>
		<div class="retime">reviw time</div>
		</li>
		
		</ul>
	</div>
	<div>
	<form name="myform" id="myform" method="post" action="reviewCon"><br/>
		<span>작성자ID <input type="text" name="mem_id" value="${loginMember.getId()}" readonly/>
		여행지ID <input type="text" id="tour_num" name="tour_num" value="${tourInfo.getNum()}" readonly/><br/><br/></span>
    	<fieldset>
        <legend>${tourInfo.getName()} 후기 작성</legend>
        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
    	</fieldset><br>
    	<textarea rows="10" cols="90" name="content"></textarea><br/>
    	<input type="submit" value="후기 등록">
		</form>
	</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	</div>


</body>


<script>
window. onload=function(){ 
	$(document).find('input[name=tour_num]').hide();
}
</script>



</html>