<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <link rel="stylesheet" href="/css/petintro.css">
  <!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script>
	$(function(){
		function gbcontent(){
			$.ajax({
				url:"/GuestBook/list",
				data : {no:${ffvo.no}},
				type:"GET",
				success : function(result){
					console.log(result);
					var tag = "";
					$(result).each(function(i, rVO){
						tag += "<div><b>"+ rVO.userid  +" : </b>" + rVO.comment;
              
                         if('${logId}' === rVO.userid){
                        	tag += " <input type='button' value='X' title='" + rVO.replyno + "'/>";
							
                            
                        }
                        tag += "</div>";
					});
					$("#gbcontent").html(tag);
				}
			})
		} 
		gbcontent();
		$("#dd").submit(function(){
			event.preventDefault();
			
			if($("#writing").val() == ""){
				alert("글을 입력 후 등록하세요.");
				return false;
			}
			var param = $(this).serialize();
		
			$.ajax({
				url : "/GuestBook/write",
				data : param,
				type:"POST",
				success:function(result){
					console.log(result);
					if(result == 0){
						alert("글 작성을 실패하였습니다");
					}else{
						gbcontent();
					}
					$("#writing").val("");
				},error:function(e){
					console.log(e.responseText);
				}
			});
		});
		$(document).on('click','#gbcontent input[value=X]',function(){
			if(confirm("삭제하시겠습니까?")){
				var replyno = $(this).attr("title");
				$.ajax({
					url:"/GuestBook/delete",
					data : {
						replyno:replyno
					}, type:"GET",
					success:function(result){
						gbcontent();
					},error:function(e){
						console.log(e.responseText);
					}
				});
			}
		});
		
			gbcontent();
		});
</script>

 <main class = "main">
    <div class = "main-container">
      <div id = "bd">
      
        <img src = "/images/${ffvo.petimg}">
        <div class="profile">
          <input type="hidden" name="no" value="${ffvo.no }">
		  <input type="hidden" name="userid" value="${ffvo.userid }">
          <p id="name">이름 <input type="text" value="${ffvo.petname}" readonly></p>
          <p id="character">성격 <input type="text" value="${ffvo.petwant }" readonly></p>
          <p id="age">나이 <input type="text" value="${ffvo.petage}" readonly></p>
          <p id="hobby">취미 <input type="text" value="${ffvo.pethobby}" readonly></p>
          <p id="gender">성별 <input type="text" value="${ffvo.petgender}" readonly></p>
          <p id="size">사이즈 <input type="text" value="${ffvo.petsize}" readonly></p>
          <p id="abod">견종 <input type="text" value="${ffvo.petkind}" readonly></p>
          <p id="region">지역 <input type="text" value="${ffvo.addr}" readonly></p>
      
          <div id="ml1">
            <img src="/icons/report.png" id="report">
            <script>
              $(document).ready(function(){
                $("#report").click(function(){
                   $("#profile_view").css('display','block');
                });
                $("#profile_out").click(function(){
                  $("#profile_view").css('display','none');
                });
              });
             </script>
          </div>
          <form method ="post" action="${pageContext.servletContext.contextPath}/findfriend/reportWriteOk" onsubmit="return reportCheck()">
             <div id="profile_view"> <!-- 프로필 창-->
              <div id="profile_title">
                <h1>REPORT</h1>                   
              </div>
              <div>
              <input type="hidden" value="${logId }" name="reporter">
                <p style="margin-left: 50px;margin-top: 20px;margin-bottom: 20px;">USER : <input type="text" value="${ffvo.userid }" name="userid" readonly>
                 <select id="profile_list" name="category" style="margin-left: 100px;">
                  <option>언어 및 폭력 행위</option>
                  <option>111</option>
                 </select>
                </p>
              </div>
              <div>
                <input type="text" id="reportwriting" name="comment" style="width:500px; height:300px; margin-left:48px;">
              </div>  
              <input type="submit" value="제출하기" id="report_submit" style="margin-left: 60px;margin-top : 20px;width:200px;height:50px;">
              <input type="button" value="뒤로가기" id="profile_out" style="margin-left: 60px;margin-top : 20px;width:200px;height:50px;"/>
            </div>
          </form>
          <script>
	       var reportCheck = function(){
	         if(document.getElementById("writing".value=="")){
	         	alert("신고내용을 입력하세요");
	            return false;
	         }
	            console.log(document.getElementById("writing").value);
	            return true;
	         }
        </script>
          
          <div id="ml2">
            <img src="/icons/unheart.png" id="unheart">
            <script type="text/javascript">
              var state="off";

              unheart.onclick=function(){
                if(state=="off"){
                  unheart.src = "/icons/heart.png";
                  state = "on";
                }else if(state == "on"){
                  unheart.src = "/icons/unheart.png";
                  state="off";
                }
              }
            </script>
          </div>
          <div id="ml3">
            <img src="/icons/comment.png" id="comment">
            <script type="text/javascript">
             $(document).ready(function(){
                // 초기에 #guestbook의 display 속성을 'none'으로 설정합니다.
                $("#guestbook").css('display', 'none');

                $("#comment").click(function(){
                    // 클릭할 때마다 #guestbook의 display 속성을 토글합니다.
                    $("#guestbook").toggle();
                });
             });
            </script>
          </div>
         </div>
         <div id="guestbook">
          <h1>방명록</h1>
          <div id="gbcontent">
	            
          </div>
          <c:if test="${logStatus == 'Y'}">
	          <form id="dd" method="post" style="margin-left:30px;margin-top:10px;" >
	          	<input type="hidden" name="userid" value="${logId}">
	          	<input type="hidden" name="no" value="${ffvo.no }">
	            <input type="text" name="comment" id="writing" style="width:400px;height:60px;margin-bottom:10px;margin-left:40px;" >
	            	<input type="submit" id="okay" value="방명록 작성완료" >
	          </form>
          </c:if>
   
        </div>  
        <h1 style="margin-left : 100px; margin-bottom : 10px;">소개글</h1>
         <div id="introducing">
            <br/>
            <span>${ffvo.introducing}</span>
          </div>
          
          <div id="record">
            <p>좋아요 : ${ffVO.like } </p>
            <p>방명록 : ${pVO.totalRecord }  </p>
            <p>조&nbsp;&nbsp;&nbsp;&nbsp;회 : ${ffVO.hit } </p>
            </p>
          </div>
   
        <div id="bottom-button">
        <c:if test="${logStatus != ' ' && logStatus == 'Y' }">
          <input type="submit" id ="friendRequest" value="친구신청" style="margin-right : 100px;  onclick="xbtn1Event()	">
        </c:if>
          <script>
            function xbtn1Event(){
            var friendRequest = document.getElementById("friendRequest");
            friendRequest.addEventListener("click", function(){
              confirm("신청하시겠습니까?");
              if(friendRequest){
                alert("신청되었습니다.");
                window.location.href="/findfriend/list";
              }
            });
          }
         
          </script>
          <input type="button" value="뒤로가기" onclick="location.href='/findfriend/list'">
        </div>
      </div>
    </div>
  </main>