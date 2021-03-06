<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.review"%>
<%@page import="com.smhrd.domain.reviewDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String str_num = request.getParameter("tourNum");
reviewDAO dao = new reviewDAO();
BigDecimal tour_num = new BigDecimal(str_num);
List<review> ReviewList = dao.selectReview(tour_num);
pageContext.setAttribute("ReviewList", ReviewList);
tourDAO tdao = new tourDAO();
int tourNum = Integer.parseInt(str_num);
List<tour> ImgList = tdao.selectImgList(tourNum);
pageContext.setAttribute("ImgList", ImgList);
tour tourInfo = (tour) session.getAttribute("tourInfo");
int num=1;
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
<link rel="stylesheet" href="assets/css/dragdrop.css" />
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="assets/css/reviewStar.css?after" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/dragdrop.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>

<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

<!-- Favicon -->
<link rel="icon" type="image/png" sizes="192x192"
	href="/android-icon-192x192.png">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link rel="stylesheet" href="assets/css/maintest.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">




<style>
#flex_cont {
	display: flex;
}

#tour_div {
	width: 70%;
}

#plan_div {
	width: 20%;
}

.soohyeon {
	position: fixed;
	right: 20px;
	top: 10px;
	color: white
}

.sh {
	float: left
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
					<a class="text-white px-2" href=""> <i class="fa fa-globe"></i>
					</a> <a class="text-white px-2" href=""> <i class="fa fa-minus"></i>
					</a> <a class="text-white px-2" href=""> <i class="fa fa-minus"></i>
					</a> <a class="text-white px-2" href=""> <i class="fa fa-minus"></i>
					</a> <a class="text-white pl-2" href=""> <i class="fa fa-plane"></i>
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
			<a href="maintest.jsp" class="navbar-brand ml-lg-3">
				<h1 class="m-0 display-5 text-uppercase text-primary">
					<i class="fa fa-paper-plane"></i> ????????????
				</h1>
			</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between px-lg-3"
				id="navbarCollapse">
				<div class="navbar-nav m-auto py-0">
					<a href="maintest.jsp" class="nav-item nav-link">Home</a> <a
						href="tour_att.jsp" class="nav-item nav-link active">??????</a> <a
						href="planner.jsp" class="nav-item nav-link">?????????</a> <a
						href="diary1.jsp" class="nav-item nav-link">????????????</a> 
				</div>
				<nav>

					<c:choose>
						<c:when test="${empty loginMember}">
							<a href="jointest.jsp"
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





	<div class="flex_container" id="flex_cont"> <!-- ???????????? ?????? -->


		<!-- -------------------------??????????????? ?????? ??????--------------------------------- -->
		<div id="tour_div">

			<header class="codrops-header">
				<h1>
					tour ????????????<span>${tourInfo.getName()}</span>
				</h1>
			</header>



			<div class="content">

				<!-- ????????? ?????? ?????? ?????? -->


				<h2>????????? ????????? ????????????</h2>

				<div class="content">
					<a href="PlanAddCon?tourNum=${tourInfo.getNum()}">???????????? ????????????</a>

				</div>

				<br>

				<div>
					<%-- 
			<%=ImgList.get(0)%> --%>
					<c:forEach var="i" items="${ImgList}" varStatus="status">
						<img src="${i}" alt="img11" width="300px" height="200px" />
					</c:forEach>
					<c:forEach var="r" items="${ReviewList}" varStatus="status">


						<h2>
							<span class="sh" id="jsh<%=num%>"><c:out value="${r.rev_star}" /></span>
							<div class="score-wrapper">
								<div class="score">
									<div class="foreground" id="changewidth<%=num%>">???????????????</div>
									<div class="background">???????????????</div>
								</div>
								<span class="display" id="display<%=num%>"> </span>
						</h2>
						<c:out value="${r.rev_time}" />
						<p>
							<c:out value="${r.rev_content}" />
						</p>
						<script>
				$(function() {
					const rate = Number($('#jsh<%=num%>').text());
					const max = 5;
					const percent = rate / max * 100;

					$("#changewidth<%=num%>").css("width",percent + "%");
					$("#display<%=num%>").text(rate);
				});
			</script>
					<%num++; %>
					</c:forEach>
				</div>
			</div>
			


		</div>
		
		
		
	<!-- ---------------------------~~???????????? ????????? ??????~~-------------------------- -->


	<div id="plan_div">
		<header class="codrops-header">
			<h1>
				Plan<span>Plan??? ?????? ????????? ??????????????? ???????????????.</span>
			</h1>
			<nav class="codrops-demos">

				<a href="#" class="current-demo">?????????</a> <a href="tour_food.jsp">?????????</a>
				<a href="tour_cafe.jsp">??????</a>

			</nav>
		</header>



		<div class="content">

			<!-- itemNum : ?????? ?????? -->
			<!-- item : input?????? ?????? ????????? ?????? -->
			<!-- createItem() : tour_name,tour_num,tour_add ??? ???????????? tour_name??? ???????????????, num??? address??? ???????????? -->

			<form action="PlanInsertCon" method="post">
				???????????? ?????????????????? >> <input type="date" id="planInsert" name="plan_date"><br />
				<br />
				<div>

					<div style="clar: both;">

						<input type="button" id="addItem" value="??????"
							onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');" />
						<input type="button" value="????????????"
							onclick="setInPlan(); updatePage();" style="margin-left: 20px" />
						<input type="submit" id="submitItem" value="??? Planner??? ????????????"
							onclick="removeInplan();" style="margin-left: 20px" />



					</div>
				</div>
				<br />
				<div id="itemBoxWrap"></div>
			</form>

		</div>

		<br> <br>

		<!-- ???????????? ????????????~~~~~~~~~~~~^^?????????!??????????????? ???-;;(??????) -->
		<p style="margin-top: -12px">
			<em class="link"> <!-- <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            ?????? ?????? ????????? ?????? ????????? ???????????? ????????? ??????????????????.
        </a> -->
			</em>
		</p>
		<div id="map" style="width: 110%; height: 350px;"></div>


		


		<script>
			var getAdds = [];
			getAdds = localStorage.getItem('tourAdd');
			addList = getAdds.split(",");
			var getNames = [];
			getNames = localStorage.getItem('tourName');
			nameList = getNames.split(",");

			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
				level : 10
			// ????????? ?????? ??????
			};

			// ????????? ???????????????    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// ??????-?????? ?????? ????????? ???????????????
			var geocoder = new kakao.maps.services.Geocoder();

			function addMaker(addr, namel) {

				// ????????? ????????? ???????????????
				geocoder
						.addressSearch(
								addr,
								function(result, status) {

									// ??????????????? ????????? ??????????????? 
									if (status === kakao.maps.services.Status.OK) {

										var coords = new kakao.maps.LatLng(
												result[0].y, result[0].x);

										// ??????????????? ?????? ????????? ????????? ???????????????
										var marker = new kakao.maps.Marker({
											map : map,
											position : coords
										});

										//marker.setMap(map);

										// ?????????????????? ????????? ?????? ????????? ???????????????
										var infowindow = new kakao.maps.InfoWindow(
												{
													content : '<div style="width:150px;text-align:center;padding:6px 0;">'
															+ namel + '</div>'
												});
										infowindow.open(map, marker);

										// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
										map.setCenter(coords);

									}
								});

			}
		</script>


	</div>


	</div>		<!-------------------------- ???????????? ??? ------------------------->


	</div>

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

	<!-- ?????????????????? JS -->
	<script>
		//?????? ????????? localStorage??? ?????? ???????????? ??????
		function setInPlan() {
			//??? ????????????
			//1) name??? item??? input?????? ?????? value ????????????
			//2) class=tourNum, class=tourAdd??? input????????? text??? ???????????? /
			var tourNums = [];
			var tourAdds = [];
			var tourNames = [];
			var nums = [];
			var adds = [];
			var names = [];

			//        tourNums = document.getElementsByClassName('tourNum');
			//        tourAdds = document.getElementsByClassName('tourAdd');

			var len = $("input[name=tourNum]").length;
			for (var i = 0; i < len; i++) {
				tourNums[i] = $("input[name=tourNum]").eq(i).val();
			}

			var len = $("input[name=tourAdd]").length;
			for (var i = 0; i < len; i++) {
				tourAdds[i] = $("input[name=tourAdd]").eq(i).val();
			}

			var len = $("input[name=item]").length;
			for (var i = 0; i < len; i++) {
				tourNames[i] = $("input[name=item]").eq(i).val();
			}

			//????????? ???????????? ??????
			for (i = 0; i < tourNums.length; i++) {
				nums.push(tourNums[i]);
				adds.push(tourAdds[i]);
				names.push(tourNames[i]);
			}

			//?????????(????????? ??????)
			console.log(nums);
			console.log(adds);
			console.log(names);

			// ??????, ????????? JSON ???????????? ??????
			const numsString = JSON.stringify(nums);
			const addsString = JSON.stringify(adds);
			const namesString = JSON.stringify(names);

			//???????????? ??? ?????????????????? ??????
			console.log(namesString);

			//localStorage??? ?????? ??????
			window.localStorage.setItem('tourNum', nums)
			window.localStorage.setItem('tourAdd', adds)
			window.localStorage.setItem('tourName', names)

		}

		//????????? ????????? localStorage??? ?????? ???????????? ??????(????????????)
		window.onload = function getInPlan() {

			//localStorage?????? ?????????
			var getNums = [];
			var getAdds = [];
			var getNames = [];

			// JSON ???????????? ??????, ????????? ??????
			getNums = localStorage.getItem('tourNum');
			getAdds = localStorage.getItem('tourAdd');
			getNames = localStorage.getItem('tourName');
			numList = getNums.split(",");
			addList = getAdds.split(",");
			nameList = getNames.split(",");
			console.log(numList);

			for (i = 0; i < numList.length; i++) {
				$(document).ready(
						createItem(nameList[i], numList[i], addList[i]));
				addMaker(addList[i], nameList[i]);
			}
		};

		//???????????? ????????? localStorage ??????
		function removeInplan() {
			window.localStorage.clear();
		}
		function updatePage() {
			location.reload();
		}
	</script>

	
</body>
</html>