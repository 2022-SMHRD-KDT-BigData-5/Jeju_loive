<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Hover Effect Ideas | Set 1</title>
		<meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
		<meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,300' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/set1.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
</head>
<body>

<header id = "menuBlock">
	<nav>
							<ul>
								<li><a href="planner.jsp">PLANNER</a></li>
								<li><a href="diary1.jsp">DIARY</a></li>
								<li><a href="tour_att.jsp">TOUR</a></li>
								<!--<li><a href="#elements">Elements</a></li>-->
							</ul>
						</nav>
	</header>

<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="main.jsp"><span>메인으로 돌아가기</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="main.jsp"><span>로그아웃</span></a></span>
			</div>
			<header class="codrops-header">
				<h1>BOARD <span>사용자들의 다이어리를 훔쳐보는 공간~~0.0~</span><br></h1>
				<nav class="codrops-demos">
	
					<a href="#">최신순</a>
					<a href="#">인기순</a>
				</nav>
			</header>
			<div class="content">
				
				<h2>히요미의 다이어리 잇힝♡</h2>
				<div class="grid">
					<figure class="effect-zoe">
						<img src="images/hyy.jpg" alt="img25"/>
						<figcaption>
							<h2>오늘도 <span>돼지력 폭발♥</span></h2>
							<p class="icon-links">
								<a href="#"><span class="icon-heart"></span></a>
								<a href="#"><span class="icon-eye">🐷🐷<span></a>
								<a href="#"><span class="icon-paper-clip"></span></a>
							</p>
							<p class="description">큐티돼지 히요니의 비밀 일기~~<br> 절대 훔쳐보지 마세욧!!!-_-+</p>
						</figcaption>			
					</figure>
					<figure class="effect-zoe">
						<img src="images/hy.jpg" alt="img26"/>
						<figcaption>
							<h2>우리가 <span>함께한</span>순간</h2>
							<p class="icon-links">
								<a href="#"><span class="icon-heart"></span></a>
								<a href="#"><span class="icon-eye">💑💑<span></a>
								<a href="#"><span class="icon-paper-clip"></span></a>
							</p>
							<p class="description">네가 있어서...<br> 모든 게 완벽했다...<br> 이 날의 조명, 온도, 습도까지...</p>
						</figcaption>			
					</figure>
				</div>
				
				
				
						
					
				</div>
			</div>
			<nav class="codrops-demos">
				<a class="current-demo" href="diary1.jsp">Set 1</a>
				<a href="diary2.jsp">Set 2</a>
			</nav>
			<!-- Related demos -->
			<section class="related">
				<p>Images from <a href="http://unsplash.com/">Unsplash</a>. <a href="https://gumroad.com/l/feather">Feather Icons</a> by Cole Bemis.</p>
				
				
				
			</section>
		</div><!-- /container -->
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>

</body>
</html>