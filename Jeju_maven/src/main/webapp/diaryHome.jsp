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
	int pagenumber=1;
	SimpleDateFormat sdf2 = new SimpleDateFormat("MMM");
	SimpleDateFormat sdf1 = new SimpleDateFormat("dd");
	Member loginMember = (Member)session.getAttribute("loginMember");
	List<diary> diaryList =null;
	List<diaryImg> dimgList=null;
	List<diaryImg> dimgList2=null;
	List<diaryImg> dimgList3=null;
	String month=null;
	String day=null;
	String test=null;
	int i=0;
	int num=1;
	if(loginMember != null){
		String mem_id=loginMember.getId();
		
		diaryList = dao.selectDiary(mem_id);
		
		System.out.print(diaryList);
		if (diaryList.size()>0){
			pageContext.setAttribute("diaryList",diaryList);
			
			Timestamp date=diaryList.get(0).getDia_date();
			
			month = sdf2.format(diaryList.get(0).getDia_date());

			day = sdf1.format(diaryList.get(0).getDia_date());
		
			BigDecimal pagenum=diaryList.get(0).getDia_num();
			diaryImg uploadimg=new diaryImg(pagenum,date,day);
			session.setAttribute("pagenum", uploadimg);
			
			diaryImg k= new diaryImg(uploadimg.getD_num(),uploadimg.getD_num(),uploadimg.getD_tripday(),loginMember.getId());
			dimgList=dao.selectDimgf(mem_id);
			dimgList2=dao.selectDimg2(mem_id);
			dimgList3=dao.selectDimg3(mem_id);
			String oname=dimgList.get(0).getP_oname();
			test=diaryList.get(0).getDia_content();
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
					<c:forEach var="t" items="${diaryList}" varStatus="status">
						
						<article class="box post post-excerpt" id="num<%=num%>">
						
							<header>
								<!--
									Note: Titles and subtitles will wrap automatically when necessary, so don't worry
									if they get too long. You can also remove the <p> entirely if you don't
									need a subtitle.
								-->
								<h2><a id="mainheading">
								<%if(diaryList==null||diaryList.size()<num){
									%>Welcome to your diary<% 
								}
								else {
									%>
									<%=diaryList.get(num-1).getDia_name()%><%
								}
								%>
								</a></h2>
								<p id="subheading">
								<%if(diaryList==null||diaryList.size()<num){
									%>제주도 여행 1일차<% 
								}
								else {
									%>
									<%=diaryList.get(num-1).getSub()%><%
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
									if(diaryList==null||diaryList.size()<num){
										%><a href="#" class="fas fa-calendar-plus fa-2x" id="monthchange"></a><%
									}
									else{
										month = sdf2.format(diaryList.get(num-1).getDia_date());

										
										%><%=month %> <%
									}
								
								%>
								</span> 
								<span class="day">
								<%
									if(diaryList==null||diaryList.size()<num){
										%><a href="#" id="daychange"></a><%
									}
									else{
										day = sdf1.format(diaryList.get(num-1).getDia_date());
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
									<li id="mod"><a href="#" class="fas fa-edit">mod</a></li>
									<li id="save"><a href="#" class="fas fa-file-alt">save</a></li>
								</ul>
							</div>
							<div id="flex_cont">
							<%
							
							
							
							if(dimgList == null || dimgList.size()<num){
							%>
							<div class="test">
							<form method="post" enctype="multipart/form-data" action="imgupCon1">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test">
								<img alt="추가하세요" src="<%=dimgList.get(num-1).getP_loc()%>"class="test" id="firstimg">
								</div>
								<%	
							}%>	
							
							<% 	
							if(dimgList2 == null || dimgList2.size()<num){
							%>
							<div class="test2">
							<form method="post" enctype="multipart/form-data" action="imgupCon2">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test2">
								<img alt="추가하세요" src="<%=dimgList2.get(num-1).getP_loc()%>"class="test2" id="secondimg">
								</div>
								<%	
							}%>	
							<% 	
							if(dimgList3 == null || dimgList3.size()<num){
							%>
							<div class="test3">
							<form method="post" enctype="multipart/form-data" action="imgupCon3">
							<input type="file" name="filename1" size=40>
							<input type="submit" value="업로드"><br><br>
							
							</form>
							</div>
							<%}
							else{
								%>
								<div class="test3">
								<img alt="추가하세요" src="<%=dimgList3.get(num-1).getP_loc()%>"class="test3" id="thirdimg">
								</div>
								<%	
							}%>	
							
							</div>
							
							
								<%
								if(diaryList==null||diaryList.size()<num){
									%>
									<textarea name="content" id="textcontent" cols="130" rows="6"></textarea>
									<button id="btn3">수정하기</button>
									<%
								}
								else{
									%><p id="textc"><%= diaryList.get(num-1).getDia_content() %></p><% 
								}
								
								%>
								<% 
								Timestamp date=diaryList.get(num-1).getDia_date();
								String oname=dimgList.get(num-1).getP_oname();
								BigDecimal pagenum=diaryList.get(num-1).getDia_num();
								diaryImg updateimg=new diaryImg(pagenum,date,oname);
								session.setAttribute("updateimg"+num, updateimg);
								num++;
								%>
							
									
								
							
							
						</article>
					</c:forEach>
					
					<!-- Pagination -->
						<div class="pagination">
							<a href="#" class="button previous" id="btnPrevious">Previous Page</a>
							<div class="pages">
								<!-- <a href="#" class="active">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
								<a href="#">4</a>
								<span>&hellip;</span>
								<a href="#">20</a> -->
								<c:forEach var="t" items="${diaryList}" varStatus="status">
								<%
								
								out.print("<a href='#'>"+diaryList.get(i).getDia_num()+"</a>");
								i++;%> 
								</c:forEach>
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
			$('.pages>a').eq(0).attr('class','active')
			let yearchange=0;
			let monthchange=0;
			let daychange=0;
			let i=$('.active').text();
			let k=0;
			
				for(k=1;k<=5;k++){
					$('#num'+k).css("display" ,"none")
				}
				$('#num'+i).css("display" ,"inline")			
			
			$(document).on('click','#btnNext',function(){
				
				$('.active').next().attr('class','active');
				
				$('.active').eq(0).removeAttr('class');
				i=$('.active').text();
				for(k=1;k<=5;k++){
					$('#num'+k).css("display" ,"none")
				}
				$('#num'+i).css("display" ,"inline")
				
   			})
			   $(document).on('click','#btnPrevious',function(){
			  
				
				$('.active').prev().attr('class','active');
				$('.active').eq(1).removeAttr('class');
				i=$('.active').text();
				for(k=1;k<=5;k++){
					$('#num'+k).css("display" ,"none")
				}
				$('#num'+i).css("display" ,"inline")
				

   			})
			   $(document).on('click','.pages>a',function(){
			  
       			let k = $(this).text();
				$('.pages>a').removeAttr('class');
				$('.pages>a').eq(k-1).attr('class','active');
				i=$('.active').text();
				for(k=1;k<=5;k++){
					$('#num'+k).css("display" ,"none")
				}
				$('#num'+i).css("display" ,"inline")
				
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
       				$(this).before('<form method="post" enctype="multipart/form-data" action="imguChangeCon1"><input type="file" name="filename1" size=40><input type="submit" value="업로드"><br><br></form>')
       				$(this).css("display" ,"none");
        		})
        		$(document).on('dblclick','#secondimg',function(){
       				$(this).before('<form method="post" enctype="multipart/form-data" action="imguChangeCon2"><input type="file" name="filename1" size=40><input type="submit" value="업로드"><br><br></form>')
       				$(this).css("display" ,"none");
        		})
        		$(document).on('dblclick','#thirdimg',function(){
       				$(this).before('<form method="post" enctype="multipart/form-data" action="imguChangeCon3"><input type="file" name="filename1" size=40><input type="submit" value="업로드"><br><br></form>')
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
       				var check= "<%=test%>";
       				if(con){
       					if(check==null){
       						$(location).attr('href', 'diaryCon?text='+text+'&date='+date+'&head='+head+'&sub='+sub+'&page='+page);
       					}
       					else{
       						
       						$(location).attr('href', 'diaryUpdateCon?text='+text+'&date='+date+'&head='+head+'&sub='+sub+'&page='+page);
       					}
       					
       				}
           			
           			
        		})
        		$(document).on('click','#mod',function(){
        			alert('수정 할려고 하는 텍스트 및 사진을 더블클릭하세요!');
           			
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