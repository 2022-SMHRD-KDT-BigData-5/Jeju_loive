<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>BlueSky</title>
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="assets/css/style.css">
      <link rel="stylesheet" href="assets/css/fontawesome.min.css">
	  <link rel="stylesheet" href="assest/css/fontawesome-all.min.css">
      <link rel="stylesheet" href="assets/css/diaryHome.css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
   </head>
      <body class="is-preload">

         <!-- Content -->
            <div id="content">
               <div class="inner">
      <div id="home" class="slider">
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#main_slider" data-slide-to="0" class="active"></li>
               <li data-target="#main_slider" data-slide-to="1"></li>
               <li data-target="#main_slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  
					<!-- Post -->
						<article class="box post post-excerpt" id="first">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<h2><a href="#">Welcome to Striped</a></h2>
								<p>A free, fully responsive HTML5 site template by HTML5 UP</p>
							</header>
							
							<div>
								<img src="images/slide1.jpg" alt="" class="test" />
								<img src="images/slide2.jpg" alt="" class="test2"/>
								

							</div>
							<img src="images/pic1.jpg" alt="" class="test3"/>
							
							<p>
								<strong>Hello!</strong> You're looking at <strong>Striped</strong>, a fully responsive HTML5 site template designed by <a href="http://twitter.com/ajlkn">AJ</a>
								for <a href="http://html5up.net">HTML5 UP</a> It features a clean, minimalistic design, styling for all basic page elements (including blockquotes, tables and lists), a
								repositionable sidebar (left or right), and HTML5/CSS3 code designed for quick and easy customization (see code comments for details).
							</p>
							<p>
								Striped is released for free under the <a href="http://html5up.net/license">Creative Commons Attribution license</a> so feel free to use it for personal projects
								or even commercial ones &ndash; just be sure to credit <a href="http://html5up.net">HTML5 UP</a> for the design. If you like what you see here, be sure to check out
								<a href="http://html5up.net">HTML5 UP</a> for more cool designs or follow me on <a href="http://twitter.com/ajlkn">Twitter</a> for new releases and updates.
							</p>
						</article>
                  
               </div>
               <div class="carousel-item">
                  
					<!-- Post -->
						<article class="box post post-excerpt" id="first">
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<h2><a href="#">Welcome to Striped</a></h2>
								<p>A free, fully responsive HTML5 site template by HTML5 UP</p>
							</header>
							<div class="info">
								<!--
									Note: The date should be formatted exactly as it's shown below. In particular, the
									"least significant" characters of the month should be encapsulated in a <span>
									element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
									Oh, and if you don't need a date for a particular page or post you can simply delete
									the entire "date" element.

								-->
								<span class="date"><span class="month">Jul<span>y</span></span> <span class="day">14</span><span class="year">, 2014</span></span>
								<!--
									Note: You can change the number of list items in "stats" to whatever you want.
								-->
								<ul class="stats">
									<li><a href="#" class="icon fa-comment">16</a></li>
									<li><a href="#" class="icon fa-heart">32</a></li>
									<li><a href="#" class="icon brands fa-twitter">64</a></li>
									<li><a href="#" class="icon brands fa-facebook-f">128</a></li>
								</ul>
							</div>
							<div>
								<img src="images/pic01.jpg" alt="" class="test" />
								<img src="images/pic01.jpg" alt="" class="test2"/>
								

							</div>
							<img src="images/pic01.jpg" alt="" class="test3"/>
							
							<p>
								<strong>Hello!</strong> You're looking at <strong>Striped</strong>, a fully responsive HTML5 site template designed by <a href="http://twitter.com/ajlkn">AJ</a>
								for <a href="http://html5up.net">HTML5 UP</a> It features a clean, minimalistic design, styling for all basic page elements (including blockquotes, tables and lists), a
								repositionable sidebar (left or right), and HTML5/CSS3 code designed for quick and easy customization (see code comments for details).
							</p>
							<p>
								Striped is released for free under the <a href="http://html5up.net/license">Creative Commons Attribution license</a> so feel free to use it for personal projects
								or even commercial ones &ndash; just be sure to credit <a href="http://html5up.net">HTML5 UP</a> for the design. If you like what you see here, be sure to check out
								<a href="http://html5up.net">HTML5 UP</a> for more cool designs or follow me on <a href="http://twitter.com/ajlkn">Twitter</a> for new releases and updates.
							</p>
						</article>
                  
               </div>
            </div>
            <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
            <img src="images/left.png" alt="#" />
            </a>
            <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
            <img src="images/right.png" alt="#" />
            </a>
         </div>
      </div>
   </div>
</div>
      <script src="js/jquery-3.3.1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      
   </body>
</html>