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
	tour tourInfo = (tour)session.getAttribute("tourInfo");
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
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="assets/css/reviewStar.css?after"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/dragdrop.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>

<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
 <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

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
       	color:white
	}
	.sh{
	float:left
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
                     <a href="jointest.jsp" class="btn btn-primary py-2 px-4 d-none d-lg-block">login</a>
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
          
          
          
          

	<div class="flex_container" id="flex_cont">
	
		
		<!-- -------------------------관광지메뉴 영역 시작--------------------------------- -->
		<div id="tour_div">
		
			<header class="codrops-header">
				<h1>
					tour 상세메뉴<span>${tourInfo.getName()}</span>
				</h1>
			</header>
		
		
		
		<div class="content">
		
		<!-- 관광지 정보 출력 영역 -->


			<h2>무엇을 적으면 좋을까요</h2>
		
			<div class="content">
			<a href="PlanAddCon?tourNum=${tourInfo.getNum()}">플래너에 추가하기</a>
			
	   	 	</div>
	    	
			<br>
			
			<div><%-- 
			<%=ImgList.get(0)%> --%>
			<c:forEach var="i" items="${ImgList}" varStatus="status">
					<img src="${i}" alt="img11" width="300px" height="200px"/>
				</c:forEach>
			<c:forEach var="r" items="${ReviewList}" varStatus="status">
						
						
						<h2>
							<span class="sh" id="sh<%=num%>"><c:out value="${r.rev_star}"/></span>
							<div class="score-wrapper">
						<div class="score">
							<div class="foreground" id="test<%=num%>">★★★★★</div>
							<div class="background">☆☆☆☆☆</div>
						</div>
						<span class="display<%=num%>">
			
						</span>
						</h2>
						<c:out value="${r.rev_time}"/>
						<p><c:out value="${r.rev_content}"/></p>
						<script>
				$(function(){
					const rate=Number($('#sh<%=num%>').text());
					const max=5;
					const percent = rate/max*100;
				
					
					$("#test<%=num%>").css("width",percent+"%");
					$("#display<%=num%>").text(rate);
				});
			</script>
			<%num++; %>
			</c:forEach>
					</div>	
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
					<a href="tour_food.jsp">음식점</a>
					<a href="tour_cafe.jsp">카페</a>

				</nav>
			</header>
		
		
		
		<div class="content">
			
			<!-- itemNum : 박스 번호 -->
			<!-- item : input태그 내에 작성된 내용 -->
			<!-- createItem() : tour_name,tour_num,tour_add 값 입력받아 tour_name은 출력해주고, num과 address는 저장해줌 -->
			
			<form action="PlanInsertCon" method="post">
			여행일을 선택해주세요 >> <input type="date" id = "planInsert" name="plan_date"><br/><br/>
		        <div>
		           
		            <div style="clar:both;">
		            	
		                <input type="button" id="addItem" value="추가" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');"/>
		                <input type="button" value="임시저장" onclick="setInPlan(); updatePage();"style="margin-left:20px"/>
		                <input type="submit" id="submitItem" value="내 Planner에 저장하기" onclick="removeInplan();" style="margin-left:20px"/>
		               
		                
		               
		            </div>
		        </div>
		        <br />
		        <div id="itemBoxWrap"></div>
		    </form>
		    
		</div>
		
		<br><br>
		

	</div>
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
	
	
</body>
</html>