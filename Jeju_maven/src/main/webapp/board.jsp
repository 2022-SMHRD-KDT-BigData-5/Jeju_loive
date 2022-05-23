<%@page import="com.smhrd.domain.Member"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
Member loginMember = (Member) session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="description"
	content="Hover Effect Ideas: Inspiration for subtle hover effects" />
<meta name="keywords"
	content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
<meta name="author" content="Codrops" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
<link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
<link rel="stylesheet" type="text/css" href="assets/css/set2.css" />
<link rel="stylesheet" type="text/css" href="assets/css/plusButton.css" />
<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Favicon -->

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link rel="stylesheet" href="assets/css/maintest.css" />
<link rel="shortcut icon" href="#">

<style>
.soohyeon {
	position: fixed;
	right: 20px;
	top: 10px;
	color: white
}

body {
	background-color: #F6F6F6;
}
</style>
</head>

<body>


	<!-- Topbar Start -->
	<div class="container-fluid bg-dark">
		<div class="row py-2 px-lg-5">
			<div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0"></div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<a class="text-white px-2" href=""> <i
						class="fab fa-facebook-f"></i>
					</a> <a class="text-white px-2" href=""> <i class="fab fa-twitter"></i>
					</a> <a class="text-white px-2" href=""> <i
						class="fab fa-linkedin-in"></i>
					</a> <a class="text-white px-2" href=""> <i
						class="fab fa-instagram"></i>
					</a> <a class="text-white pl-2" href=""> <i class="fab fa-youtube"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid p-0">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
			<a href="main.jsp" class="navbar-brand ml-lg-3">
				<h1 class="m-0 display-5 text-uppercase text-primary">
					<i class="fa fa-paper-plane"></i> 제주살앙
				</h1>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between px-lg-3"
				id="navbarCollapse">
				<div class="navbar-nav m-auto py-0">
					<a href="maintest.jsp" class="nav-item nav-link active">Home</a> <a
						href="tour_att.jsp" class="nav-item nav-link">투어</a> <a
						href="planner.jsp" class="nav-item nav-link">플래너</a> <a
						href="diary1.jsp" class="nav-item nav-link">다이어리</a> <a
						href="board.jsp" class="nav-item nav-link">게시판</a>
				</div>
				<nav>
					<c:choose>
						<c:when test="${empty loginMember}">
							<a href="logintest.jsp"
								class="btn btn-primary py-2 px-4 d-none d-lg-block">login</a>
						</c:when>
						<c:otherwise>
							<a href="LogoutCon"
								class="btn btn-primary py-2 px-4 d-none d-lg-block">logout</a>
						</c:otherwise>
					</c:choose>
				</nav>
			</div>

		</nav>
	</div>

	<!-- Navbar End -->


	<div class="container">
		<!-- Top Navigation -->

		<header class="codrops-header">
			<h1>
				BOARD <span></span><br>
			</h1>
			<nav class="codrops-demos">

				<a href="#">최신순</a> <a href="#">인기순</a>
			</nav>
		</header>




		<div class="content">

			<h2>다이어리 리스트</h2>
			<div class="grid">
				<figure class="effect-zoe">

					<img src="images/hyy.jpg" alt="img25" />
					<figcaption>
						<h2>
							다이어리<span>클릭하긔</span>
						</h2>
						<c:choose>
							<c:when test="${empty loginMember}">
								<a href="main.jsp#login">View more</a>
							</c:when>
							<c:otherwise>
								<a href="diary1.jsp">View more</a>
							</c:otherwise>
						</c:choose>








					</figcaption>

				</figure>

				<figure class="effect-zoe">
					<img src="images/hy.jpg" alt="img26" />
					<figcaption>
						<h2>
							다이어리<span>클릭하긔</span>
						</h2>
						<c:choose>
							<c:when test="${empty loginMember}">
								<a href="main.jsp#login">View more</a>
							</c:when>
							<c:otherwise>
								<a href="diary1.jsp">View more</a>
							</c:otherwise>
						</c:choose>
					</figcaption>
				</figure>
			</div>





			<section class="related">
				<p>
					여기에는<a href="#">무얼 입력하면 좋을까요</a>
				</p>



			</section>
		</div>
	</div>






	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="assets/js/maintest.js"></script>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/maintest.js"></script>
</body>
</html>