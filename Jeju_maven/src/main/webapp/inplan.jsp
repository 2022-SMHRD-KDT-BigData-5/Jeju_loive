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
	
	tourDAO dao = new tourDAO();
	Member loginMember = (Member)session.getAttribute("loginMember");
	Timestamp plan_date = Timestamp.valueOf("2022-05-13 00:00:00");
	String mem_id = loginMember.getId();
	inplan inplan=new inplan(mem_id, plan_date);	
	List<tour> inplanTourList = dao.selectTour(inplan);
	pageContext.setAttribute("inplanTourList",inplanTourList);

	System.out.println(inplanTourList.get(1).getName());
	System.out.println(inplanTourList.get(1).getAddress());
	%>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
		 <link href="https://fonts.googleapis.com/
    		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    		rel="stylesheet">
    	
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
    background-image: url("./images/inplanbg.png");
   background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
   	
}


h1{
    text-align: center;
    font-size : 50px;
}



.hover1{
    width: auto;
    height: auto;
    position: relative;
    cursor: pointer;
    overflow: hidden;
}

.hiddentext{
    width: 100%;
    height: 50px;
    padding: 10px;
    color: #FFFFFF;
    background: #f2cbf2;
    position: absolute;
    bottom: 0px;
}

#main_plan{
	position : relative;
    width: 1000px;
    height: 1200px;
    
    padding: 20px 30px;
    margin: 0 auto;
    margin-bottom : 30px;
    z-index: 2;
    background-color : 	#FFFFF0;
}

#main_plan li{
    display: list-item;
    margin-bottom:  80px;
    border-top: 1px solid orange;
   
    
}





.list_theme.theme_item{
    overflow: hidden;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    
    
}





.list_theme.theme_thumb{
    width: 170px;
    height: 114px;
    overflow: hidden;
    float: left;
    display: block;
    position: relative;
    margin-right: 21px;
}


.list_theme.title.elss{
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    height: auto;
    margin-top: 2px;
}

strong{
    font-weight: bold;
}


.list_theme.title{
    max-height: 40px;
    line-height: 20px;
    -webkit-line-clamp : 2;
    -webkit-box-orient: vertical;
    font-size: 100px;
}

.list_theme .desc{
    display: -webkit-box;
    overflow: hidden;
    max-height: 40px;
    line-height: 20px;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-top: 2px;
    font-size: 13px;
}

.list_theme.source_box{
    display: inline-block;
    overflow: hidden;
    max-width: 100%;
    margin-top: 2px;
    line-height: 20px;
    vertical-align: top;
    position: absolute;
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: 0px;
    
}

.list_theme.reviewDate{
    float: right;
}

.imgBoxDiv{
    width: 200px;
    height: 150px;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    box-shadow: 2px 2px 8px 0px #000;
    float: left;
    margin-right: 30px;
}


.imgDiv{
    float: left;
    width:100%;
    height: 100%px;
    position: absolute;
   
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: -6px;
    overflow: hidden;

}

.imgBoxDiv:hover .imgDiv{
    bottom: 30px;
}

.imgDescDiv{
    width: 100%;
    height: 25px;
    padding: 5px;
    color: black;
    background: white;
    position: absolute;
    bottom: 0px;
}

.theme-itme.h3{
    opacity: 0;
    transition: 0s;
    margin-top: 86%;
}

h3{
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

figure{
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 40px;
    margin-inline-end: 40px;
}

.dayPlan{
	margin-top: 50px;
	font-size
	
	

}

#menuBlock{
	margin-bottom : 30px;
}

.logo{
	
	position: absolute;
	left : 80%;
	top : -140px;
	z-index: 1;
}


.rightPage{
	position : absolute;
	right : -120px;
	top : 35%;
	border-radius: 70%;
	background-color: rgb(255,255,255,0);
}

.leftPage{
	position : absolute;
	left : -120px;
	top : 35%;
	border-radius: 70%;
	background-color: rgb(255,255,255,0);
}

.p-0{
	background-color : #FFFFF0;
	color : #FFFFF0;
}

    </style>
	
  </head>

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
        
  
    <div  class = "dayPlan"><h1> 1일차 플랜</h1></div>
	
	
	
	
    <div id = "main_plan">
    <div> <a class="logo" href="main.jsp"><span><img src="images/logo2.png" alt="logo"></span></a></div>
    <img src="images/right.png" class = "rightPage"> <!--다음 플래너로 넘어 가기  -->
    <img src="images/left.png" class = "leftPage"> <!--이전 플래너로 넘어 가기  -->
    
    
        <ul class = "list_theme">
        <%=inplanTourList.get(1).getName() %>
    	<c:forEach var="t" items="${inplanTourList}" varStatus="status">
    		
            <li class = "theme_itme">
   
                <div class="imgBoxDiv">
                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="${t.img}"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>
                        <span class="thumb_bd"></span>
                    </a>
                </div>
                <strong calss = "title elss"> <c:out value ="${t.name}"/> </strong>
                <p class = "desc"></p>
                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source"></span>
                        <span class = "source_inner"> <c:out value="${t.address}"/></span>
                 </div>
            </li>
        </c:forEach>
        
        </ul>
	</div>
  </body>
</html>