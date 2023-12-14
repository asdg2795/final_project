<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/css/review.css">
<main class="main">
	<div class="main-container">
		<div id="review">
			<ul id="boardList">
				<li>ID</li>
				<li>Review</li>
				<li>Rating</li>
				<li>Img</li>
				<li>WriteDate</li>
				<c:forEach var="hhVO" items="${hhlist}">
					<li>${hhVO.userid}</li>
					<li>${hhVO.content}</li>
					<li>★ ${hhVO.star}</li>
					<li><img src="/images/${hhVO.hospitalImg}" style="width:50px;height:50px;"></li>
					<li>${hhVO.writedate}</li>
					 <c:if test="${hhVO.userid == logId}">
					 	<button>삭제</button>
					 </c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</main>