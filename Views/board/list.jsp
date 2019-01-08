<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment container">
	<h1 class="ui center aligned header f k r">게시판</h1>
	<hr>
	<table class="ui striped table">
		<thead>
		<tr class="ui inverted center aligned table f k r">
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일자</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="bvo" items="${list}">
			<tr>
				<td>${bvo.no}</td>
				<td><a href="${pageContext.request.contextPath}/board/content.w9?no=${bvo.no}">${bvo.title}</a></td>
				<td>${bvo.writer}</td>
				<td>${bvo.hit}</td>
				<td>${bvo.writedate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="ui center aligned container">
		<a>Pagenation</a>
	</div>
	<div class="ui center aligned container">
		<a class="ui black button f k r" href="${pageContext.request.contextPath}/board/write.w9">글쓰기</a>
		<a class="ui button f k r" href="${pageContext.request.contextPath}">메인</a>
	</div>
</section>
<jsp:include page="../include/footer.jsp"/>
