let k = $('#te1').text();
let k2 = $('#te2').text();
console.log(k);
if (k == 1) {
	$('#test1').width('20%');
}
else if (k == 2) {
	$('#test1').width('40%');
}
else if (k == 3) {
	$('#test1').width('60%');
}
else if (k == 4) {
	$('#test1').width('80%');
}
else if (k == 5) {
	$('#test1').width('100%');
}
if (k2 == 1) {
	$('#test2').width('20%');
}
else if (k2 == 2) {
	$('#test2').width('40%');
}
else if (k2 == 3) {
	$('#test2').width('60%');
}
else if (k2 == 4) {
	$('#test2').width('80%');
}
else if (k2 == 5) {
	$('#test2').width('100%');
}
//id가 itemBoxWrap인 태그를 리스트로 만드는 함수 
$(function() {
	$("#itemBoxWrap").sortable({
		placeholder: "itemBoxHighlight", //아이템이 놓일 자리 표시할 스타일 지정
		start: function(event, ui) {    //드래그 시작시 호출되는 이벤트 핸들러
			ui.item.data('start_pos',   //아이템에 키, 값 쌍으로 데이터 저장
				ui.item.index());           //드래그하는 아이템의 위치 가져옴(첫번째:0)
		},
		stop: function(event, ui) {     //드랍하면 호출되는 이벤트 핸들러
			var spos = ui.item.data('start_pos');
			var epos = ui.item.index();
			reorder();                  //순서 변경되면 모든itemBox내의 itemNum의 번호 순서대로 다시 붙임
		}
	});
});

//재정렬된 아이템의 순서 매겨주는 함수
function reorder() {
	$(".itemBox").each(function(i, box) {
		$(box).find(".itemNum").html(i + 1);
	});
}

//아이템 추가하기
function createItem(tour_name, tour_num, tour_add) {
	$(createBox(tour_name, tour_num, tour_add))
		.appendTo("#itemBoxWrap") //아이템 구성할 태그 반환받아 jquery객체로 만듦, 만들어진 아이템을 #itemBoxWrap에 추가
		.hover(                   //아이템에 마우스 오버와 마우스 아웃 시 동작 지정
			function() {         //마우스 오버시: 배경 노란색으로 바꾸고 삭제버튼 노출
				$(this).css('backgroundColor', '#f9f9f5');
				$(this).find('.deleteBox').show();
			},
			function() {         //마우스 아웃시 : 배경 원래대로 돌리고 삭제버튼 숨김
				$(this).css('background', 'none');
				$(this).find('.deleteBox').hide();
			}
		)
		.append("<div class='deleteBox'>[삭제]</div>") //아이템에 삭제버튼 추가
		.find(".deleteBox").click(function() {       // 삭제버튼 클릭 시 동작 지정(입력필드에 값이 있으면 정말 삭제할지 물어봄)
			var valueCheck = false;
			$(this).parent().find('input').each(function() {
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
	reorder();
	//itemBox에 함께 저장된 값 숨겨주기 ㅎㅅㅎ
	$(document).find('.tourNum').hide();
	$(document).find('.tourAdd').hide();
}


// 아이템을 구성할 태그를 반환합니다.
// itemBox 내에 번호를 표시할 itemNum 과 입력필드가 있습니다.
function createBox(tour_name, tour_num, tour_add) {

	var contents
		= "<div class='itemBox'>"
		+ "<div style='float:left;'>"
		+ "<span class='itemNum'></span> "
		+ "<input type='text' name='item' style='width:300px;' value='" + tour_name + "'/>"
		+ "<input type='text' name='tourNum' class='tourNum' value='" + tour_num + "'/>"
		+ "<input type='text' name='tourAdd' class='tourAdd' value='" + tour_add + "'/>"
		+ "</div>"
		+ "</div>"
		;
	return contents;
}













