<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<link rel="stylesheet" type="text/css" href="assets/css/menuBlock.css" />
		<link rel="stylesheet" href="assets/css/maintest.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
		 <link href="https://fonts.googleapis.com/
    		icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    		rel="stylesheet">
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    	
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<style>
		.material-symbols-outlined {
		position: fixed;
        right: 20px;
       	top: 20px;
       	color:black;
		}
		
		.logo{
		position: relative;
        left: 5px;
       	top: -100px;
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
            <a href="maintest.jsp" class="navbar-brand ml-lg-3">
                <h1 class="m-0 display-5 text-uppercase text-primary"><i class="fa fa-paper-plane"></i> 제주살앙</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav m-auto py-0">
                    <a href="maintest.jsp" class="nav-item nav-link">Home</a>
                    <a href="tour_att.jsp" class="nav-item nav-link">투어</a>
                    <a href="planner.jsp" class="nav-item nav-link">플래너</a>
                    <a href= "diary1.jsp" class="nav-item nav-link active">다이어리</a>
                    <a href= "board.jsp" class="nav-item nav-link">게시판</a>
                </div>
		<nav>
			<c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="LoginCon" class="m"><span class="btn btn-primary py-2 px-4 d-none d-lg-block">login</span></a>
                  </c:when>
                  <c:otherwise>
                     <a href="LogoutCon" class="m"><span class="btn btn-primary py-2 px-4 d-none d-lg-block">logout</span></a>
                  </c:otherwise>
               </c:choose>
		</nav>
		</div>
		</nav>
		
	</div>
	
		
		
		<div class="container">
			<!-- Top Navigation -->
			<!-- <div class="codrops-top clearfix">
				<a class="logo" href="main.jsp"><span><img src="images/logo3.png" alt="logo"></span></a>
				
			</div> -->
			<header class="codrops-header">
				<h1><span>너와 나의 memory..</span></h1>
				<nav class="codrops-demos">
					<a class="current-demo" href="diary1.jsp">Set 1</a>
					<a href="diary2.jsp">Set 2</a>
				</nav>
			</header>
			<div class="content">
				<h2>Lily</h2>
				<div class="grid">
					<figure class="effect-lily">
						
						<img src="images/1.jpg" alt="img12"/>
						
						<figcaption>
							<div>
								<h2>1일차 <span>추억</span></h2>
								<p>Lily likes to play with crayons and pencils</p>
							</div>
							<a href="diaryHome.jsp">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-lily">
						<img src="images/1.jpg" alt="img1"/>
						
						<figcaption>
							<div>
								<h2>Nice <span>Lily</span></h2>
								<p>Lily likes to play with crayons and pencils</p>
							</div>
							<a href="#">View more</a>
							
						</figcaption>			
					</figure>
				</div>
				<h2>Sadie</h2>
				<div class="grid">
					<figure class="effect-sadie">
						<img src="images/1.jpg" alt="img02"/>
						<figcaption>
							<h2>Holy <span>Sadie</span></h2>
							<p>Sadie never took her eyes off me. <br>She had a dark soul.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-sadie">
						<img src="images/1.jpg" alt="img14"/>
						<figcaption>
							<h2>Holy <span>Sadie</span></h2>
							<p>Sadie never took her eyes off me. <br>She had a dark soul.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Honey</h2>
				<div class="grid">
					<figure class="effect-honey">
						<img src="images/1.jpg" alt="img04"/>
						<figcaption>
							<h2>Dreamy <span>Honey</span> <i>Now</i></h2>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-honey">
						<img src="images/1.jpg" alt="img05"/>
						<figcaption>
							<h2>Dreamy <span>Honey</span> <i>Now</i></h2>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Layla</h2>
				<div class="grid">
					<figure class="effect-layla">
						<img src="images/1.jpg" alt="img06"/>
						<figcaption>
							<h2>Crazy <span>Layla</span></h2>
							<p>When Layla appears, she brings an eternal summer along.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-layla">
						<img src="images/1.jpg" alt="img03"/>
						<figcaption>
							<h2>Crazy <span>Layla</span></h2>
							<p>When Layla appears, she brings an eternal summer along.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Zoe</h2>
				<div class="grid">
					<figure class="effect-zoe">
						<img src="images/1.jpg" alt="img25"/>
						<figcaption>
							<h2>Creative <span>Zoe</span></h2>
							<p class="icon-links">
								<a href="#"><span class="icon-heart"></span></a>
								<a href="#"><span class="icon-eye"></span></a>
								<a href="#"><span class="icon-paper-clip"></span></a>
							</p>
							<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
						</figcaption>			
					</figure>
					<figure class="effect-zoe">
						<img src="images/1.jpg" alt="img26"/>
						<figcaption>
							<h2>Creative <span>Zoe</span></h2>
							<p class="icon-links">
								<a href="#"><span class="icon-heart"></span></a>
								<a href="#"><span class="icon-eye"></span></a>
								<a href="#"><span class="icon-paper-clip"></span></a>
							</p>
							<p class="description">Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
						</figcaption>			
					</figure>
				</div>
				<h2>Oscar</h2>
				<div class="grid">
					<figure class="effect-oscar">
						<img src="images/1.jpg" alt="img09"/>
						<figcaption>
							<h2>Warm <span>Oscar</span></h2>
							<p>Oscar is a decent man. He used to clean porches with pleasure.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-oscar">
						<img src="images/1.jpg" alt="img10"/>
						<figcaption>
							<h2>Warm <span>Oscar</span></h2>
							<p>Oscar is a decent man. He used to clean porches with pleasure.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
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
				<h2>Ruby</h2>
				<div class="grid">
					<figure class="effect-ruby">
						<img src="images/1.jpg" alt="img13"/>
						<figcaption>
							<h2>Glowing <span>Ruby</span></h2>
							<p>Ruby did not need any help. Everybody knew that.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-ruby">
						<img src="images/1.jpg" alt="img14"/>
						<figcaption>
							<h2>Glowing <span>Ruby</span></h2>
							<p>Ruby did not need any help. Everybody knew that.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Roxy</h2>
				<div class="grid">
					<figure class="effect-roxy">
						<img src="images/1.jpg" alt="img15"/>
						<figcaption>
							<h2>Charming <span>Roxy</span></h2>
							<p>Roxy was my best friend. She'd cross any border for me.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-roxy">
						<img src="images/1.jpg" alt="img01"/>
						<figcaption>
							<h2>Charming <span>Roxy</span></h2>
							<p>Roxy was my best friend. She'd cross any border for me.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Bubba</h2>
				<div class="grid">
					<figure class="effect-bubba">
						<img src="images/1.jpg" alt="img02"/>
						<figcaption>
							<h2>Fresh <span>Bubba</span></h2>
							<p>Bubba likes to appear out of thin air.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-bubba">
						<img src="images/1.jpg" alt="img16"/>
						<figcaption>
							<h2>Fresh <span>Bubba</span></h2>
							<p>Bubba likes to appear out of thin air.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Romeo</h2>
				<div class="grid">
					<figure class="effect-romeo">
						<img src="images/1.jpg" alt="img17"/>
						<figcaption>
							<h2>Wild <span>Romeo</span></h2>
							<p>Romeo never knows what he wants. He seemed to be very cross about something.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-romeo">
						<img src="images/1.jpg" alt="img18"/>
						<figcaption>
							<h2>Wild <span>Romeo</span></h2>
							<p>Romeo never knows what he wants. He seemed to be very cross about something.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Dexter</h2>
				<div class="grid">
					<figure class="effect-dexter">
						<img src="images/1.jpg" alt="img19"/>
						<figcaption>
							<h2>Strange <span>Dexter</span></h2>
							<p>Dexter had his own strange way. You could watch him training ants.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-dexter">
						<img src="images/1.jpg" alt="img12"/>
						<figcaption>
							<h2>Strange <span>Dexter</span></h2>
							<p>Dexter had his own strange way. You could watch him training ants.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Sarah</h2>
				<div class="grid">
					<figure class="effect-sarah">
						<img src="images/1.jpg" alt="img13"/>
						<figcaption>
							<h2>Free <span>Sarah</span></h2>
							<p>Sarah likes to watch clouds. She's quite depressed.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-sarah">
						<img src="images/1.jpg" alt="img20"/>
						<figcaption>
							<h2>Free <span>Sarah</span></h2>
							<p>Sarah likes to watch clouds. She's quite depressed.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Chico</h2>
				<div class="grid">
					<figure class="effect-chico">
						<img src="images/1.jpg" alt="img15"/>
						<figcaption>
							<h2>Silly <span>Chico</span></h2>
							<p>Chico's main fear was missing the morning bus.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-chico">
						<img src="images/1.jpg" alt="img04"/>
						<figcaption>
							<h2>Silly <span>Chico</span></h2>
							<p>Chico's main fear was missing the morning bus.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
				</div>
				<h2>Milo</h2>
				<div class="grid">
					<figure class="effect-milo">
						<img src="images/1.jpg" alt="img11"/>
						<figcaption>
							<h2>Faithful <span>Milo</span></h2>
							<p>Milo went to the woods. He took a fun ride and never came back.</p>
							<a href="#">View more</a>
						</figcaption>			
					</figure>
					<figure class="effect-milo">
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
				<p><strong>If you enjoyed this demo you might also like:</strong></p>
				<a href="http://tympanus.net/Tutorials/CaptionHoverEffects/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2013/06/CaptionHoverEffect-300x162.png" />
					<h3>Caption Hover Effects</h3>
				</a>
				<a href="http://tympanus.net/Tutorials/ShapeHoverEffectSVG/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2014/01/ShapeHoverEffect-300x162.png" />
					<h3>Shape Hover Effects</h3>
				</a>
			</section>
		</div><!-- /container -->
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>
		 <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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
	</body>
</html>