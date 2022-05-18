<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33d9767578d4d72c4d7cc3b81595ef94&libraries=services"></script>

	<script>
		var MARKER_WIDTH = 33, // 기본, 클릭 마커의 너비
		MARKER_HEIGHT = 36, // 기본, 클릭 마커의 높이
		OFFSET_X = 12, // 기본, 클릭 마커의 기준 X좌표
		OFFSET_Y = MARKER_HEIGHT, // 기본, 클릭 마커의 기준 Y좌표
		OVER_MARKER_WIDTH = 40, // 오버 마커의 너비
		OVER_MARKER_HEIGHT = 42, // 오버 마커의 높이
		OVER_OFFSET_X = 13, // 오버 마커의 기준 X좌표
		OVER_OFFSET_Y = OVER_MARKER_HEIGHT, // 오버 마커의 기준 Y좌표
		SPRITE_MARKER_URL = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markers_sprites2.png', // 스프라이트 마커 이미지 URL
		SPRITE_WIDTH = 126, // 스프라이트 이미지 너비
		SPRITE_HEIGHT = 146, // 스프라이트 이미지 높이
		SPRITE_GAP = 10; // 스프라이트 이미지에서 마커간 간격

		var markerSize = new kakao.maps.Size(MARKER_WIDTH, MARKER_HEIGHT), // 기본, 클릭 마커의 크기
		markerOffset = new kakao.maps.Point(OFFSET_X, OFFSET_Y), // 기본, 클릭 마커의 기준좌표
		overMarkerSize = new kakao.maps.Size(OVER_MARKER_WIDTH,
				OVER_MARKER_HEIGHT), // 오버 마커의 크기
		overMarkerOffset = new kakao.maps.Point(OVER_OFFSET_X, OVER_OFFSET_Y), // 오버 마커의 기준 좌표
		spriteImageSize = new kakao.maps.Size(SPRITE_WIDTH, SPRITE_HEIGHT); // 스프라이트 이미지의 크기

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption);

		var positions = [ {
			address : "제주특별자치도 제주시 원노형로 41",
			text : '문광사서점'
		}, {
			address : '제주특별자치도 서귀포시 성산읍 고성동서로56번길 11',
			text : '카페써니'
		}, {
			address : '제주특별자치도 서귀포시 대정읍 하모항구로 42',
			text : '추성희헤어스투디오'
		}, {
			address : '충남 부여군 부여읍 중앙로 7 리헤어리더',
			text : '리헤어리더'
		} ];

		for (var i = 0; i < positions.length; i++) {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(positions[i].address, function(result, status) {
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);
							
							});

			
						}
					});
					
					

		
	    // 마커에 mouseover 이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'mouseover', function() {

		        // 클릭된 마커가 없고, mouseover된 마커가 클릭된 마커가 아니면
		        // 마커의 이미지를 오버 이미지로 변경합니다
		        if (!selectedMarker || selectedMarker !== marker) {
		            marker.setImage(overImage);
		        }
		    });
		
		
		
		
		
		
		
		
		
	</script>
</body>
</html>
</body>
</html>