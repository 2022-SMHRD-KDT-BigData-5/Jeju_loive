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
	reviewDAO dao = new reviewDAO();
	BigDecimal tour_num = new BigDecimal(610);
	List<review> ReviewList = dao.selectReview(tour_num);
	pageContext.setAttribute("ReviewList", ReviewList);
	tour tourInfo = (tour)session.getAttribute("tourInfo");

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
	.soohyeon{position: fixed; right:20px; top:10px; color:white;}
</style>
	
</head>


<body>
	
	

	<header id="menuBlock">
		<nav>
			<ul>
				<li><a href="main.jsp">main</a></li>
				<li><a href="tour_att.jsp">tour</a></li>
				<li><a href="planner.jsp">planner</a></li>
				<li><a href="diarytest.jsp">diary</a></li>
				
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
		
			<br>
			
			<div>
					<img src="images/??????.png" alt="img11" />
				
			<c:forEach var="r" items="${ReviewList}" varStatus="status">
				
					
						<h2>
							<span>${r.tour_num}</span>
						</h2>
						<p>${r.rev_content}</p>
						
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

					<a href="#" class="current-demo">?????????</a>
					<a href="#">?????????</a>
					<a href="#">??????</a>

				</nav>
			</header>
		
		
		
		<div class="content">
			
			<!-- itemNum : ?????? ?????? -->
			<!-- item : input?????? ?????? ????????? ?????? -->
			<!-- createItem() : tour_name,tour_num,tour_add ??? ???????????? tour_name??? ???????????????, num??? address??? ???????????? -->
			
			<form action="PlanInsertCon" method="post">
			???????????? ?????????????????? >> <input type="date" name="plan_date"><br/><br/>
		        <div>
		            <div style="float:left;width:100px;">????????? ?????? :</div>
		            <div style="clar:both;">
		            	
		                <input type="button" id="addItem" value="??????" onclick="createItem('${tourInfo.getName()}','${tourInfo.getNum()}','${tourInfo.getAddress()}'); getInPlan();"/>
		                <input type="button" value="????????????" onclick="setInPlan();"/>
		                <input type="submit" id="submitItem" value="??? Planner??? ????????????" onclick="removeInplan();" />
		               
		                
		               
		            </div>
		        </div>
		        <br />
		        <div id="itemBoxWrap"></div>
		    </form>
		    
		</div>
		
		
		
		
		
		</div> <!-- ----------------plan ?????? ???----------------- -->

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
	function setInPlan(){
        //??? ????????????
        //1) name??? item??? input?????? ?????? value ????????????
        //2) class=tourNum, class=tourAdd??? input????????? text??? ???????????? /
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
        
        //????????? ???????????? ??????
        for(i=0; i<tourNums.length; i++){
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
			window.onload=
					function getInPlan(){

						//localStorage?????? ?????????
						var getNums =[];
						var getAdds =[];
						var getNames =[];
					
			         	// JSON ???????????? ??????, ????????? ??????
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