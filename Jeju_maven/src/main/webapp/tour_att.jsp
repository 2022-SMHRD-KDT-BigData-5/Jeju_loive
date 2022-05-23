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
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-white px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-white pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
            <a href="main.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><i class="fa fa-paper-plane"></i> 제주살앙</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="maintest.jsp" class="nav-item nav-link active">Home</a>
                    <a href="tour_att.jsp" class="nav-item nav-link">투어</a>
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
        </nav>
    </div>
    <!-- Navbar End -->

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
	
<<<<<<< HEAD
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

	<!-- 전화번호 하이픈(-) 자동입력  JS -->
    <script>
    $(document).on("keyup", "#tel", function(){
    	$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
         });
         
    </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
=======
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
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-5/Jeju_loive.git
</body>
</html>