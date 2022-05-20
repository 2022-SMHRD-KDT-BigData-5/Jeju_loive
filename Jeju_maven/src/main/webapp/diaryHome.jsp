<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.smhrd.domain.diaryImg"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.smhrd.domain.diaryDAO"%>
<%@page import="com.smhrd.domain.diary"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	diaryDAO dao = new diaryDAO();
	diaryImg onloadimgf = null;
	Member loginMember = (Member)session.getAttribute("loginMember");
	List<diary> diaryList =null;
	String month=null;
	String day=null;
	
	if(loginMember != null){
		String mem_id=loginMember.getId();
		
		diaryList = dao.selectDiary(mem_id);
		System.out.print(diaryList);
		if (diaryList.size()>0){
			pageContext.setAttribute("diaryList",diaryList);
			
			Timestamp date=diaryList.get(0).getDia_date();
			SimpleDateFormat sdf2 = new SimpleDateFormat("MMM");
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd");
			month = sdf2.format(diaryList.get(0).getDia_date());

			day = sdf1.format(diaryList.get(0).getDia_date());
		
			BigDecimal pagenum=diaryList.get(0).getDia_num();
			diaryImg uploadimg=new diaryImg(pagenum,date,day);
			session.setAttribute("pagenum", uploadimg);
			
			diaryImg k= new diaryImg(uploadimg.getD_num(),uploadimg.getD_num(),uploadimg.getD_tripday(),loginMember.getId());
			onloadimgf = (diaryImg)dao.selectDimgf(k);
			String oname=onloadimgf.getP_oname();
			diaryImg updateimg=new diaryImg(pagenum,date,oname);
			session.setAttribute("updateimg", updateimg);
		}
		
	}
	else{
		
	}
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
		<style>
			#flex_cont{display:flex;}
			.test{
				width:100%;
				height:100%;
				margin-right: -5px;
			}
			.test2{
				width:100%;
				height:100%;
				margin-left: 5px;
			}
			
			.test3{
				width:100%;
				height:100%;
			}
		</style>
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
								<h2><a id="mainheading">
								<%if(diaryList==null||diaryList.size()<1){
									%>Welcome to your diary<% 
								}
								else {
									%>
									<%=diaryList.get(0).getDia_name()%><%
								}
								%>
								</a></h2>
								<p id="subheading">
								<%if(diaryList==null||diaryList.size()<1){
									%>제주도 여행 1일차<% 
								}
								else {
									%>
									<%=diaryList.get(0).getSub()%><%
								}
								%>
								</p>
							</header>
							<div class="info">
								<!--
									Note: The date should be formatted exactly as it's shown below. In particular, the
									"least significant" characters of the month should be encapsulated in a <span>
									element to denote what gets dropped in 1200px mode (eg. the "uary" in "January").
									Oh, and if you don't need a date for a particular page or post you can simply delete
									the entire "date" element.

								-->
								<span class="date">
								<span class="month">
								<%
									if(diaryList==null||diaryList.size()<1){
										%><a href="#" class="fas fa-calendar-plus fa-2x" id="monthchange"></a><%
									}
									else{
										%><%=month %> <%
									}
								
								%>
								</span> 
								<span class="day">
								<%
									if(diaryList==null||diaryList.size()<1){
										%><a href="#" id="daychange"></a><%
									}
									else{
										%><%=day %> <%
									}
								
								%>
								</span>
								</span>
								<!--
									Note: You can change the number of list items in "stats" to whatever you want.
								-->
								<ul class="stats">
									<li><a href="#" class="icon fa-comment">16</a></li>
									<li><a href="#" class="icon fa-heart">32</a></li>
									<li><a href="#" class="icon brands fa-twitter">64</a></li>
									<li id="save"><a href="#" class="fas fa-file-alt">save</a></li>
								</ul>
							</div>
							<div id="flex_cont">
							<%
							
							
							
							if(onloadimgf == null){
							%>
							<div class="test">
							<form method="post" enctype="multipart/form-data" action="imgupCon">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test">
								<img alt="추가하세요" src="<%=onloadimgf.getP_loc()%>"class="test" id="firstimg">
								</div>
								<%	
							}%>	
								
							<%
							
							
							String fullpath = (String)session.getAttribute("fullpath");
							
							
							if (fullpath==null){
							%>
							<div class="test2">
							<form method="post" enctype="multipart/form-data" action="imgup.jsp">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test2">
								<img alt="추가하세요" src="<%=fullpath%>" class="test2">
								</div>
								<%	
							}%>	
							<%
							if (fullpath==null){
							%>
							<div class="test2">
							<form method="post" enctype="multipart/form-data" action="imgup.jsp">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test2">
								<img alt="추가하세요" src="<%=fullpath%>"class="test2">
								</div>
								<%	
							}%>	
							
							
							</div>
							
							
								<%
								if(diaryList==null||diaryList.size()<1){
									%>
									<textarea name="content" id="textcontent" cols="130" rows="6"></textarea>
									<button id="btn3">수정하기</button>
									<%
								}
								else{
									%><p id="textc"><%= diaryList.get(0).getDia_content() %></p><% 
								}
								
								%>
								
							
									
								
							
							
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
			<%-- let date=<%=diaryList.get(0).getDia_num()%> --%>
			/* if(date==1){
				$('.pages>a').removeAttr('class');
				$('.pages>a').eq(3).attr('class','active');
			} */
			let yearchange=0;
			let monthchange=0;
			let daychange=0;
				$('#btnNext').click(function(){
					
					$('.active').next().attr('class','active');
					
					$('.active').eq(0).removeAttr('class');
					

       			})
				   $('#btnPrevious').click(function(){
					
					$('.active').prev().attr('class','active');
					$('.active').eq(1).removeAttr('class');
					
					

       			})
				   $('.pages>a').click(function(){
           			let k = $(this).text();
					$('.pages>a').removeAttr('class');
					$('.pages>a').eq(k-1).attr('class','active');
       			})
       			$(document).on('dblclick','#mainheading',function(){
       				$(this).before('<textarea name="content" id="textcontent3" cols="70" rows="1"></textarea>');
       				$(this).after('<button id="btn5">수정하기</button>');
       				$(this).css("display" ,"none");
        		})
        		$(document).on('dblclick','#subheading',function(){
       				$(this).before('<textarea name="content" id="textcontent4" cols="50" rows="1"></textarea>');
       				$(this).after('<button id="btn6">수정하기</button>');
       				$(this).css("display" ,"none");
        		})
       			$(document).on('dblclick','#textc',function(){
       				$(this).before('<textarea name="content" id="textcontent2" cols="130" rows="6"></textarea>');
       				$(this).after('<button id="btn4">수정하기</button>');
       				$(this).css("display" ,"none");
        		})
        		$(document).on('dblclick','.date',function(){
        			yearchange = prompt('변경할 Year를 입력해주세요 >> 2017' );
       				monthchange = prompt('변경할 Month를 입력해주세요 >>5');
       				daychange = prompt('변경할 Day를 입력해주세요 >>07');
       				$('.month').text(monthchange+"월");
       				$('.day').text(daychange);
        		})
       			$(document).on('dblclick','#firstimg',function(){
       				$(this).before('<form method="post" enctype="multipart/form-data" action="imguChangeCon"><input type="file" name="filename1" size=40><input type="submit" value="업로드"><br><br></form>')
       				$(this).css("display" ,"none");
        		})
        		$(document).on('click','#btn3',function(){
       				let changecontent=$('#textcontent').val();
       				$(this).before('<p id="textc">'+changecontent+'</p>');
       				$('#textcontent').remove();
           			$(this).remove();
           			
           			
        		})
        		
       			$(document).on('click','#btn4',function(){
       				let changecontent=$('#textcontent2').val();
       				$('#textc').css("display" ,"inline");
       				$('#textc').text(changecontent);
       				$('#textcontent2').remove();
           			$(this).remove();
           			
           			
        		})
        		$(document).on('click','#btn5',function(){
       				let changecontent=$('#textcontent3').val();
       				$('#mainheading').text(changecontent);
       				$('#mainheading').css("display" ,"inline");
       				$('#textcontent3').remove();
           			$(this).remove();
           			
           			
        		})
        		$(document).on('click','#btn6',function(){
       				let changecontent=$('#textcontent4').val();
       				$('#subheading').css("display" ,"block");
       				$('#subheading').text(changecontent);
       				$('#textcontent4').remove();
           			$(this).remove();
           			
           			
        		})
       			$(document).on('click','#save',function(){
       				let con = confirm('저장 하시겠습니까?');
       				let text = $('#textc').text();
       				let date = yearchange+'-0'+monthchange+'-'+daychange;
       				let head = $('#mainheading').text();
       				let sub = $('#subheading').text();
       				let page=$('.active').text();
       				if(con){
       					$(location).attr('href', 'diaryCon?text='+text+'&date='+date+'&head='+head+'&sub='+sub+'&page='+page);
       				}
           			
           			
        		})
        		
        		$(document).on('click','#monthchange',function(){
        			yearchange = prompt('Year를 입력해주세요 >> 2017');
       				monthchange = prompt('Month를 입력해주세요 >> 7');
       				daychange = prompt('Day를 입력해주세요 >>05');
       				$('.month').text(monthchange+"월");
       				$(this).removeAttr();
       				$('.day').text(daychange);
           			
           			
        		})
       			
       			
				<%-- $('.test').dblclick(function(){
            		<% onloadimgf=null;%>
        		}) --%>

			</script>

	</body>
</html>