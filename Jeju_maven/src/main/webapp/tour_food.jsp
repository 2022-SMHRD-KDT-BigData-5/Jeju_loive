<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	tourDAO dao = new tourDAO();
	List<tour> foodList = dao.selectFoodList();
	pageContext.setAttribute("foodList", foodList);
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Hover Effect Ideas | Set 1</title>
		<meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
		<meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
	<header id="menuBlock">
		<nav>
			<ul>
				<li><a href="main.jsp">main</a></li>
				<li><a href="diary1.jsp">diary</a></li>
				<li><a href="tour_att.jsp">tour</a></li>
				<li><a href="board.jsp">board</a></li>
				<!--<li><a href="#elements">Elements</a></li>-->
			</ul>
		</nav>
	</header>
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="main.jsp"><span>메인으로 돌아가기</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="planner.jsp"><span>플래너 생성하기</span></a></span>
			</div>
			<header class="codrops-header">
				<h1>Food<span>관광지에 대한 정보를 추천해주는 메뉴입니다.</span></h1>
				<nav class="codrops-demos">
	
					<a  href="tour_att.jsp">관광지</a>
					<a class="current-demo" href="tour_food.jsp">음식점</a>
					<a href="tour_cafe.jsp">카페</a>
					
				</nav>
			</header>
			<div class="content">

			<h2>냠냠</h2>
			<div class="grid">

				<c:forEach var="f" items="${foodList}" varStatus="status">

					<figure class="effect-marley">

						<img src="images/벌레.png" alt="img11" />
						<figcaption>
							<h2>
								<span><c:out value="${f.name}" /></span>

							</h2>
							<p>
								<c:out value="${f.address}" />
							</p>
							<a href="#">View more</a>
						</figcaption>
					</figure>
				</c:forEach>
			</div>


			<h2>한식</h2>
				<div class="grid">
					<figure class="effect-marley">
						<img src="images/1.jpg" alt="img11"/>
						<figcaption>
							<h2>Sweet <span><%=foodList.get(0).getName() %></span></h2>
							<p>Marley tried to convince her but she was not interested.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-marley">
						<img src="images/1.jpg" alt="img12"/>
						<figcaption>
							<h2>Sweet <span>Marley</span></h2>
							<p>Marley tried to convince her but she was not interested.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
						
					
				</div>
			</div>
			<nav class="codrops-demos">
					<a  href="tour_att.jsp">관광지</a>
					<a class="current-demo" href="tour_food.jsp">음식점</a>
					<a href="tour_cafe.jsp">카페</a>
			</nav>
			<!-- Related demos -->
			<section class="related">
				
				
				
				
			</section>
		</div><!-- /container -->
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>
	</body>
</html>