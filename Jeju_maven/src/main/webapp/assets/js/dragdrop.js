
//id가 itemBoxWrap인 태그를 리스트로 만드는 함수 
$(function () {
    $("#itemBoxWrap").sortable({
        placeholder: "itemBoxHighlight", //아이템이 놓일 자리 표시할 스타일 지정
        start: function (event, ui) {    //드래그 시작시 호출되는 이벤트 핸들러
            ui.item.data('start_pos',   //아이템에 키, 값 쌍으로 데이터 저장
                ui.item.index());           //드래그하는 아이템의 위치 가져옴(첫번째:0)
        },
        stop: function (event, ui) {     //드랍하면 호출되는 이벤트 핸들러
            var spos = ui.item.data('start_pos');
            var epos = ui.item.index();
            reorder();                  //순서 변경되면 모든itemBox내의 itemNum의 번호 순서대로 다시 붙임
        }
    });
});

//재정렬된 아이템의 순서 매겨주는 함수
function reorder() {
    $(".itemBox").each(function (i, box) {
        $(box).find(".itemNum").html(i + 1);
    });
}

//아이템 추가하기
function createItem(tour_name, tour_num,tour_add) {
    $(createBox(tour_name,tour_num,tour_add))
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
    reorder();
    			//itemBox에 함께 저장된 값 숨겨주기 ㅎㅅㅎ
    			$(document).find('.tourNum').hide();
				$(document).find('.tourAdd').hide();
}


// 아이템을 구성할 태그를 반환합니다.
		// itemBox 내에 번호를 표시할 itemNum 과 입력필드가 있습니다.
		function createBox(tour_name,tour_num,tour_add) {
				
		    var contents
		        = "<div class='itemBox'>"
		        + "<div style='float:left;'>"
		        + "<span class='itemNum'></span> "
		        + "<input type='text' name='item' style='width:300px;' value='"+tour_name+"'/>"
		        + "<input type='button' class='tourNum' value='"+tour_num+"'/>"
		        + "<input type='button' class='tourAdd' value='"+tour_add+"'/>"
		        + "</div>"
		        + "</div>"
		        ;
		    return contents;
		}
		
		
		
		
		
		//추가 클릭시 localStorage에 값을 저장하는 함수
		function setInPlan(){
            //값 가져오기
            //1) name이 item인 input태그 내의 value 가져오기
            //2) class=tourNum, class=tourAdd인 span태그의 text값 가져오기 /
            var tourNums=[];
            var tourAdds=[];
            var tourNames=[];
            var nums=[];
            var adds=[];
            var names=[];
            
            tourNums = document.getElementsByClassName('tourNum');
            tourAdds = document.getElementsByClassName('tourAdd');
            
            var len = $("input[name=item]").length;
            for(var i=0; i<len; i++){                          
    			tourNames[i] = $("input[name=item]").eq(i).val();
    		}
            
            //배열에 순서대로 담기
            for(i=0; i<tourNums.length; i++){
            	nums.push(tourNums[i].innerText);
            	adds.push(tourAdds[i].innerText);
            	names.push(tourNames[i]);
            }
            
            //확인용(콘솔창 확인)
            console.log(nums);
            console.log(adds);
            console.log(names);
            
         	// 객체, 배열을 JSON 문자열로 변환
            const numsString = JSON.stringify(nums);
            const addsString = JSON.stringify(adds);
            const namesString = JSON.stringify(names);
			
            //문자열로 잘 변환되었는지 확인
            console.log(namesString);

            
			//localStorage에 배열 저장
			window.localStorage.setItem('tourNum', nums)
			window.localStorage.setItem('tourAdd', adds)
			window.localStorage.setItem('tourName', names)
			
		}
		
		
		
		
		
		
		
		