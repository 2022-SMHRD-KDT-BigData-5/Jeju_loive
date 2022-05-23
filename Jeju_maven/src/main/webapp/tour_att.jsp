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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="assets/css/dragdrop.css" />
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script><!-- 지도만드는녀석^^지수꼬! 건들면 나 화낸다~-^-(빠직) -->
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
					ATTRACTION<span>관광지에 대한 정보를 추천해주는 메뉴입니다.</span>
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
<%-- 			<h1><%=tourImgList.get(1).getT_add() %></h1> --%>
				 	<%-- <c:set var="str" value="" />  --%>
						<c:forEach var="t" items="${tourList}" varStatus="statusNum">
					<%--  <c:forEach var="i" items="${tourImgList}" varStatus="status">
							<c:if test="${i.tour_num != str }">  --%>
								<figure class="effect-marley">
									<img src="${t.img }" alt="img11" width=480px" height="300px" />
									<!-- 이미지 주소를 넣는 공간입니다^^ -->
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
			
			<form action="PlanInsertCon" method="post">
			여행일을 선택해주세요 >> <input type="date" name="plan_date"><br/><br/>
		        <div>
		            <div style="float:left;width:100px;">아이템 추가 :</div>
		            <div style="clar:both;">
		            	
		                <input type="button" id="addItem" value="추가" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}');"/>
		                <input type="button" value="임시저장" onclick="setInPlan();"/>
		                <input type="submit" id="submitItem" value="내 Planner에 저장하기" onclick="removeInplan();" />
		               
		                
		               
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





<script>
	
	
		var getAdds =[];
		getAdds = localStorage.getItem('tourAdd');
		addList = getAdds.split(",");
		console.log()


		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level:10 // 지도의 확대 레벨
		    };  

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        /* // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords); */
		    } 
		});    
		
		
	

</script>

		
		
		</div>
		
		
		
		
		
		
		
		
		
		</div> <!--  컨테이너 끝 -->
		
		
		
	
	<!-- Related demos -->
	<section class="related"></section>

	
	
	
	
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
			
			
			window.onload=getInPlan();
				
				
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