<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/community-post.css">
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  
   <script>
        function new_window() {
        	
        	    
        	var width = 1000;
            var height = 1000;
            
            // 창을 가운데에 위치시키기 위한 화면 중앙 좌표 계산
            var left = (screen.width - width) / 2;
            var top = (screen.height - height) / 2;
            // 새 창을 열기 위한 코드 작성
            
            window.open('<%= request.getContextPath()%>/walking/WalkingPartyRecruit', '','width=' + width + ', height=' + height + ', left=' + left + ', top=' + top);
        }
    </script>
 <hr style="color: rgb(0, 0, 0); background-color: rgb(0, 0, 0); height: 0.1px;">
  <main class="th-layout-main ">

    <div class="walkingparty-search-options" data-bid="pGlq0006s2">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-bottom">
            <h2 class="contents-tit">검색 옵션</h2>
            <ul class="contents-list">
              <li class="contents-item">
                <p class="contents-label">시/도</p>
                <div class="selectset selectset-round selectset-md">
                  <button class="selectset-toggle btn" type="button">
                    <span>선택</span>
                  </button>
                  <ul class="selectset-list">
                    
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>부산</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>대구</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>광주</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>대전</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>울산</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>세종</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>경기</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>강원</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>충북</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>충남</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>전북</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>전남</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>경북</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>경남</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>제주</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="contents-item">
                <p class="contents-label">시/군/구</p>
                <div class="selectset selectset-round selectset-md">
                  <button class="selectset-toggle btn" type="button">
                    <span>선택</span>
                  </button>
                  <ul class="selectset-list">
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>1</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>2</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="contents-item">
                <p class="contents-label">읍/면/동</p>
                <div class="selectset selectset-round selectset-md">
                  <button class="selectset-toggle btn" type="button">
                    <span>선택</span>
                  </button>
                  <ul class="selectset-list">
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>1</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>2</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="contents-item">
                <p class="contents-label">오전/오후</p>
                <div class="selectset selectset-round selectset-md">
                  <button class="selectset-toggle btn" type="button">
                    <span>선택</span>
                  </button>
                  <ul class="selectset-list">
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>오전</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button">
                        <span>오후</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="contents-item">
                <p class="contents-label">최대 인원</p>
                <div class="contents-amount">
                  <button class="contents-btn btn-minus" type="button">
                    <img src="/icons/ico_minus_black.svg" alt="마이너스 아이콘">
                  </button>
                  <p class="contents-amount-num">
                    <span>2</span>명
                  </p>
                  <button class="contents-btn btn-plus" type="button">
                    <img src="/icons/ico_plus_black.svg" alt="플러스 아이콘">
                  </button>
                </div>
              </li>
            </ul>
            <span class="contents-desc">* 동네 지역만 참여가 가능합니다.</span>
          </div>
        <div class="join-btn2">
          <button class="btnset btnset-round btnset-line btnset-black" value="New Window" onclick="new_window();" id="bt2" style="margin-right: 10px;">모임생성</button></div>
          <button class="btnset btnset-round" type="button" id="bt1">검색</button>
        </div>
      </div>
    </div>

    <div class="walkingparty-list" data-bid="BrlPzzTIvP">
      <div class="contents-inner" style="background: linear-gradient(to bottom, #ffffff, #f9f9f9);">
        <div class="contents-container container-md" >
          <h2 class="contents-tit">산책 모임</h2>
         
         <c:forEach var="wwVO" items="${list}">
          <div class="cardset cardset-hor cardset-xl">
         
            <figure class="cardset-figure">
              <img class="cardset-img" src="/images/${wwVO.walkingimg}" alt="카드 이미지">
            </figure>
            <div class="cardset-body">
              <div class="cardset-badge">
                <div class="badgeset-wrap">
                  <div class="badgeset">${wwVO.hashtag }</div>
                </div>
              </div>
              <div class="content_title_writer_profile">
                <a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture"
                    src="/images/profile5.png"></a>
                <div class="mar-btm">
                  <a href="#" class="btn-link text-semibold media-heading box-inline">${wwVO.userid }</a>
                  <p class="text-muted text-sm"><i class="fa fa-globe fa-lg"></i>
                    2분 전</p>
                </div>
              </div>
              <h2 class="cardset-tit">${wwVO.walkingname }</h2>
              <div>
                <p class="cardset-desc" id="description">
                  ${wwVO.walkingcontent } </p>
              </div>
              <div class="cardset-select">
                <div class="selectset-wrap">
                  <div class="star">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                </div>
                <div class="join-btn">
                  <button class="btnset btnset-round btnset-line btnset-black" style="margin-right: 10px;">상세
                    보기</button>
                  <div class="selectset selectset-round selectset-md">
                    <button class="btnset btnset-round" type="button">참여 신청</button>
                  </div>
                </div>
              </div>
            </div>
           </div>
          </c:forEach>
		 </div>
        </div>
       </div>       

  </main>