
<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.tourDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
tourDAO dao = new tourDAO();
List<tour> cafeList = dao.selectCafeList();
pageContext.setAttribute("cafeList", cafeList);
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hover Effect Ideas | Set 1</title>
<meta name="description"
	content="Hover Effect Ideas: Inspiration for subtle hover effects" />
<meta name="keywords"
	content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
<link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<style>
	#flex_cont{display:flex;}
	#tour_div{
		width:70%;
	}
	#plan_div{
		width:20%
		background-color:red;
	}
	.soohyeon{
		position: fixed;
        right: 20px;
       	top: 10px;
       	color:white
	}
</style>
	
</head>


<body>


	<header id="menuBlock">
		<nav>
			<ul>
				<li><a href="main.jsp">main</a></li>
				<li><a href="tour_att.jsp">tour</a></li>
				<li><a href="planner.jsp">planner</a></li>
				<li><a href="diary1.jsp">diary</a></li>
				<li><a href="board.jsp">board</a></li>
				<!--<li><a href="#elements">Elements</a></li>-->
			</ul>
			<c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="Join.jsp" class="soohyeon">login</a>
                  </c:when>
                  <c:otherwise>
                     <a href="LogoutCon" class="soohyeon">logout</a>
                  </c:otherwise>
               </c:choose>
		</nav>
	</header>




	<div class="container" id="flex_cont">
	
	
		<div id="tour_div">
		
			<header class="codrops-header">
				<h1>
					attraction<span>관광지에 대한 정보를 추천해주는 메뉴입니다.</span>
				</h1>
				<nav class="codrops-demos">

			</nav>

		</div><!-- /container -->
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>
	</body>

		</header>

					<a href="tour_att.jsp">관광지</a>
					<a href="tour_food.jsp">음식점</a>
					<a href="#" class="current-demo">카페</a>

				</nav>
			</header>
		
		
		

		<div class="content">
		

		
		<h2>츄릅</h2>
			<div class="grid">
			
			<c:forEach var="c" items="${cafeList}" varStatus="status">
				
				<figure class="effect-marley">
				
					<img src="images/벌레.png" alt="img11" />
					<figcaption>
						<h2>
							<span><c:out value="${c.name}"/></span>
							
						</h2>
						<p><c:out value="${c.address}"/></p>
						<a href="TourInfoCon?tourNum=${c.num}">View more</a>
						
					</figcaption>
				</figure>
			</c:forEach>
			</div>
		
		

			<h2>관광지 카테고리2</h2>
			<div class="grid">
				<figure class="effect-marley">
					<img src="images/벌레.png" alt="img11" />
					<figcaption>
						<h2>
							진짜 멋있는<span>금오름</span>
						</h2>
						<p>관광지의 주소가 출력되는 곳입니다.</p>
						<a href="#">View more</a>
					</figcaption>
				</figure>
			</div>

		</div>
		</div>
		
		
		
		
		<div class="content">
		
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			<h2>플래너가 출력되는 공간입니다.</h2>
			
			
		</div>
		</div>

	</div>
	<nav class="codrops-demos">
					<a href="tour_att.jsp">관광지</a>
					<a href="tour_food.jsp">음식점</a>
					<a href="#" class="current-demo">카페</a>
	</nav>
	<!-- Related demos -->
	<section class="related"></section>
	</div>
	<!-- /container -->
	<script>
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call(document.querySelectorAll('a[href="#"')).forEach(
				function(el) {
					el.addEventListener('click', function(ev) {
						ev.preventDefault();
					});
				});
	</script>
</body>
</html>