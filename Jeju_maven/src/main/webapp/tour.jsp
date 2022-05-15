<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
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
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/FourBoxes/"><span>Previous Demo</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=19292"><span>Back to the Codrops Article</span></a></span>
			</div>
			<header class="codrops-header">
				<h1>Hover Effect Ideas <span>An inspirational collection of subtle hover effects</span></h1>
				<nav class="codrops-demos">
	
					<a class="current-demo" href="#">관광지</a>
					<a href="#">음식점</a>
					<a href="#">카페</a>
					
				</nav>
			</header>
			<div class="content">
				
				<h2>Marley</h2>
				<div class="grid">
					<figure class="effect-marley">
						<img src="images/1.jpg" alt="img11"/>
						<figcaption>
							<h2>Sweet <span>Marley</span></h2>
							<p>Marley tried to convince her but she was not interested.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-marley">
						<img src="images/1.jpg" alt="img12"/>
						<figcaption>
							<h2>Sweet <span>Marley</span></h2>
							<p>Marley tried to convince her but she was not interested.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
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
								<figcaption>
								<h2>Faithful <span>Milo</span></h2>
								<p>Milo went to the woods. He took a fun ride and never came back.</p>
								<a href="#">View more</a>
								</figcaption>
								<%	
							}%>		
					</figure>
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