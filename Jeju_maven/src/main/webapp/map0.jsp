<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>

<script>


var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 8 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); 

var positions = [
    {
		address:"제주특별자치도 제주시 원노형로 41",
        text: '문광사서점'
    },
    {
        address:'제주특별자치도 서귀포시 성산읍 고성동서로56번길 11',
        text: '카페써니'
    },
    {
        address:'제주특별자치도 서귀포시 대정읍 하모항구로 42',
        text: '추성희헤어스투디오'
    }
	,{
		address:'제주특별자치도 제주시 조천읍 동백로 102',
		text:'리헤어리더'
	}
];

for (var i = 0; i < positions.length; i ++) {
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(positions[i].address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		 if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map: map,
				position: coords
			});
			// 마커에 표시할 인포윈도우를 생성합니다 
			/* 	var infowindow = new kakao.maps.InfoWindow({
				//content: positions[i].content // 인포윈도우에 표시할 내용
				content: '<div style="width:150px;text-align:center;padding:6px 0;">'+positions[i].text+'</div>' // 인포윈도우에 표시할 내용
			}); */
			//infowindow.open(map, marker);
			/* kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow)); */
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			//map.setCenter(coords);
		} 

	});   
}

</script>






</body>
</html>