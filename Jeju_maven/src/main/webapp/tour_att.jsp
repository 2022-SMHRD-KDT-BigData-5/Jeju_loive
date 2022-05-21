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
	int num=1;

	pageContext.setAttribute("tourImgList", tourImgList);	

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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
       	color:white;
	}
	.active{
		 background-color: pink;
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

					<a href="#" class="current-demo">관광지</a>
					<a href="tour_food.jsp">음식점</a>
					<a href="tour_cafe.jsp">카페</a>

				</nav>
			</header>
		
		
		
		<div class="content">
		
		<!-- 관광지 정보 반복출력 -->

		<h2 id="sh">가즈아</h2>
			<div class="grid">
			<h1><%=tourImgList.get(1).getT_add() %></h1>
			<c:forEach var="t" items="${tourList}" varStatus="status">
				
				<figure class="effect-marley" id="num<%=num%>">
					<%num++; %>
					<img src="images/벌레.png" alt="img11" /><!-- 이미지 주소를 넣는 공간입니다^^ -->
					<figcaption>
						<h2>
							${status.count}<span><c:out value="${t.name}"/></span>
						</h2>
						<p><c:out value="${t.address}"/></p>
						<a href="TourInfoCon?tourNum=${t.num}">View more</a>
					</figcaption>
				</figure>
			</c:forEach>
			
			</div>


		</div>
		
		
		<nav class="codrops-demos">
				<a href="#" class="current-demo">관광지</a>
				<a href="tour_food.jsp">음식점</a>
				<a href="tour_cafe.jsp">카페</a>

		</nav>
		
		</div>
		
		
		<!-- ---------------------------~~지금부터 플래너 공간~~-------------------------- -->
		
		
		<div id="plan_div">
			<header class="codrops-header">
				<h1>
					Plan<span>Plan에 대한 정보를 출력해주는 메뉴입니다.</span>
				</h1>
				<nav class="codrops-demos">

					<a href="#" class="current-demo">관광지</a>
					<a href="#">음식점</a>
					<a href="#">카페</a>

				</nav>
			</header>
		
		
		
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
	
	<!-- Related demos -->
	<section class="related"></section>
	</div>
	<!-- /container -->
	<script>
		
		let i=1;
		let s =document.getElementsByClassName('effect-marley').length;
		let k = document.getElementsByClassName('effect-marley').length/30;
		for(i=1;i<=k;i++){
			$('.grid').before('<button>'+i+'</button>');
		}
		$('button').eq(0).attr('class','active');
		let i2=$('.active').text();
		console.log(i2);
		let h=1;
		for(h=1;h<=s;h++){
			$('#num'+h).css("display" ,"none")
		}
		if(i2==1){
			for(h=1;h<=30;h++){
				$('#num'+h).css("display" ,"inline")
			}
		}
		
	
		
		
		
		
		$(document).on('click','button',function(){
			  
   			
			$('button').removeAttr('class');
			$(this).attr('class','active');
			i2=$('.active').text();
			console.log(i2);
			let h=1;
			for(h=1;h<=s;h++){
				$('#num'+h).css("display" ,"none")
			}
			
			
			
			
			if(i2==1){
				for(h=1;h<=30;h++){
					$('#num'+h).css("display" ,"inline")
				}
			}
			else if(i2==2){
				for(h=31;h<=60;h++){
					$('#num'+h).css("display" ,"inline")
				}
			}
			else if(i2==3){
				for(h=61;h<=90;h++){
					$('#num'+h).css("display" ,"inline")
				}
			}
			else if(i2==4){
				for(h=91;h<=120;h++){
					$('#num'+h).css("display" ,"inline")
				}
			}
			else if(i2==5){
				for(h=121;h<=150;h++){
					$('#num'+h).css("display" ,"inline")
				}
			}
			else if(i2==6){
				for(h=151;h<=180;h++){
					$('#num'+h).css("display" ,"inline")
				}
			} 
			else if(i2==7){
				for(h=181;h<=210;h++){
					$('#num'+h).css("display" ,"inline")
				}
			} 
			else if(i2==8){
				for(h=211;h<=240;h++){
					$('#num'+h).css("display" ,"inline")
				}
			} 
			else if(i2==9){
				for(h=241;h<=270;h++){
					$('#num'+h).css("display" ,"inline")
				}
			} 
			else if(i2==10){
				for(h=271;h<=300;h++){
					$('#num'+h).css("display" ,"inline")
				}
			} 
			
		
		});
		
		
		
		
		
		
		
		
		
		
		
		
		
		
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