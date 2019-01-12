<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>

<section class="ui black segment container">
	<h1 class="ui center aligned header f k r">게시판</h1>
	<hr>
	<table class="ui striped center aligned table">
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
				<td style="width:10%">${bvo.no}</td>
				<td style="width:40%"><a href="${path}/board/content.w9?no=${bvo.no}">${bvo.title}</a></td>
				<td style="width:20%">${bvo.writer}</td>
				<td style="width:10%">${bvo.hit}</td>
				<td style="width:20%">${bvo.writedate}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="ui center aligned container">
		<span class="ui absolute right">
			<a class="ui black button f k r" href="${path}/board/write.w9">글쓰기</a>
			<a class="ui button f k r" href="${path}">메인</a>
		</span>
		<div class="ui pagination menu">
			<c:forEach begin="${page}" end="${page+3}" var="startpage">
				<c:if test="${startpage-4 > 0}">
					<a class="item" href="${path}/board/list.w9?page=${startpage-4}&type=${type}&keyword=${keyword}">${startpage-4}</a>
				</c:if>
			</c:forEach>
			<div class="ui inverted pagination menu">
				<a class="item">${page}</a>
			</div>
			<c:forEach begin="${page}" end="${page+3}" var="endpage">
				<c:if test="${endpage < totalpage}">
					<a class="item" href="${path}/board/list.w9?page=${endpage+1}&type=${type}&keyword=${keyword}">${endpage+1}</a>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<div class="ui center aligned container">
		<form action="${path}/board/list.w9" method="get">
			<div class="ui search action labeled input">
				<select class="ui basic label selection f k r" name="type">
					<option value="title">제목</option>
					<option value="content">내용</option>
					<option value="writer">작성자</option>
				</select>
				<input name="keyword" type="text" placeholder="Search">
				<input class="ui black button f k r" type="submit" value="검색">
			</div>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp"/>
