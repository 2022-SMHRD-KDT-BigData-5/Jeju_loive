<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.domain.diaryAlbum"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.diaryDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%
diaryDAO dao= new diaryDAO();
Member loginMember = (Member)session.getAttribute("loginMember");
List<String> tripday=null;
List<String> albumlist=null;
List<String> testList = new ArrayList<String>();
SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
String realday="";
if(loginMember != null){
	
	String id= loginMember.getId();
	tripday=dao.selectDiaryDay(id);
	System.out.println(tripday.size());
	if(tripday!=null){
	for(int i=0;i<tripday.size();i++){
		 String day=tripday.get(i);
		 
		 Timestamp timestamp = Timestamp.valueOf(day);
		 diaryAlbum album= new diaryAlbum(timestamp,id);
		 albumlist=dao.selectAlbum(album);
		 
		 if(albumlist.size()!=0){
		 System.out.println(albumlist.get(0));
		 testList.add(albumlist.get(0));
		 }
		 
		}
	
	}
	}
%>
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="assets/css/dragdrop.css" />
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script><!-- 지도만드는녀석^^지수꼬! 건들면 나 화낸다~-^-(빠직) -->
<script src="assets/js/dragdrop.js"></script>
<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
 <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/a\jax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="assets/css/maintest.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	
	
<style>
	#flex_cont{display:flex;}
	#tour_div{width:70%;}
	#plan_div{width:20%;}
	.soohyeon{
		position: fixed;
        right: 20px;
       	top: 10px;
       	color:white;
	}
	.active{
		 background-color: pink;
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
                    <a href="tour_att.jsp" class="nav-item nav-link active">투어</a>
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
     
    <!-- Navbar End -->

	<div class="flex-container" id="flex_cont">
	
	
		<div id="tour_div">
		
			<header class="codrops-header">
				<h1>
					Diary<span>My Diary</span>
				</h1>
				
			</header>
		
		
		
		<div class="content">
		
		<!-- 관광지 정보 반복출력 -->

		<h2 id="sh">내 추억들</h2>
			<button id="add">add</button>
			<div class="grid">
			
						<%
						if(tripday!=null ){
						for(int i=0;i<tripday.size();i++){
							String day=tripday.get(i);
							 
							Timestamp timestamp = Timestamp.valueOf(day);
							realday = sdf1.format(timestamp);
						
						%>
								<figure class="effect-marley">
									<%if (albumlist.size()!=0){ %>
									<img src="<%=testList.get(i) %>" alt="img11" width=480px" height="300px" />
									<%}else{ %>
									<img src="images/click.png" alt="img11" width=480px" height="300px" />
									<%} %>
									<!-- 이미지 주소를 넣는 공간입니다^^ -->
									<figcaption>
										<h2>
											<span><%=realday %></span>
										</h2>
										<p>
											<%=realday %>
										</p>
										<a href="diaryDetailCon?dia_tripday=<%=realday%>">View more</a>
									</figcaption>
								</figure>
					
					<% }}%>
					
				</div>
			
			</div>
			
	</div>

	
		<!-- ---------------------------~~지금부터 플래너 공간~~-------------------------- -->
	
	
		<div id="plan_div">
			<header class="codrops-header">
				<h1>
					Plan<span>Plan에 대한 정보를 추천해주는 메뉴입니다.</span>
				</h1>
				<nav class="codrops-demos">

					<a href="#" class="current-demo">관광지</a>
					<a href="#">음식점</a>
					<a href="#">카페</a>

				</nav>
			</header>
		
		
		
		<div class="content">
			
			<!-- itemNum : 박스 번호 -->
			<!-- item : input태그 내에 작성된 내용 -->
			<!-- createItem() : tour_name,tour_num,tour_add 값 입력받아 tour_name은 출력해주고, num과 address는 저장해줌 -->
			
			<form action="PlanInsertCon" method="post" id = "planInsert">
			여행일을 선택해주세요 >> <input type="date" name="plan_date"><br/><br/>
		        <div>
		            <div style="float:left;width:100px;">아이템 추가 :</div>
		            <div style="clar:both;">
		            	
		                <input type="button" class = "w-btn-red w-btn-red-outline" id="addItem" value="추가" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');" style="margin-left:20px" />
		                <input type="button" class = "w-btn-red w-btn-red-outline" value="임시저장" onclick="setInPlan();" style="margin-left:50px" />
		                <input type="submit" class = "w-btn-red w-btn-red-outline" id="submitItem" value="내 Planner에 저장하기" onclick="removeInplan();" style="margin : 10px 0px 0px 120px" />
		               
		                
		               
		            </div>
		        </div>
		        <br />
		        <div id="itemBoxWrap"></div>
		    </form>
		    
		</div><br><br>
		
<!-- 여기부터 지도공간~~~~~~~~~~~~^^지수꼬!건들지마삼 ㄱ-;;(빠직) -->		
		<p style="margin-top:-12px">
    <em class="link">
        <!-- <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a> -->
    </em>
</p>
<div id="map" style="width:100%;height:350px;"></div>


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

	<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
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



<script>
	
	
		var getAdds =[];
		getAdds = localStorage.getItem('tourAdd');
		addList = getAdds.split(",");
		var getNames =[];
		getNames = localStorage.getItem('tourName');
		nameList = getNames.split(",");

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level:10 // 지도의 확대 레벨
		    };  

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		
		
		function addMaker(addr,namel){
			
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
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+namel+'</div>'
			        });
			        infowindow.open(map, marker);

			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords); 
			        
			        
			    } 
			});   
			
		}
		
		
	

</script>

		
		
		</div>
		
		
		
		
		
		
		
		
		
		</div> <!--  컨테이너 끝 -->
		
		
		
	
	<!-- Related demos -->
	<section class="related"></section>

	
	
	
	
	<script>
		

		
		
		
		// For Demo purposes only (show hover effect on mobile devices)
		[].slice.call(document.querySelectorAll('a[href="#"')).forEach(
				function(el) {
					el.addEventListener('click', function(ev) {
						ev.preventDefault();
					});
				});
	</script>
	



	 <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script type="text/javascript">
	$(document).on('click','#add',function(){
		$('.grid').append(
				'<figure class="effect-marley">'+
				'<input type="date" class="dateadd">'+
				'<img src="images/plus.png" alt="img11" width=480px" height="300px" class="adddiary"/>'+
				'</figure>')
			
	})
	$(document).on('click','.adddiary',function(){
		let dateadd=$('.dateadd').val();
		$(location).attr('href', 'diaryAddCon?date='+dateadd);
		
	})
	</script>
</body>
</html>