<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
      <meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
      <meta name="author" content="Codrops" />
      <link rel="shortcut icon" href="../favicon.ico">
      <link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/set2.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/plusButton.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
      <script src = "https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
   
   <header id = "menuBlock">
   <nav>
                     <ul>
                        <li><a href="main.jsp">main</a></li>
                        <li><a href="diary1.jsp">diary</a></li>
                        <li><a href="tour_att.jsp">tour</a></li>
                        <!--<li><a href="#elements">Elements</a></li>-->
                     </ul>
                  </nav>
   </header>
   


   <h2 class="plan">Planner</h2>
    <div class="grid">
        <figure class="effect-ming">
            <img src="images/yeonhee-VWLhifg5VMA-unsplash.jpg" alt="yeonhee-VWLhifg5VMA-unsplash"/>
            <figcaption>
                <h2><span>Planner</span></h2>
                <p>2022년 05월 13일</p>
                <a href="#">View more</a>
            </figcaption>
            </figure>         
    </div>
    <button id ="btn1">+</button>
   
   <script>
    
    $('#btn1').click(function(){
        
           $('div').append('<figure class="effect-ming"><img src="images/yeonhee-VWLhifg5VMA-unsplash.jpg" alt="yeonhee-VWLhifg5VMA-unsplash"/><figcaption><h2><span>Planner</span></h2><p>2022년 05월 13일</p><a href="#">View more</a></figcaption></figure>')

        })
    
   
</script>
</body>


</html>