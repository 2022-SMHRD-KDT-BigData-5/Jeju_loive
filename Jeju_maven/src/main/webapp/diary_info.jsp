<%@page import="com.smhrd.domain.inplan"%>
<%@page import="java.sql.Timestamp"%>
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
	//데이터 가져오기, 선언부
	Member loginMember = (Member)session.getAttribute("loginMember");
	String mem_id = loginMember.getId();
	String plan_date_Str = request.getParameter("dia_tripday");
	tourDAO dao = new tourDAO();
	Timestamp plan_date = Timestamp.valueOf(plan_date_Str);
	
	//플랜상세 가져오기
	inplan inplan=new inplan(mem_id, plan_date);	
	List<tour> inplanTourList = dao.selectTour(inplan);
	pageContext.setAttribute("inplanTourList",inplanTourList);

	%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/dragdrop.js"></script>
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
	
		
		<!-- -------------------------관광지메뉴 영역 시작--------------------------------- -->
		<div id="tour_div">
		
			
		
		
		
		</div>
		
		
		<!-- ---------------------------~~지금부터 리뷰적는 공간~~-------------------------- -->
		
				
		<div id="plan_div">

	    <div id = "main_plan">
    <div> <a class="logo" href="main.jsp"><span><img src="images/logo2.png" alt="logo"></span></a></div>
    <img src="images/right.png" class = "rightPage"> <!--다음 플래너로 넘어 가기  -->
    <img src="images/left.png" class = "leftPage"> <!--이전 플래너로 넘어 가기  -->
    
    
        <ul class = "list_theme">
        <%=inplanTourList.get(1).getName() %>
    	<c:forEach var="t" items="${inplanTourList}" varStatus="status">
    		
            <li class = "theme_itme">
   
                <div class="imgBoxDiv">
                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="${t.img}"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>
                        <span class="thumb_bd"></span>
                    </a>
                </div>
                <strong calss = "title elss"> <c:out value ="${t.name}"/> </strong>
                <p class = "desc"></p>
                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source"></span>
                        <span class = "source_inner"> <c:out value="${t.address}"/></span>
                 </div>
            </li>
        </c:forEach>
        
        </ul>
	</div>
		
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
			
					//임시플랜 제출시 localStorage 삭제
			         function removeInplan(){
			            window.localStorage.clear();
			         }

			
			
			
	</script>
</body>
</html>
