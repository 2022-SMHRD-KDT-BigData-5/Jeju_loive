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
   String dia_tripday_str = (String)session.getAttribute("dia_tripday");
   Timestamp dia_tripday = Timestamp.valueOf(dia_tripday_str); //타임스탬프로 형변환!!(에러나면 여기보자^__^)
   String mem_id = loginMember.getId();
   tourDAO dao = new tourDAO();
   
   //플랜상세 가져오기
   inplan inplan=new inplan(mem_id, dia_tripday);   
   
   //사용자의 하루 plan목록
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
         <!--<c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="Join.jsp" class="soohyeon">login</a>
                  </c:when>
                  <c:otherwise>
                     <a href="LogoutCon" class="soohyeon">logout</a>
                  </c:otherwise>
               </c:choose> --!>
      </nav>
   </header>

          
          
          
          

   <div class="container" id="flex_cont">
   
      
      <!-- -------------------------관광지메뉴 영역 시작--------------------------------- -->
      <div id="tour_div">
      
         <h2>이거본사람 바보</h2>
      
      
      
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
                 <div><a href="review?tour_num=${t.num}">리뷰작성</a></div>
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
   


</body>
</html>