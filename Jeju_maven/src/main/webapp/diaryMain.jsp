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
List<diaryAlbum> dimgList=null;
diary diary2 =null;
int num=0;
String date="";
SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
Member loginMember = (Member)session.getAttribute("loginMember");


if(loginMember != null){
	pageContext.setAttribute("loginMember",loginMember);
	String mem_id=loginMember.getId();
	date = (String)session.getAttribute("dia_tripday");
	String date2=date+" "+"00:00:00";
	dimgList = dao.selectDimgAll(mem_id);
	Timestamp timestamp = Timestamp.valueOf(date2);
	diary diary= new diary(mem_id,timestamp);
	diary2 = dao.selectDiary(diary);
	pageContext.setAttribute("dimgList",dimgList);
	
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
   #tour_div{width:70%;}
   #plan_div{width:20%;}
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


         <h2>무엇을 적으면 좋을까요</h2>
      
         <div class="content">
         
         
             </div>
          
         <br>
          <%if (dimgList.size()<1){
                        %>
                        <div class="imgup"><br><br><form align="center" method="post" enctype="multipart/form-data" action="imgupCon">
                        <input type="date" name="date" value="<%=date%>">
                        <input type="file" name="filename1" size=40 >
                        <input type="submit" value="업로드">
                        </form></div>
                        
                        <% 
         }
         %>
         <div>
         
         
         
         <c:forEach var="i" items="${dimgList}" varStatus="status">
               <img src="<%=dimgList.get(num).getP_loc() %>" alt="실패"  width="300px" height="200px"/>
               
               <%num++; %>
            </c:forEach>
            <%num=0; %>
         
           
               <%if(diary2!=null||diary2.getDia_name()!=null){
            	   %><h2>
                     <span class="head"><%=diary2.getDia_name() %>
                  </h2>
                  <pre class="context"><%=diary2.getDia_content() %></pre>
                  <button class="changeupdate">수정</button>
                  <% 
               }else{
               
               %>
                  <h2>
                     <span class="head">제목</span>
                  </h2>
                  
                  <h2 ><span class="context">내용</span></h2>
                  <button class="change">수정</button>
                  <%} %>
                  
         
                  
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
   let date=<%=date%>
   $(document).on('click','.change',function(){
		
		$('.head').remove();
		$('.context').remove();
		$(this).remove();
		$('img').after('<textarea name="content" class="textcontent3" cols="70" rows="1"></textarea>'+
						'<textarea name="content" class="textcontent4" cols="100" rows="8"></textarea>'+
						'<button class="change2">수정완료</button>');
   });
   $(document).on('click','.change2',function(){
		let changeHead=$('.textcontent3').val()
		let changeContent=$('.textcontent4').val()
	   $(location).attr('href', 'diaryCon?head='+changeHead+'&content='+changeContent +'&date='+date);
		
  });
   
   </script>
  
   
   
 
</body>
</html>