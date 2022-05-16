<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/diaryMain.css">
<title>Insert title here</title>

<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>

</head>
<body>
<% pageContext.setAttribute("nick", "쿠키몬스터"); %>
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
								<img alt="추가하세요" src="<%=fullpath%>"width=50px height = 50px>
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

<script>
<%
response.setCharacterEncoding("UTF-8");
fullpath="테스트입니다";%>
var winWidth = $(window).width();
var ratio = winWidth / 1920;
var fontSize = {
  small: 12,
  medium: 14
};
var played = [0, 0, 0];
var vara = [];
var bodyFontSize = Math.max(16 * ratio, 10);
var posX = Math.max(80 * ratio, 30);

$("body").css("font-size", bodyFontSize + "px");
fontSize.small = Math.max(fontSize.small * ratio, 7);
fontSize.medium = Math.max(fontSize.medium * ratio, 10);
vara[0] = new Vara(
  "#vara-container",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
      text: "<%=fullpath%>",
      textAlign: "right",
      y: 20,
      x: -30,
      delay: 500,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Start the year with something cool.",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "Like with a library,",
      id: "sphinx",
      x: posX,
      delay: 1000,
      duration: 4500
    },
    {
      text: "..... that can animate text writing",
      id: "end",
      color: "#3f51b5",
      delay: 1000,
      x: posX,
      duration: 4500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);
vara[1] = new Vara(
  "#vara-container2",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
	 
      text: "16 Jan 2019",
      textAlign: "right",
      delay: 500,
      y: 20,
      x: -30,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Try to create something else.",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "Like a diary or a todo list.",
      y: 40,
      x: posX,
      duration: 3500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);
vara[2] = new Vara(
  "#vara-container3",
  "https://rawcdn.githack.com/akzhy/Vara/ed6ab92fdf196596266ae76867c415fa659eb348/fonts/Satisfy/SatisfySL.json",
  [
    {
      text: "17 Jan 2019",
      textAlign: "right",
      delay: 500,
      y: 20,
      x: -30,
      duration: 1500,
      fontSize: fontSize.small
    },
    {
      text: "Creating a Diary.",
      y: 40,
      x: posX,
      duration: 4000
    },
    {
      text: "View the library on,",
      y: 20,
      x: posX,
      duration: 3500
    },
    {
      text: "Github.",
      y: 10,
      color: "#3f51b5",
      id: "link",
      x: posX,
      duration: 1500
    }
  ],
  {
    strokeWidth: 2,
    fontSize: fontSize.medium,
    autoAnimation: false
  }
);
vara[2].ready(function() {
  $(".front:not(.last)").click(function() {
    var ix = $(this)
      .parent(".paper")
      .index();
    $(".book").addClass("open");
    $(this)
      .parent(".paper")
      .addClass("open");
    if (!played[ix]) {
      vara[ix].playAll();
      vara[ix].animationEnd(function(i, o) {
        played[ix] = 1;
        if (i == "link") {
          var group = o.container;
          var rect = vara[2].createNode("rect", {
            x: 0,
            y: 0,
            width: o.container.getBoundingClientRect().width,
            height: o.container.getBoundingClientRect().height,
            fill: "transparent"
          });
          group.appendChild(rect);
          $(rect).css("cursor", "pointer");
          $(rect).click(function() {
            console.log(true);
            document.querySelector("#link").click();
          });
        }
      });
    }
  });
  $(".back").click(function() {
    if (
      $(this)
        .parent(".paper")
        .index() == 0
    )
      $(".book").removeClass("open");
    $(this)
      .parent(".paper")
      .removeClass("open");
  });
});


</script>


</body>
</html>