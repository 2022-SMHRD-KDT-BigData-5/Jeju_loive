<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.review"%>
<%@page import="com.smhrd.domain.reviewDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	reviewDAO dao = new reviewDAO();
	BigDecimal tour_num = new BigDecimal(610);
	List<review> ReviewList = dao.selectReview(tour_num);
	pageContext.setAttribute("ReviewList", ReviewList);
	tour tourInfo = (tour)session.getAttribute("tourInfo");
	String test = (String)session.getAttribute("inPlan");

%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hover Effect Ideas | Set 1</title>
<meta name="description"
	content="Hover Effect Ideas: Inspiration for subtle hover effects" />
<meta name="keywords"
	content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">

<link rel="stylesheet" href="assets/css/dragdrop.css" />
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="assets/js/dragdrop.js"></script>


</head>


<body>
	
	<script>
		$(document).ready(function createItem('tour_name') {
		    $(createBox(tour_name))
	        .appendTo("#itemBoxWrap") //아이템 구성할 태그 반환받아 jquery객체로 만듦, 만들어진 아이템을 #itemBoxWrap에 추가
	        .hover(                   //아이템에 마우스 오버와 마우스 아웃 시 동작 지정
	            function () {         //마우스 오버시: 배경 노란색으로 바꾸고 삭제버튼 노출
	                $(this).css('backgroundColor', '#f9f9f5');
	                $(this).find('.deleteBox').show();
	            },
	            function () {         //마우스 아웃시 : 배경 원래대로 돌리고 삭제버튼 숨김
	                $(this).css('background', 'none');
	                $(this).find('.deleteBox').hide();
	            }
	        )
	        .append("<div class='deleteBox'>[삭제]</div>") //아이템에 삭제버튼 추가
	        .find(".deleteBox").click(function () {       // 삭제버튼 클릭 시 동작 지정(입력필드에 값이 있으면 정말 삭제할지 물어봄)
	            var valueCheck = false;
	            $(this).parent().find('input').each(function () {
	                if ($(this).attr("name") != "type" && $(this).val() != '') {
	                    valueCheck = true;
	                }
	            });
	            if (valueCheck) {
	                var delCheck = confirm('입력하신 내용이 있습니다.\n삭제하시겠습니까?');
	            }
	            if (!valueCheck || delCheck == true) {
	                $(this).parent().remove();
	                reorder();
	            }
	        });

	    // 숫자를 다시 붙인다.
	    reorder();)
		
		

	</script>

</body>
</html>