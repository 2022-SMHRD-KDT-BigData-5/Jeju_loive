<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/diaryMain.css">
<title>Insert title here</title>

<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>

</head>
<body>

<div class="v-center"></div>
<div id="container">
  <div class="book">
    <div class="first paper">
      <div class="page front contents">
        <div class="intro">
          <h2>DIARY</h2>
          <h1>2019</h1>
        </div>
      </div>
      <div class="page back">
      		<%
							
							String fullpath = (String)session.getAttribute("fullpath");
							
							if (fullpath==null){
							%>
							<form method="post" enctype="multipart/form-data" action="imgup.jsp">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							</form>
							<%}
							else{
								%>
								<img alt="추가하세요" src="<%=fullpath%>">
								<%	
							}%>	
      </div>
    </div>
    <div class="second paper">
      <div class="page front contents">
        <div id="vara-container"></div>
        <button id="test">test</button>
      </div>
      <div class="page back">
      	<img alt="실패" src="images/bg.jpg" width=300px height = 300px>
      </div>
    </div>
    <div class="third paper">
      <div class="page front contents">
        <div id="vara-container2"></div>
      </div>
      <div class="page back"></div>
    </div>
    <div class="fourth paper">
      <div class="page last front contents">
        <div id="vara-container3"></div>
      </div>
      <div class="page back"></div>
    </div>
    <div class="side"></div>
    <div class="bottom"></div>
    <div class="shadow"></div>
  </div>
</div>
<a id="link" href="https://github.com/akzhy/Vara" target="_blank">VIEW ON GITHUB</a>
<script src="js/vara.min.js" type="text/javascript"></script>
<script src="js/diaryMain.js"></script>



</body>
</html>