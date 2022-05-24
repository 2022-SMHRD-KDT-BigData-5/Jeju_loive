<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.plannerDAO"%>
<%@page import="com.smhrd.domain.planner"%>
<%@page import="java.util.List"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	plannerDAO dao = new plannerDAO();
	Member loginMember = (Member)session.getAttribute("loginMember");
	String mem_id = loginMember.getId();
	List<planner> plannerList = dao.selectPlanner(mem_id);
	pageContext.setAttribute("plannerList",plannerList);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
      <meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
      <meta name="author" content="Codrops" />
      <link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/set2.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/plusButton.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
      <script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
      
       	 <!-- Favicon -->

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="assets/css/maintest.css" />
     <link rel="shortcut icon" href="#">
      
      		<style>
		.soohyeon{
		position: fixed;
        right: 20px;
       	top: 10px;
       	color:white
		}
		
		
		body{
		background-color : #F6F6F6;
		}
		</style>
</head>

<body>
   
  <!-- Topbar Start -->
    <div class="container-fluid bg-dark">
        <div class="row py-2 px-lg-5">
            <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                     <a class="text-white px-2" href="">
                        <i class="fa fa-globe"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fa fa-minus"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fa fa-minus"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fa fa-minus"></i>
                    </a>
                    <a class="text-white pl-2" href="">
                        <i class="fa fa-plane"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
            <a href="maintest.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><i class="fa fa-paper-plane"></i> 제주살앙</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="maintest.jsp" class="nav-item nav-link">Home</a>
                    <a href="tour_att.jsp" class="nav-item nav-link">투어</a>
                    <a href="planner.jsp" class="nav-item nav-link active">플래너</a>
                    <a href= "diarytest.jsp" class="nav-item nav-link">다이어리</a>
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
        </nav>
    </div>
    <!-- Navbar End -->
      
   
   
   
   
   <div><h2 class="plan">Planner</h2></div>
	
    <div class="grid">
	<c:forEach var = "p" items="${plannerList}" varStatus="status">
        <figure class="effect-ming">
            <img src="images/yeonhee-VWLhifg5VMA-unsplash.jpg" alt="yeonhee-VWLhifg5VMA-unsplash"/>
            <figcaption>
                <h2><span><c:out value="${p.plan_name}"/></span></h2>
                <p><c:out value="${p.plan_date}"/></p>
                <a href="inplan.jsp?plan_date=${p.plan_date}&mem_id=${p.mem_id}">View more</a>
            </figcaption>
            </figure>         
	</c:forEach>
    </div>
	
	
	
   <!--   <button id ="btn1">+</button>
   
   <script>
    
    $('#btn1').click(function(){
        
           $('div.grid').append('<figure class="effect-ming"><img src="images/yeonhee-VWLhifg5VMA-unsplash.jpg" alt="yeonhee-VWLhifg5VMA-unsplash"/><figcaption><h2><span>Planner</span></h2><p>2022년 05월 13일</p><a href="#">View more</a></figcaption></figure>')

        })
    
   
</script>  

 -->

</body>


</html>