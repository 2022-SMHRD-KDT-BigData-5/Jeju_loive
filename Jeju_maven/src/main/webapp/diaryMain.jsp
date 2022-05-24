<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="com.smhrd.domain.inplanDAO"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.smhrd.domain.diaryAlbum"%>
<%@page import="com.smhrd.domain.diaryDAO"%>
<%@page import="com.smhrd.domain.diaryImg"%>
<%@page import="com.smhrd.domain.diary"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
diaryDAO dao = new diaryDAO();
tourDAO tdao = new tourDAO();
inplanDAO dao1 = new inplanDAO();
List<String> albumlist = null;
diary diary2 =null;
int num=0;
String datetest="";
SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
Member loginMember = (Member)session.getAttribute("loginMember");
String date="";



if(loginMember != null){
	pageContext.setAttribute("loginMember",loginMember);
	String mem_id=loginMember.getId();
	date = request.getParameter("dia_tripday");
	datetest=date;
	System.out.println("Maindate"+date);
	String date2=date+" "+"00:00:00";
	Timestamp timestamp = Timestamp.valueOf(date2);
	diaryAlbum album= new diaryAlbum(timestamp,mem_id);
	albumlist=dao.selectAlbum(album);
	
	diary diary= new diary(mem_id,timestamp);
	diary2 = dao.selectDiary(diary);
	pageContext.setAttribute("dimgList",albumlist);
	
inplan inplan=new inplan(mem_id, timestamp);  
List<tour> inplanTourList = tdao.selectTour(inplan);
pageContext.setAttribute("inplanTourList",inplanTourList);
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
   #tour_div{width:60%;}
   #plan_div{width:30%;}
   .soohyeon{
      position: fixed;
        right: 20px;
          top: 10px;
          color:white
   }
   .img2{
   		position:relative;
        left: 300px;
        bottom : 150px;
   }
   .img3{
   		position:relative;
        left: 600px;
        bottom : 300px;
   }
   .imgup{
   		width : 300px; 
   		height : 200px;
   		float:left;
   		margin-right: 6px
   }
   .imgup2{
   		width : 300px; 
   		height : 200px;
   		
   }
   .deletebutton{
   		position: relative;
   		bottom : 180px;
   		display : none;
   }
 
   
   

.hover1{
    width: auto;
    height: auto;
    position: relative;
    cursor: pointer;
    overflow: hidden;
}

.hiddentext{
    width: 100%;
    height: 50px;
    padding: 10px;
    color: #FFFFFF;
    background: #f2cbf2;
    position: absolute;
    bottom: 0px;
}

#main_plan{
   position : relative;
    width: 480px;
    height: 1200px;
    
    padding: 20px 30px;
    margin: 0 auto;
    margin-bottom : 30px;
    z-index: 2;
    background-color :    #FFFFF0;
}

#main_plan li{
    display: list-item;
    margin-bottom:  50px;
    border-top: 1px solid orange;
   
    
}





.list_theme.theme_item{
    overflow: hidden;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    
    
}





.list_theme.theme_thumb{
    width: 170px;
    height: 114px;
    overflow: hidden;
    float: left;
    display: block;
    position: relative;
    margin-right: 21px;
}


.list_theme.title.elss{
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    height: auto;
    margin-top: 2px;
}

strong{
    font-weight: bold;
        font-size : 30px;
    
}


.list_theme.title{
    max-height: 40px;
    line-height: 20px;
    -webkit-line-clamp : 2;
    -webkit-box-orient: vertical;
    font-size: 100px;
}

.list_theme .desc{
    display: -webkit-box;
    overflow: hidden;
    max-height: 40px;
    line-height: 20px;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-top: 2px;
    font-size: 13px;
}

.list_theme.source_box{
    display: inline-block;
    overflow: hidden;
    max-width: 100%;
    margin-top: 2px;
    line-height: 20px;
    vertical-align: top;
    position: absolute;
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: 0px;
    
}

.list_theme.reviewDate{
    float: right;
}

.imgBoxDiv{
    width: 90px;
    height: 90px;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    box-shadow: 2px 2px 8px 0px #000;
    float: left;
    margin-right: 30px;
}


.imgDiv{
    float: left;
    width:100%;
    height: 100%px;
    position: absolute;
   
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: -6px;
    overflow: hidden;

}



.theme-itme.h3{
    opacity: 0;
    transition: 0s;
    margin-top: 86%;
}

h3{
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

figure{
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 40px;
    margin-inline-end: 40px;
}

.dayPlan{
   margin-top: 50px;
   font-size
   
   

}

#menuBlock{
   margin-bottom : 30px;
}

.logo{
   
   position: absolute;
   left : 80%;
   top : -140px;
   z-index: 1;
}




