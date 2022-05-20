<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <style>
        body{
    font-size: 12px;
    line-height: 16px;
}


h1{
    text-align: center;
}



.hover1{
    width: auto;
    height: auto;
    position: relative;
    cursor: pointer;
    overflow: hidden;
}

.hiddentext{
    width: 100%;
    height: 50px;
    padding: 10px;
    color: #FFFFFF;
    background: #f2cbf2;
    position: absolute;
    bottom: 0px;
}

#main_plan{
    width: 750px;
    height: 800px;
    border : 1px solid orange;
    padding: 20px 30px;
    margin: 0 auto;
}

li{
    display: list-item;
    margin-bottom:  80px;
    border-top: 1px solid orange;
   
    
}





.list_theme.theme_item{
    overflow: hidden;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    
}





.list_theme.theme_thumb{
    width: 170px;
    height: 114px;
    overflow: hidden;
    float: left;
    display: block;
    position: relative;
    margin-right: 21px;
}


.list_theme.title.elss{
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    height: auto;
    margin-top: 2px;
}

strong{
    font-weight: bold;
}


.list_theme.title{
    max-height: 40px;
    line-height: 20px;
    -webkit-line-clamp : 2;
    -webkit-box-orient: vertical;
    font-size: 100px;
}

.list_theme .desc{
    display: -webkit-box;
    overflow: hidden;
    max-height: 40px;
    line-height: 20px;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    margin-top: 2px;
    font-size: 13px;
}

.list_theme.source_box{
    display: inline-block;
    overflow: hidden;
    max-width: 100%;
    margin-top: 2px;
    line-height: 20px;
    vertical-align: top;
    position: absolute;
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: 0px;
    
}

.list_theme.reviewDate{
    float: right;
}

.imgBoxDiv{
    width: 200px;
    height: 150px;
    position: relative;
    cursor: pointer;
    overflow: hidden;
    box-shadow: 2px 2px 8px 0px #000;
    float: left;
    margin-right: 30px;
}


.imgDiv{
    float: left;
    width:100%;
    height: 100%px;
    position: absolute;
    background: lightblue;
    z-index: 1;
    -webkit-transition: all .5s ease;
    bottom: 0px;
    overflow: hidden;

}

.imgBoxDiv:hover .imgDiv{
    bottom: 30px;
}

.imgDescDiv{
    width: 100%;
    height: 10px;
    padding: 10px;
    color: #FFFFFF;
    background: #f2cbf2;
    position: absolute;
    bottom: 0px;
}

.theme-itme.h3{
    opacity: 0;
    transition: 0s;
    margin-top: 86%;
}

h3{
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

figure{
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 40px;
    margin-inline-end: 40px;
}



    </style>

  </head>

  <body>
    <h1> 1일차 플랜</h1>


    <div id = "main_plan">
        <ul class = "list_theme">
            <li class = "theme_itme">
                <div class="imgBoxDiv">

                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="./images/yeonhee-VWLhifg5VMA-unsplash.jpg"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>

                        
                        <span class="thumb_bd"></span>
                    </a>
                </div>

                <strong calss = "title elss">점심</strong>
                <p class = "desc">"오늘의 점심은 무엇을 먹을지 의문입니다 이거 프로젝트 맞아요? 하면서 의문이 들면서 이게 내가 할 수 있는 범위 인가 생각이 들면서 기간내에 할 수 있을지도 의문이면서"</p>

            

                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source">
                        <span class = "source_inner"> 랜덤 후기 가능한가요?</span>
                        </div>
                        
            </li>
            <li class = "theme_itme">
                <div class="imgBoxDiv">

                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="./imgaes/yeonhee-VWLhifg5VMA-unsplash.jpg"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>

                        
                        <span class="thumb_bd"></span>
                    </a>
                </div>

                <strong calss = "title elss">점심</strong>
                <p class = "desc">"오늘의 점심은 무엇을 먹을지 의문입니다 이거 프로젝트 맞아요? 하면서 의문이 들면서 이게 내가 할 수 있는 범위 인가 생각이 들면서 기간내에 할 수 있을지도 의문이면서"</p>

            

                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source">
                        <span class = "source_inner"> 랜덤 후기 가능한가요?</span>
                        </div>
                        
            </li>

            <li class = "theme_itme">
                <div class="imgBoxDiv">

                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="./imgaes/yeonhee-VWLhifg5VMA-unsplash.jpg"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>

                        
                        <span class="thumb_bd"></span>
                    </a>
                </div>

                <strong calss = "title elss">점심</strong>
                <p class = "desc">"오늘의 점심은 무엇을 먹을지 의문입니다 이거 프로젝트 맞아요? 하면서 의문이 들면서 이게 내가 할 수 있는 범위 인가 생각이 들면서 기간내에 할 수 있을지도 의문이면서"</p>

            

                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source">
                        <span class = "source_inner"> 랜덤 후기 가능한가요?</span>
                        </div>
                        
            </li>

            <li class = "theme_itme">
                <div class="imgBoxDiv">

                    <a href="#" class="theme_thumb">
                        <div class = "imgDiv"><img src="./imgaes/yeonhee-VWLhifg5VMA-unsplash.jpg"></div>
                        <div class = "imgDescDiv">별점 들어가라</div>

                        
                        <span class="thumb_bd"></span>
                    </a>
                </div>

                <strong calss = "title elss">점심</strong>
                <p class = "desc">"오늘의 점심은 무엇을 먹을지 의문입니다 이거 프로젝트 맞아요? 하면서 의문이 들면서 이게 내가 할 수 있는 범위 인가 생각이 들면서 기간내에 할 수 있을지도 의문이면서"</p>

            

                <div class="source_box">
                    <span class="reviewDate">후기 날짜</span>
                    <span class="source">
                        <span class = "source_inner"> 랜덤 후기 가능한가요?</span>
                        </div>
                        
            </li>

        </ul>

  </body>


</html>