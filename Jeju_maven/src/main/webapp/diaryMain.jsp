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
List<diary> diaryList =null;
List<diaryAlbum> dimgList=null;
int num=0;
SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
Member loginMember = (Member)session.getAttribute("loginMember");
if(loginMember != null){
	pageContext.setAttribute("loginMember",loginMember);
	String mem_id=loginMember.getId();
	dimgList = dao.selectDimgAll(mem_id);
	pageContext.setAttribute("dimgList",dimgList);
	
	
} 
%>
<html>
	<head>
		<title>Strata by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets2/css/main.css" />
		<style>
			input{
				border: white;
				color: black;
			}
			.diary{
				width:370px;
				height:217px;
			}
			.imgup{
				width:370px;
				height:217px;
				background-image: url("images/bg.jpg")
			}
			h4{
				color:black;
			}
		</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<div class="inner">
					<a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
					<h1><strong>I am Strata</strong>, a super simple<br />
					responsive site template freebie<br />
					crafted by <a href="http://html5up.net">HTML5 UP</a>.</h1>
				</div>
			</header>

		<!-- Main -->
			<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Ipsum lorem dolor aliquam ante commodo<br />
							magna sed accumsan arcu neque.</h2>
						</header>
						<p>Accumsan orci faucibus id eu lorem semper. Eu ac iaculis ac nunc nisi lorem vulputate lorem neque cubilia ac in adipiscing in curae lobortis tortor primis integer massa adipiscing id nisi accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque cubilia.</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>

				<!-- Two -->
					<section id="two">
						<h2>Recent Work</h2>
						<div class="row">
							
				            <c:forEach var="t" items="${dimgList}" varStatus="status">
							<article class="col-6 col-12-xsmall work-item">
								<% if (dimgList.get(num).getD_tripday()==null){
									%><input type="date" name="date1"><% 
								}
								else{String date=sdf1.format(dimgList.get(num).getD_tripday());
									%><h4><%=date%></h4> <%
								}
								%>
								
								<% if (dimgList.get(num).getP_loc()==null){
									%><div class="imgup"><br><br><form align="center" method="post" enctype="multipart/form-data" action="imgupCon">
										<input type="date" name="date">
										<input type="file" name="filename1" size=40 >
										<input type="submit" value="업로드">
										</form></div><% 
								}
								else{
									%><a href="<%=dimgList.get(num).getP_loc() %>" class="image fit thumb"><img src="<%=dimgList.get(num).getP_loc() %>" alt="" class="diary" /></a>
									<% 
								}
								%>
								<h3><pre class="none"><%=dimgList.get(num).getD_content() %></pre></h3>
								<h2>Lorem ipsum dolor sit amet nisl sed nullam feugiat.</h2>
							</article>
							</c:forEach>
				           
							
						</div>
						<ul class="actions">
							<li><a href="#" class="button">Full Portfolio</a></li>
						</ul>
					</section>
					
				
				

			</div>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/diaryMain.js"></script>
			<script>
				$('.none').css('display','none');
				let page=<%=dimgList.size()%>;
				let img="";
				
				if(page<1){
					$('.row').append('<div class="imgup"><br><br><form align="center" method="post" enctype="multipart/form-data" action="imgupCon">'+
							'<input type="date" name="date">'+
							'<input type="file" name="filename1" size=40 >'+
							'<input type="submit" value="업로드">'+
							'</form></div>');
					
				}
				$(document).on('dblclick','.caption',function(){
       				$(this).text("");
       				$(this).append('<textarea class="change" rows="15"></textarea>');
       				$(this).append('<button class="save">더블클릭 저장</button>')
        		})
        		
				$(document).on('dblclick','.save',function(){
					let change= $('.change').val();
        			console.log(change);
        			let img=$(this).parent().prev('img').attr('src');
        			console.log(img);
        			let cot = confirm('저장?');
        			if(cot==true){
        				$(location).attr('href', 'diaryCon?change='+change+'img='+img);
        			}
        		})
        		$('a').click(function(){
					img= $(this).find('img').attr('src');
					console.log(img);
				})
			</script>

	</body>
</html>