.p-0{
   background-color : #FFFFF0;
   color : #FFFFF0;
}
   
.imgc{
 width:100%;
    height:100%;
    object-fit:cover;
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
      
         <header class="codrops-header">
            <h1>
               
            </h1>
         </header>
      
      
      
      <div class="content">
      
      <!-- 관광지 정보 출력 영역 -->


         <h2>My DIARY</h2>
      
         <div class="content">
         <p class="sh"><%=date %></p>
         <button class="addimg">사진추가</button>
         <button class="deleteimg">사진삭제</button>
             </div>
          
         <br>
          <%if (albumlist.size()<1){
                        %>
                        <div class="imgup2"><br><br><form align="center" method="post" enctype="multipart/form-data" action="imgupCon">
                        <input type="date" name="date" value="<%=date%>">
                        <input type="file" name="filename1" size=40 >
                        <input type="submit" value="업로드">
                        </form></div>
                        
                        <% 
         }
         %>
         <div>
         
         
         <div class="imgarea">
         <c:forEach var="i" items="${dimgList}" varStatus="status">
               <img src="<%=albumlist.get(num) %>" alt="실패"  width="300px" height="200px"/>
               <button class="deletebutton">x</button>
               <%num++; %>
            </c:forEach>
            <%num=0; %>
         </div>
           
               <%if(diary2!=null&&diary2.getDia_name()!=null){
            	   %><h2>
                     <span class="head"><%=diary2.getDia_name() %></span></h2>
                  
                  <pre class="context"><%=diary2.getDia_content() %></pre>
                  <button class="change">수정</button>
                  <% 
               }else{
               
               %>
                  <h2>
                     <span class="head">제목</span>
                  </h2>
                  
                  <h2><span class="context">내용</span></h2>
                  <button class="change">수정</button>
                  <%} %>
                  
         
                  
         </div>
         
         

      </div>
      
      
      
      </div>
      
      
      <!-- ---------------------------~~지금부터 플래너 공간~~-------------------------- -->
      
            
      <div id="plan_div">
         <header class="codrops-header">
            <h1>
               Plan
            </h1>
            
          <div  class = "dayPlan"><h1> 1일차 플랜</h1></div>
          
    <div id = "main_plan">
    
        <ul class = "list_theme">
       <c:forEach var="t" items="${inplanTourList}" varStatus="status">
          
            <li class = "theme_itme">
   
                <div class="imgBoxDiv">
                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="${t.img}" class = "imgc"></div>
                        <span class="thumb_bd"></span>
                    </a>
                </div>
                <strong class = "title elss"> <c:out value ="${t.name}"/> </strong>
                <p class = "desc"></p>
                <div class="source_box">
                    <span class="reviewDate"></span>
                    <span class="source"></span>
                        <span class = "source_inner"><a href="review.jsp?tour_num=${t.num}">리뷰작성</a></span>
                 </div>
            </li>
        </c:forEach>
        
        
        </ul><br><br>
        <div id="map" style="width:60%;height:350px;position: absolute;
        left: 50%; transform: translateX(-50%);"></div>
          
            
            
            
   </div>
   </div>
   </div>
   <!-- Related demos -->
   <section class="related"></section>
  
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
   <script type="text/javascript">
   let date=$('.sh').text();
   console.log(date);
   $(document).on('click','.change',function(){
		
		$('.head').remove();
		$('.context').remove();
		$(this).remove();
		$('img').after('<textarea name="content" class="textcontent3" cols="100" rows="1" placeholder="제목"></textarea>'+
						'<textarea name="content" class="textcontent4" cols="100" rows="8" placeholder="내용"></textarea><br>'+
						'<button class="change2">수정완료</button>');
   });
   $(document).on('click','.change2',function(){
		let changeHead=$('.textcontent3').val();
		let changeContent=$('.textcontent4').val();
	   $(location).attr('href', 'diaryCon?head='+changeHead+'&content='+changeContent +'&date='+date);
		
  });
   $(document).on('click','.addimg',function(){
	   $('.imgarea').prepend('<div class="imgup"><br><br><form align="center" method="post" enctype="multipart/form-data" action="imgupCon">'+
               '<input type="file" name="filename1" size=40 >'+
               '<input type="submit" value="업로드">'+
               '</form></div>');
 });
   $(document).on('click','.deleteimg',function(){
	   $('.deletebutton').css("display" ,"inline");
 });
   $(document).on('click','.deletebutton',function(){
	  let location = $(this).prev().attr('src');
	  console.log(location);
	  $(location).attr('href', 'deleteCon?loc='+location+'&date='+date);
 });
   
   </script>
  
   
   
 
</body>
</html>