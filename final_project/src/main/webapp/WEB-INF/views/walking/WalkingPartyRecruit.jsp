<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/WalkingPartyRecruit.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script>
  $(document).ready(function() {
    $("header").html("");
    $("footer").html("");
	    $("header").css("display","none");
	    $("footer").css("display","none");
  });
 function closeWindow(){
	 window.close();
 }
 function WalkingInsert(){
	 if(document.getElementById("walkingname").val==""){
		 alert("산책로 이름을 작성해주세요.");
		 return false;
	 }
	 if(document.getElementById("startPoint").val==""){
		 alert("시작점을 정해주세요.");
		 return false;
	 }
	 if(document.getElementById("endPoint").val==""){
		 alert("도착점을 정해주세요.");
		 return false;
	 }
	 if(document.getElementById("walkingcontent").val==""){
		 alert("소개글을 정해주세요.");
		 return false;
	 }
	 if(document.getElementById("people").val==""){
		 alert("인원을 정해주세요.");
		 return false;
	 }
 }
</script>
   <div class="wkpr_header">  
    <img src="/images/img_logo_black.png" alt="로고">
    <h1 style="margin-top: 20px; margin-left: 50px;">산책로 모임 생성</h1>
    <hr style="margin-top: 17px;">
  </div>
  <div class="main">
    <div id="map"></div>
  <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a4cvrt8b74"></script>
<script>
//지도를 삽입할 HTML 요소 또는 HTML 요소의 id를 지정합니다.
var mapDiv = document.getElementById('map'); // 'map'으로 선언해도 동일



var map = new naver.maps.Map('map', {
    scaleControl: false,
    logoControl: false,
    mapDataControl: false,
    zoomControl: true,
    minZoom: 6
});

var mapOptions = {
        mapTypeControl: true,
        mapTypeControlOptions: {
            style: naver.maps.MapTypeControlStyle.BUTTON,
            position: naver.maps.Position.TOP_RIGHT
        },
        zoomControl: true,
        zoomControlOptions: {
            style: naver.maps.ZoomControlStyle.SMALL,
            position: naver.maps.Position.TOP_RIGHT
        },
        scaleControl: true,
        scaleControlOptions: {
            position: naver.maps.Position.RIGHT_CENTER
        },
        logoControl: true,
        logoControlOptions: {
            position: naver.maps.Position.TOP_LEFT
        },
        mapDataControl: true,
        mapDataControlOptions: {
            position: naver.maps.Position.BOTTOM_LEFT
        }
    };
    var map = new naver.maps.Map(document.getElementById('map'), mapOptions);


var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.3595704, 127.105399),
    map: map
});
var HOME_PATH = window.HOME_PATH || '.';
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.498456, 127.029936),
    zoom: 15
});


makeMarker(map, new naver.maps.LatLng(37.507793, 127.0344379), 0);//강남동물병원
makeMarker(map, new naver.maps.LatLng(37.4955496, 127.0498119), 1);//OK동물병원


function makeMarker(map, position, index) {

    var ICON_GAP = 31;
    var ICON_SPRITE_IMAGE_URL = HOME_PATH +'/img/example/sp_pin_hd.png';
    var iconSpritePositionX = (index * ICON_GAP) + 1;
    var iconSpritePositionY = 1;

    var marker = new naver.maps.Marker({
        map: map,
        position: position,
        icon: {
          url: ICON_SPRITE_IMAGE_URL,
          size: new naver.maps.Size(26, 36), // 이미지 크기
          origin: new naver.maps.Point(iconSpritePositionX, iconSpritePositionY), // 스프라이트 이미지에서 클리핑 위치
          anchor: new naver.maps.Point(13, 36), // 지도상 위치에서 이미지 위치의 offset
          scaledSize: new naver.maps.Size(395, 79)
        }
    });

    return marker;
}
</script>
    <div class="main_div2">
    <form method="post" action="/walking/WalkingWriteOk" onsubmit="return WalkingInsert()">
    <input type="hidden" value="${logId}" name="userid">
      <h2 class="contents-tit" style="margin-bottom: 10px;">산책로 이름</h2>
      <div class="inputset inputset-round">
        <div class="contents-mail">
          <input type="text" class="inputset-input form-control" id="walkingname" name="walkingname" aria-label="내용" >
        </div>
      </div>
      <br>
      <h2 class="contents-tit" style="margin-bottom: 10px;">시작점</h2>
      <div class="inputset inputset-round">
        <div class="contents-mail">
          <input type="text" class="inputset-input form-control" aria-label="내용" id="startPoint" name="startPoint">
          <div class="search-icon-container">
            <img src="/images/search.png" alt="Search" class="search-icon">
          </div>
        </div>
      </div>
      <br>
      <h2 class="contents-tit" style="margin-bottom: 10px;">도착점</h2>
      <div class="inputset inputset-round">
        <div class="contents-mail">
          <input type="text" class="inputset-input form-control" aria-label="내용" id="endPoint" name="endPoint">
          <div class="search-icon-container">
            <img src="/images/search.png" alt="Search" class="search-icon">
          </div>
        </div>
      </div>
      <br>
      <h2 class="contents-tit" style="margin-bottom: 10px;">소개글</h2>
      <div class="inputset inputset-round">
        <div class="contents-mail">
          <input type="text" class="inputset-input form-control" id="walkingcontent" name="walkingcontent" aria-label="내용" >
        </div>
      </div>     
      <h2 class="contents-tit" style="margin-bottom: 10px;">인원</h2>
      <div class="walkingparty-search-options">
        <div class="contents-amount">
          <button class="contents-btn btn-minus" type="button">
            <img src="/icons/ico_minus_black.svg" alt="마이너스 아이콘">
          </button>
          <p class="contents-amount-num" id="people" name="people" style="margin-top: 0px;">
            <span>2</span> 명
          </p>
          <button class="contents-btn btn-plus" type="button">
            <img src="/icons/ico_plus_black.svg" alt="플러스 아이콘">
          </button>
        </div>
      </div>
      <br>
      <h2 class="contents-tit" style="margin-bottom: 10px;">HashTag</h2>
      <div class="inputset inputset-round">
        <div class="contents-mail">
          <input type="text" class="inputset-input form-control" id="hashtag" name="hashtag" aria-label="내용" >
        </div>
      </div>

      <br>
      <div class="wkbtn">
        <div class="join-btn2">
          <input type="button" class="btnset btnset-round btnset-line btnset-black" id="bt3" style="margin-right: 10px;" value="닫기" onclick="closeWindow();">
          <input type="submit" class="btnset btnset-round" id="bt4" value="생성">
        </div>
      </div>
      </form>
    </div>
  </div>