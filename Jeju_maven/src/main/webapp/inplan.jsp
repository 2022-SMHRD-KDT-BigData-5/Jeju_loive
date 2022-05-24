<%@page import="com.smhrd.domain.review"%>
<%@page import="com.smhrd.domain.reviewDAO"%>
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
   String plan_date_Str = request.getParameter("plan_date");
   String mem_id = request.getParameter("mem_id");
   tourDAO tdao = new tourDAO();
   inplanDAO dao = new inplanDAO();
   Member loginMember = (Member)session.getAttribute("loginMember");
   Timestamp plan_date = Timestamp.valueOf(plan_date_Str);
   inplan inplan=new inplan(mem_id, plan_date);   
   List<tour> inplanTourList = tdao.selectTour(inplan); 
   pageContext.setAttribute("inplanTourList",inplanTourList);

   %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link
	href="https://fonts.googleapis.com/
          icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
	rel="stylesheet">

<<<<<<< HEAD
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
=======
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="192x192"
	href="/android-icon-192x192.png">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/Jeju_loive.git

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link rel="stylesheet" href="assets/css/maintest.css" />
<link rel="stylesheet" type="text/css" href="assets/css/inplan.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/reviewStar.css" />
<link rel="preconnect" href="https://fonts.googleapis.com"
	type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin
	type="text/css">
</head>

<<<<<<< HEAD
  <body>
  


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
 
    <!-- Navbar End -->
        
  
    <div  class = "dayPlan"><h1> 1일차 플랜</h1></div>
    
    <div> <a class="logo" href="planner.jsp"><span><img src="images/logo2.png" alt="logo"></span></a></div>
   
    
    <div id = "main_plan">
        <ul class = "list_theme">
       <c:forEach var="t" items="${inplanTourList}" varStatus="status">
          
            <li class = "theme_itme">
   
                <div class="imgBoxDiv">
                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="${t.img}" class="imgc"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>
                        <span class="thumb_bd"></span>
                    </a>
                </div>
                <div class = "title elss"> <c:out value ="${t.name}"/> </div>
                <p class = "desc"></p>
                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source"></span>
                        <span class = "source_inner"> <c:out value="${t.address}"/></span>
                 </div>
            </li>
        </c:forEach>
        
        
        </ul><br><br>
        </div>
        <div id="map" style="width:60%;height:350px;position: absolute;
        left: 50%; transform: translateX(-50%);"></div>
=======
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/Jeju_loive.git


</head>

<body>
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
					<a href="main.jsp" class="nav-item nav-link active">Home</a> <a
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


	<div class="dayPlan">
		<h1>1일차 플랜</h1>
	</div>
	<div id="main_plan">
		<div>
			<a class="logo" href="planner.jsp"><span><img
					src="images/logo2.png" alt="logo"></span></a>
		</div>



		<ul class="list_theme">
			<c:forEach var="t" items="${inplanTourList}" varStatus="status" >

				<li class="theme_itme">

					<div class="imgBoxDiv">
						<a href="#" class="theme_thumb">
							<div class="imgDiv">
								<img src="${t.img}" class="imgc">
							</div>
							<div class="imgDescDiv">별점들어가라</div> <span class="thumb_bd"></span>
						</a>
					</div> <strong class="title elss"> <c:out value="${t.name}" />
				</strong>
					<p class="desc"></p>
					<div class="source_box">
						<span class="reviewDate">후기 날짜</span> <span class="source"></span>
						<span class="source_inner"> <c:out value="${t.address}" /></span>
					</div>
				</li>
			</c:forEach>


		</ul>
		<br>
		<br>
		<div id="map"
			style="width: 60%; height: 350px; position: absolute; left: 50%; transform: translateX(-50%);"></div>

		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>
			
			
			
		<script>
	//리뷰별점 출력하는 메서드
	
		$(function(){
			const rate=4;
			const max=5;
			const percent = rate/max*100;
		
			
			$(".score-wrapper").find(".foreground").css("width",percent+"%");
			$(".scope-wrapper").find(".display").text(rate);
		});
	</script>
	
	
	
		<script>
var positions = [""];
var names = [""];
<% for(int i =0; i< inplanTourList.size(); i++){%>
positions.push("<%=inplanTourList.get(i).getAddress()%>")
<%}%>
console.log("<%=inplanTourList.get(0).getAddress()%>")
<% for(int i =0; i< inplanTourList.size(); i++){%>
names.push("<%=inplanTourList.get(i).getName()%>")
<%}%>
console.log("<%=inplanTourList.get(0).getName()%>")




/* let list1 = document.getElementsByClassName('planAddList');

for(var i = 0; i< list1.length; i++){
   
}
 */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 10 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); 

var geocoder = new kakao.maps.services.Geocoder();

for(i=0; i<names.length; i++){
	 addMaker(positions[i],names[i]);
}


/* var positions = [
    {
      address:"제주특별자치도 서귀포시 성산읍 일출로 284-12",
        text: '문광사서점'
    }
]; */
    <%-- 
       	 for (var i = 0; i < positions.length; i ++) {
   // 주소-좌표 변환 객체를 생성합니다
   var geocoder = new kakao.maps.services.Geocoder();
   // 주소로 좌표를 검색합니다
   geocoder.addressSearch(positions[i], function(result, status) {
      // 정상적으로 검색이 완료됐으면 
       if (status === kakao.maps.services.Status.OK) {
         var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

         // 결과값으로 받은 위치를 마커로 표시합니다
         var marker = new kakao.maps.Marker({
            map: map,
            position: coords
         });
         
         console.log(document.getElementsByClassName('name<%=j%>')[0].innerHTML);
         var iwContent = '<div style="padding:6px;">'+content1[i]+'</div>',  //인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
          iwPosition = new kakao.maps.LatLng(result[0].y, result[0].x), //인포윈도우 표시 위치입니다
         iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
         
         var infowindow = new kakao.maps.InfoWindow({
             map: map, // 인포윈도우가 표시될 지도
             position : iwPosition, 
             content : iwContent,
             removable : iwRemoveable
         });  --%>
         
         
         function addMaker(addr,names){
 			
 			// 주소로 좌표를 검색합니다
 			geocoder.addressSearch(addr, function(result, status) {

 			    // 정상적으로 검색이 완료됐으면 
 			     if (status === kakao.maps.services.Status.OK) {

 			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

 			        // 결과값으로 받은 위치를 마커로 표시합니다
 			        var marker = new kakao.maps.Marker({
 			            map: map,
 			            position: coords
 			        });
 			        
 			        //marker.setMap(map);
 			        // 인포윈도우로 장소에 대한 설명을 표시합니다
 			        var infowindow = new kakao.maps.InfoWindow({
 			            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+names+'</div>',
 			            removable : true
 			            
 			        });
					
 			        infowindow.open(map, marker);
					
 			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
 			        map.setCenter(coords); 
 			        
 			        
 			    } 
 			});   
 			
 		}
         
      
      // 인포윈도우를 생성하고 지도에 표시합니다
     
      
      
         // 마커에 표시할 인포윈도우를 생성합니다 
         /* var infowindow = new kakao.maps.InfoWindow({
            //content: positions[i].content // 인포윈도우에 표시할 내용
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+positions[i].text+'</div>' // 인포윈도우에 표시할 내용
         });  */
         //infowindow.open(map, marker);
         /* kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
         kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow)); */
         // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
         //map.setCenter(coords);
  /*     } 

   }); 
   
} */

</script>
</body>
</html>