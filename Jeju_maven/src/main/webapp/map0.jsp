<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.smhrd.domain.tourDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.domain.inplanDAO"%>
<%@page import="com.smhrd.domain.inplan"%>
<%@page import="com.smhrd.domain.tour"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Timestamp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>    
<%
inplanDAO dao = new inplanDAO();
tourDAO tdao = new tourDAO();
Member loginMember = (Member)session.getAttribute("loginMember");
String mem_id = loginMember.getId();
System.out.print(mem_id);

Timestamp plan_date = Timestamp.valueOf("2022-07-25 00:00:00");

/*SimpleDateFormat sdf = new SimpleDateFormat("YY/MM/dd");
System.out.print(sdf.format(plan_date));
 */
inplan inplan= new inplan(mem_id,plan_date);

List<tour> planAddList = tdao.selectTour(inplan);

System.out.print(planAddList);
pageContext.setAttribute("planAddList",planAddList);


System.out.print(planAddList.get(1).getName());


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="map" style="width:100%;height:600px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>

<script>
var positions = [""];
console.log("<%=planAddList.get(0)%>")
<% for(int i =0; i< planAddList.size(); i++){%>
positions.push("<%=planAddList.get(i).getAddress()%>")

<%}%>
/* let list1 = document.getElementsByClassName('planAddList');

for(var i = 0; i< list1.length; i++){
	
}
 */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 9 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); 

/* var positions = [
    {
		address:"제주특별자치도 서귀포시 성산읍 일출로 284-12",
        text: '문광사서점'
    }
]; */



for (var i = 0; i < positions.length; i ++) {
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(positions[i], function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		 if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map: map,
				position: coords
			});
			
			<% for(int j =0; j< planAddList.size(); j++){
				System.out.print(planAddList.get(j).getName());
			%>
			console.log(document.getElementsByClassName('name<%=j%>')[0].innerHTML);
			var iwContent = '<div style="padding:6px;">'+ '여기가 어디일까용 ~' +'</div>', //인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(result[0].y, result[0].x), //인포윈도우 표시 위치입니다
		    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			<%}%>
		// 인포윈도우를 생성하고 지도에 표시합니다
		var infowindow = new kakao.maps.InfoWindow({
		    map: map, // 인포윈도우가 표시될 지도
		    position : iwPosition, 
		    content : iwContent,
		    removable : iwRemoveable
		});
			
			 
			// 마커에 표시할 인포윈도우를 생성합니다 
			/* var infowindow = new kakao.maps.InfoWindow({
				//content: positions[i].content // 인포윈도우에 표시할 내용
				content: '<div style="width:150px;text-align:center;padding:6px 0;">'+positions[i].text+'</div>' // 인포윈도우에 표시할 내용
			});  */
			//infowindow.open(map, marker);
			/* kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow)); */
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			//map.setCenter(coords);
		} 

	}); 
	
}



</script>
<h2>여행지List</h2>
	<div>
	<c:forEach var = "p" items="${planAddList}" varStatus="status">   
                <p class="name${status.index}">${p.name}</p>
                <p class="planAddList">${p.address}</p>
	</c:forEach>
</div>


</body>
</html>