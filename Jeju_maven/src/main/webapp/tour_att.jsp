<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
tourDAO dao = new tourDAO();
List<tour> tourList = dao.selectTourList();
pageContext.setAttribute("tourList", tourList);
List<tour> tourImgList = dao.selectTourImgList();
pageContext.setAttribute("tourImgList", tourImgList);
tour tourInfo = (tour) session.getAttribute("tourInfo");
int num = 1;
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

<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
<link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
<link rel="shortcut icon" href="../favicon.ico">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="assets/css/dragdrop.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>
<!-- ?????????????????????^^?????????! ????????? ??? ?????????~-^-(??????) -->
<script src="assets/js/dragdrop.js"></script>
<!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="192x192"
	href="/android-icon-192x192.png">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/a\jax/libs/font-awesome/5.10.0/css/all.min.css"
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
	color: white;
}

.contents {
	text-align: center;
}


.active2 {
	background-color: #F29661;
}
top








:




 




10px








;
color








:white








;
}
</style>

</head>


<body>

	<!-- Navbar Start -->
	<div class="container-fluid p-0">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
			<a href="maintest.jsp" class="navbar-brand ml-lg-3">
				<h1 class="m-0 display-5 text-uppercase text-primary">
					<i class="fa fa-paper-plane"></i> ????????????
				</h1>
			</a>
			<!-- <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button> -->
			<div class="collapse navbar-collapse justify-content-between px-lg-3"
				id="navbarCollapse">
				<div class="navbar-nav m-auto py-0">
					<a href="maintest.jsp" class="nav-item nav-link">Home</a> <a
						href="tour_att.jsp" class="nav-item nav-link active">??????</a> <a
						href="planner.jsp" class="nav-item nav-link">?????????</a> <a
						href="diarytest.jsp" class="nav-item nav-link">????????????</a> 
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

	<div class="flex-container" id="flex_cont">


		<div id="tour_div">

			<header class="codrops-header">
				<h1>
					ATTRACTION<span>???????????? ????????? ???????????????.</span>
				</h1>
				<nav class="codrops-demos">

					<a href="#" class="current-demo">?????????</a> <a href="tour_food.jsp">?????????</a>
					<a href="tour_cafe.jsp">??????</a>

				</nav>
			</header>



			<div class="contents">


				<div class="content">

					<!-- ????????? ?????? ???????????? -->

					<div class="grid">
						<br>
						<%--          <h1><%=tourImgList.get(1).getT_add() %></h1> --%>
						<%-- <c:set var="str" value="" />  --%>
						<c:forEach var="t" items="${tourList}" varStatus="status">
							<%--  <c:forEach var="i" items="${tourImgList}" varStatus="status">
                     <c:if test="${i.tour_num != str }">  --%>
							<figure class="effect-marley" id="num<%=num%>">
								<%
								num++;
								%>
								<img src="${t.img}" alt="img11" width=480px " height="300px" />
								<!-- ????????? ????????? ?????? ???????????????^^ -->
								<figcaption>
									<h2>
										<span><c:out value="${t.name}" /></span>
									</h2>
									<p>
										<c:out value="${t.address}" />
									</p>
									<a href="TourInfoCon?tourNum=${t.num}">View more</a>
								</figcaption>
							</figure>
							<%--  </c:if>
                     <c:set var="str" value="${i.tour_num}" />
                   </c:forEach>  --%>
						</c:forEach>
						<div class="empty"></div>
					</div>
				</div>
				<!-- 
         <nav class="codrops-demos">
            <a href="#" class="current-demo">?????????</a>
            <a href="tour_food.jsp">?????????</a>
            <a href="tour_cafe.jsp">??????</a>

      </nav> -->
			</div>


		</div>


		<!-- ---------------------------~~???????????? ????????? ??????~~-------------------------- -->


		<div id="plan_div">
			<header class="codrops-header">
			
				<h1>
					Plan<span>?????? ??? ??????????????? ???????????????.</span>
				</h1>
				
			</header>



			<div class="content">

				<!-- itemNum : ?????? ?????? -->
				<!-- item : input?????? ?????? ????????? ?????? -->
				<!-- createItem() : tour_name,tour_num,tour_add ??? ???????????? tour_name??? ???????????????, num??? address??? ???????????? -->

				<form action="PlanInsertCon" method="post">
					???????????? ?????????????????? >> <input type="date" name="plan_date" id="planInsert"><br />
					<br />
					<div>

						<div style="clar: both;">

							<%--  <input type="button" id="addItem" value="??????" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');"/>
                      <input type="button" value="????????????" onclick="setInPlan(); updatePage();"/>
                      <input type="submit" id="submitItem" value="??? Planner??? ????????????" onclick="removeInplan();" /> --%>

							<input type="button" class="w-btn-red w-btn-red-outline"
								id="addItem" value="??????"
								onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');"
								style="margin-left: 20px" /> <input type="button"
								class="w-btn-red w-btn-red-outline" value="????????????"
								onclick="setInPlan(); updatePage();" style="margin-left: 20px" />

							<input type="submit" class="w-btn-red w-btn-red-outline"
								id="submitItem" value="??? Planner??? ????????????"
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
			<!-- Back to Top -->
			<a href="#" class="btn btn-lg btn-primary back-to-top"><i
				class="fa fa-angle-double-up"></i></a>


			<!-- --------------------????????? ????????????.. ?????? ???????????? ?????????&?????? ???--------------------- -->
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

			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<!-- --------------------????????? ????????????.. ?????? ???????????? ?????????&?????? ???--------------------- -->
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
											var marker = new kakao.maps.Marker(
													{
														map : map,
														position : coords
													});

											//marker.setMap(map);
											// ?????????????????? ????????? ?????? ????????? ???????????????
											var infowindow = new kakao.maps.InfoWindow(
													{
														content : '<div style="width:150px;text-align:center;padding:6px 0;">'
																+ namel
																+ '</div>'
													});
											infowindow.open(map, marker);
											// ????????? ????????? ??????????????? ?????? ????????? ??????????????????
											map.setCenter(coords);

										}
									});

				}
			</script>
		</div>
		<!------------------------------- ???????????? plan_div----------------------------------- -->
		
		<!-- -------------------------------???????????? ?????????----------------------------------- -->
	<script>
		let addbutton = 1;
		let soohyeonbuttons = document.getElementsByClassName('effect-marley').length;
		let soohyeonbuttonk = document.getElementsByClassName('effect-marley').length / 20;
		for (addbutton = 1; addbutton <= soohyeonbuttonk; addbutton++) {
			$('.empty').before('<button>' + addbutton + '</button>' + ' ');
		}
		$('button').eq(0).attr('class', 'active2');
		let i2 = $('.active2').text();
		console.log(i2);
		let h = 1;
		for (h = 1; h <= soohyeonbuttons; h++) {
			$('#num' + h).css("display", "none")
		}
		if (i2 == 1) {
			for (h = 1; h <= 20; h++) {
				$('#num' + h).css("display", "inline")
			}
		}

		$(document).on('click', 'button', function() {

			$('button').removeAttr('class');
			$(this).attr('class', 'active2');
			i2 = $('.active2').text();
			console.log(i2);
			let h = 1;
			for (h = 1; h <= soohyeonbuttons; h++) {
				$('#num' + h).css("display", "none")
			}
			if (i2 == 1) {
				for (h = 1; h <= 20; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 2) {
				for (h = 21; h <= 40; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 3) {
				for (h = 41; h <= 60; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 4) {
				for (h = 61; h <= 80; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 5) {
				for (h = 81; h <= 100; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 6) {
				for (h = 101; h <= 120; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 7) {
				for (h = 121; h <= 140; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 8) {
				for (h = 141; h <= 160; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 9) {
				for (h = 161; h <= 180; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 10) {
				for (h = 181; h <= 200; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 11) {
				for (h = 201; h <= 220; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 12) {
				for (h = 221; h <= 240; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 13) {
				for (h = 241; h <= 260; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 14) {
				for (h = 261; h <= 280; h++) {
					$('#num' + h).css("display", "inline")
				}
			} else if (i2 == 15) {
				for (h = 281; h <= 300; h++) {
					$('#num' + h).css("display", "inline")
				}
			}

			$('html').scrollTop(0);
		});

		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call(document.querySelectorAll('a[href="#"')).forEach(
				function(el) {
					el.addEventListener('click', function(ev) {
						ev.preventDefault();
					});
				});
	</script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>


	<!-- -----------------------------------???????????? ?????????------------------------------------ -->
		

	</div>
	<!--  ???????????? ??? -->

	<br>
	 <div style="position: fixed; bottom:20%; right:35%;"><input type="button" value="?????????" onClick="javascript:window.scrollTo(0,0)" />
	</div>

	<!-- Related demos -->
	<section class="related"></section>
	

	<!---------------------------- ???????????? ?????????????????? JS ---------------------------------------->
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

		window.onload = getInPlan();

		function getInPlan() {
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