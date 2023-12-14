<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="/css/managerpage.css">
<script>
   //메뉴상태변경을 누르면 .container상태를 변경하도록 처리
   window.addEventListener("load", function(){
    document.querySelector(".toggle").addEventListener("click",function(){
      document.querySelector(".container").classList.toggle("collapse");
    });
   });
   
   function UserDel() {
       if(confirm("글을 정말로 삭제하시겠습니까?")){
           location.href = "/managerPage/delete?no=${umVO.no}"
       }
   }
</script>

    
<main>
    <div class ="container">

      <!-- 사이드바 영역-->
      <div class= "sidebar">
        <label class="toggle">
          <span></span>
          <span></span>
          <span></span>
        </label>
        <div id="content">
          <ul>
            <br>
            <li id="section1">회원 관리</li><br>
            <li id="section2">펫 프로필 관리</li><br>
            <li id="section3">게시물 관리</li><br>
            <li id="section4">코스 관리</li><br>
            <li id="section5">파티 관리</li><br>
            <li id="section6">리뷰 관리</li><br>
            <li id="section7">신고 내역 관리</li><br>
            
          </ul>
        </div>
      </div>

      <!--컨텐츠 영역-->
      <div class="contents">
        <div id="contentSection1" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>ID</th>
                <th>PWD</th>
                <th>NAME</th>
                <th>TEL</th>
                <th>EMAIL</th>
                <th>ADDR</th>
                <th>CREATEDATE</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
	              <c:forEach var="umVO" items="${userlist}"> 
	                <td>${umVO.no}</td>
	                <td>${umVO.userid}</td>
	                <td>${umVO.userpwd}</td>
	                <td>${umVO.username}</td>
	                <td>${umVO.tel }</td>
	                <td>${umVO.email}</td>
	                <td>${umVO.addr}</td>
	                <td>${umVO.createdate}</td>
	                <td>
	                  <input type="button" value="Edit" id="UserDel">
	                  <a href="/managerPage/delete?no=${umVO.no}" onclick="UserDel()"><button>Delete</button></a>
	                  
	                </td> 
              </tr>
                </c:forEach>
            </tbody>
          </table>
        </div> 
        <div id="contentSection2" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>ID</th>
                <th>PetName</th>
                <th>PetAge</th>
                <th>PetGender</th>
                <th>PetHobby</th>
                <th>PetKind</th>
                <th>PetSize</th>
                <th>PetWant</th>
                <th>PetImg</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
               <c:forEach var="pmVO" items="${petlist}">
                <td>${pmVO.no}</td>
                <td>${pmVO.userid}</td>
                <td>${pmVO.petname}</td>
                <td>${pmVO.petage}</td>
                <td>${pmVO.petgender}</td>
                <td>${pmVO.pethobby}</td>
                <td>${pmVO.petkind}</td>
                <td>${pmVO.petsize}</td>
                <td>${pmVO.petwant}</td>
                <td><img src = "/images/${pmVO.petimg}.jpg" style="width:80px;height:50px;"></td>
                <td>
                  <input type="button" value="Edit">
                  <input type="button" class="PetProfileDel" value="Delete">
                </td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
         <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var PetProfileDelButtons = document.querySelectorAll('.PetProfileDel');
                  
                  PetProfileDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("펫 프로필을 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("펫 프로필이 삭제되었습니다.");
                      } 
                    });
                  });
                });
                </script>
        <div id="contentSection3" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>ID</th>
                <th>TITLE</th>
                <th>CONTENT</th>
                <th>WRITEDATE</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>rlawnstn2795</td>
                <td>안녕하세요! 제목입니다!</td>
                <td>안녕하세요! 본문입니다! </td>
                <td>2023-11-28</td>
                <td>
                  <input type="button" value="Edit">
                  <input type="button" class="PostDel" value="Delete">
                </td>
                <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var PostDelButtons = document.querySelectorAll('.PostDel');
                  
                  PostDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("게시물을 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("게시물이 삭제되었습니다.");
                      } 
                    });
                  });
                });
                </script>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="contentSection4" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>CourseName</th>
                <th>Course Starting Point</th>
                <th>Course Ending Point</th>
                <th>Creation day</th>
                <th>Creator</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>hardwalking</td>
                <td>서울시 xx구 xx동 롯데마트 앞 cu편의점</td>
                <td>서울시 xx구 xx동 홈플러스 옆 우체국</td>
                <td>2023-11-22</td>
                <td>rlawnstn2795</td>
                <td>
                  <input type="button" value="Edit">
                  <input type="button" class="CourseDel" value="Delete">
                </td>
                <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var CourseDelButtons = document.querySelectorAll('.CourseDel');
                  
                  CourseDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("코스를 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("코스가 삭제되었습니다.");
                      } 
                    });
                  });
                });
                </script>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="contentSection5" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>PartyName</th>
                <th>MemeberId</th>
                <th>Creation day</th>
                <th>Creator</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>뽀삐파티</td>
                <td><b>rlawnstn2795</b>/<b>ggm123</b>/<b>red2255</b>/<b>cookie111</b></td>
                <td>2023-10-25</td>
                <td>rlawnstn2795</td>
                <td>
                  <input type="button" value="Edit">
                  <input type="button" class="PartyDel" value="Delete">
                </td>
                <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var PartyDelButtons = document.querySelectorAll('.PartyDel');
                  
                  PartyDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("그룹을 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("그룹이 삭제되었습니다.");
                      } 
                    });
                  });
                });
                </script>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="contentSection6" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>ID</th>
                <th>Category</th>
                <th>Review</th>
                <th>Rating</th>
                <th>WRITEDATE</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>rlawnstn2795</td>
                <td>PetShop</td>
                <td>최악입니다!</td>
                <td>★☆☆☆☆</td>
                <td>2023-11-28</td>
                <td>
                  <input type="button" value="Edit">
                  <input type="button" class="ReviewDel" value="Delete">
                </td>
                <tr>
                  <td>2</td>
                  <td>rlawnstn2795</td>
                  <td>Animal Hospital</td>
                  <td>친절해요!</td>
                  <td>★★★★☆</td>
                  <td>2023-11-30</td>
                  <td>
                    <input type="button" value="Edit">
                    <input type="button" class="ReviewDel" value="Delete">
                  </td>
                </tr>
                <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var reviewDelButtons = document.querySelectorAll('.ReviewDel');
                  
                  reviewDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("리뷰를 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("리뷰가 삭제되었습니다.");
                      }
                    });
                  });
                });
                </script>
            </tbody>
          </table>
        </div>
        <div id="contentSection7" class="content-section">
          <table>
            <thead>
              <tr>
                <th>NO</th>
                <th>Reporting Target ID</th>
                <th>ReporterID</th>
                <th>Type Of Report</th>
                <th>Report Content</th>
                <th>Report Date</th>
                <th>Edit/Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
	              <c:forEach var="rpVO" items="${reportlist}">
	                <td>${rpVO.no}</td>
	                <td>${rpVO.userid}</td>
	                <td>${rpVO.reporter}</td>
	                <td>${rpVO.category}</td>
	                <td>${rpVO.comment}</td>
	                <td>${rpVO.reportdate}</td>
	                <td>
	                  <input type="button" value="Edit">
	                  <input type="button" class="ReportDel" value="Delete">
	                </td>
	              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
         <script>
                  document.addEventListener('DOMContentLoaded', function() {
                  // ReviewDel 클래스를 가진 버튼에 대한 이벤트 리스너 추가
                  var ReportDelButtons = document.querySelectorAll('.ReportDel');
                  
                  ReportDelButtons.forEach(function(button) {
                    button.addEventListener('click', function() {
                      var confirmed = confirm("신고내역을 삭제하시겠습니까?");
                      if (confirmed) {
                        // 여기에서 실제 삭제 동작을 수행하거나 필요한 동작을 추가하면 됨
                        alert("신고내역을 삭제되었습니다.");
                      } 
                    });
                  });
                });
                </script>
      </div>
      <script>
        document.addEventListener('DOMContentLoaded', function() {
          var sidebarItems = document.querySelectorAll('.sidebar li');
          var contentSections = document.querySelectorAll('.content-section');

           
          sidebarItems.forEach(function(item, index) {
            item.addEventListener('click', function() {
            // 모든 섹션과 사이드바 아이템에서 'active' 클래스 제거
              contentSections.forEach(function(section) {
                 section.classList.remove('active');
              });

              sidebarItems.forEach(function(sidebarItem) {
                 sidebarItem.classList.remove('active');
              });

              // 클릭한 섹션과 사이드바 아이템에 'active' 클래스 추가
              contentSections[index].classList.add('active');
              item.classList.add('active');
              });
            });
        });

      </script>
    </div>
  </main>