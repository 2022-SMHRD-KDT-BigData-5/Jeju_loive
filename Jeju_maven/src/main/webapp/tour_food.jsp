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
	tour tourInfo = (tour)session.getAttribute("tourInfo");
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
		<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
		<link rel="stylesheet" href="assets/css/dragdrop.css" />
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/dragdrop.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
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
			<!-- Top Navigation -->
			<!-- <div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="main.jsp"><span>메인으로 돌아가기</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="planner.jsp"><span>플래너 생성하기</span></a></span>
			</div> -->
			<header class="codrops-header">
				<h1>RESTAURANT<span>관광지에 대한 정보를 추천해주는 메뉴입니다.</span></h1>
				<nav class="codrops-demos">
	
					<a  href="tour_att.jsp">관광지</a>
					<a class="current-demo" href="tour_food.jsp">음식점</a>
					<a href="tour_cafe.jsp">카페</a>
					
				</nav>
			</header>
			<div class="content">

			<h2>냠냠</h2>
			<div class="grid">
<%-- <c:set var="str" value="" />  --%>
						<c:forEach var="f" items="${foodList}" varStatus="statusNum">
					<%--  <c:forEach var="i" items="${tourImgList}" varStatus="status">
							<c:if test="${i.tour_num != str }">  --%>
								<figure class="effect-marley">
									<img src="${f.img }" alt="img11" width=480px" height="300px" />
									<!-- 이미지 주소를 넣는 공간입니다^^ -->
									<figcaption>
										<h2><span><c:out value="${f.name}" /></span></h2>
										<p><c:out value="${f.address}" /></p>
										<a href="TourInfoCon?tourNum=${f.num}">View more</a>
								</figcaption></figure>
							<%--  </c:if>
							<c:set var="str" value="${i.tour_num}" />
						 </c:forEach>  --%>
					</c:forEach>
			</div>


					
				</div>
			</div>
			
			
					
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
			
			<form action="PlanInsertCon" method="post">
			여행일을 선택해주세요 >> <input type="date" name="plan_date"><br/><br/>
		        <div>
		            <div style="float:left;width:100px;">아이템 추가 :</div>
		            <div style="clar:both;">
		            	
		                <input type="button" id="addItem" value="추가" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}')"/>
		                <input type="button" value="임시저장" onclick="setInPlan();"/>
		                <input type="submit" id="submitItem" value="내 Planner에 저장하기" onclick="getInPlan();" />
		               
		                
		               
		            </div>
		        </div>
		        <br />
		        <div id="itemBoxWrap"></div>
		    </form>
		    
		</div>
		
	</div>
			
			
			
			
			</div> <!-- 컨테이너 끝 -->
			
			
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
		
	<!-- 드래그앤드롭 JS -->
	<script>
	
	//추가 클릭시 localStorage에 값을 저장하는 함수
	function setInPlan(){
        //값 가져오기
        //1) name이 item인 input태그 내의 value 가져오기
        //2) class=tourNum, class=tourAdd인 input태그의 text값 가져오기 /
        var tourNums=[];
        var tourAdds=[];
        var tourNames=[];
        var nums=[];
        var adds=[];
        var names=[];
        
//        tourNums = document.getElementsByClassName('tourNum');
//        tourAdds = document.getElementsByClassName('tourAdd');
        
        var len = $("input[name=tourNum]").length;
        for(var i=0; i<len; i++){                          
			tourNums[i] = $("input[name=tourNum]").eq(i).val();
		}
        
        var len = $("input[name=tourAdd]").length;
        for(var i=0; i<len; i++){                          
			tourAdds[i] = $("input[name=tourAdd]").eq(i).val();
		}
        
        
        var len = $("input[name=item]").length;
        for(var i=0; i<len; i++){                          
			tourNames[i] = $("input[name=item]").eq(i).val();
		}
        
        //배열에 순서대로 담기
        for(i=0; i<tourNums.length; i++){
        	nums.push(tourNums[i]);
        	adds.push(tourAdds[i]);
        	names.push(tourNames[i]);
        }
        
        //확인용(콘솔창 확인)
        console.log(nums);
        console.log(adds);
        console.log(names);
        
     	// 객체, 배열을 JSON 문자열로 변환
        const numsString = JSON.stringify(nums);
        const addsString = JSON.stringify(adds);
        const namesString = JSON.stringify(names);
		
        //문자열로 잘 변환되었는지 확인
        console.log(namesString);

        
		//localStorage에 배열 저장
		window.localStorage.setItem('tourNum', nums)
		window.localStorage.setItem('tourAdd', adds)
		window.localStorage.setItem('tourName', names)
		
	}
	
			//페이지 이동시 localStorage의 값을 가져오는 함수(자동실행)
			window.onload=
					function getInPlan(){

						//localStorage에서 꺼내기
						var getNums =[];
						var getAdds =[];
						var getNames =[];
					
			         	// JSON 문자열을 객체, 배열로 변환
			         	getNums = localStorage.getItem('tourNum');
			         	getAdds = localStorage.getItem('tourAdd');
			         	getNames = localStorage.getItem('tourName');
			         	numList = getNums.split(",");
			         	addList = getAdds.split(",");
			         	nameList = getNames.split(",");
			         	console.log(numList);
			            
			           for(i=0; i<numList.length; i++){
							$(document).ready(createItem(nameList[i], numList[i], addList[i]));
						}
					};
			
			
			
			
	</script>
	</body>
</html>