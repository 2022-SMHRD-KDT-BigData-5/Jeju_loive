<%@page import="com.smhrd.domain.diaryDAO"%>
<%@page import="com.smhrd.domain.diary"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	diaryDAO dao = new diaryDAO();
	String mem_id="jsh";
	List<diary> diaryList = dao.selectDiary(mem_id);
	pageContext.setAttribute("diaryList",diaryList);
%>
<!DOCTYPE HTML>
<!--
	Striped by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Striped by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/diaryHome.css" />
	</head>
	<body class="is-preload">

		<!-- Content -->
			<div id="content">
				<div class="inner">

					<!-- Post -->
						<article class="box post post-excerpt">
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
								<img src="images/slide1.jpg" alt="실패" class="test">
								<img src="images/slide2.jpg" alt="실패" class="test2">
							</div>
							<img src="images/pic01.jpg" alt="실패"class="test3">
							<p>
								<%= diaryList.get(0).getDia_content() %>
									
								
							</p>
							<p>
								Striped is released for free under the Creative Commons Attribution license so feel free to use it for personal projects
								or even commercial ones &ndash; just be sure to credit HTML5 UP for the design. If you like what you see here, be sure to check out
								HTML5 UP for more cool designs or follow me on Twitter for new releases and updates.
							</p>
						</article>

					
					<!-- Pagination -->
						<div class="pagination">
							<a href="#" class="button previous" id="btnPrevious">Previous Page</a>
							<div class="pages">
								<a href="#" class="active">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
								<a href="#">4</a>
								<span>&hellip;</span>
								<a href="#">20</a>
							</div>
							<a href="#" class="button next" id="btnNext">Next Page</a>
						</div>

				</div>
			</div>

	

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/diaryHome.js"></script>
			<script>
				let i=0;
				$('#btnNext').click(function(){
					i++;
					$('.pages>a').eq(i).attr('class','active');
					
					$('.pages>a').eq(i-1).removeAttr('class');
					

       			})
				   $('#btnPrevious').click(function(){
					i--;
					$('.pages>a').eq(i).attr('class','active');
					$('.pages>a').eq(i+1).removeAttr('class');
					
					

       			})
				   $('.pages>a').click(function(){
           			let k = $(this).text();
					$('.pages>a').removeAttr('class');
					$('.pages>a').eq(k-1).attr('class','active');
					
					
					

       			})
				

			</script>

	</body>
</html>