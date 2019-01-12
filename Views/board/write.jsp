<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../include/header.jsp" %>
<%@ taglib prefix="bvo" uri="http://www.springframework.org/tags/form" %>

<section class="ui black segment text container">
	<bvo:form class="ui form" modelAttribute="bvo" action="${path}/board/write.w9" method="post">
		<div class="ui two fields">
			<div class="ui field">
				<h1 class="ui center aligned header f k r">게시글 작성</h1>
			</div>
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="writer">작성자</label>
					<bvo:input class="l inp" path="writer" id="writer" type="text" readonly="true"/>
				</div>
			</div>
		</div>
		<div class="ui field">
			<label class="ui basic label llab f k r" for="title">제목</label>
			<bvo:input class="l inp" path="title" id="title" type="text"/>
		</div>
		<div class="ui field">
			<label class="ui basic label llab f k r" for="content">내용</label>
			<bvo:textarea path="content" id="content" rows="20"></bvo:textarea>
		</div>
		<div class="ui center aligned container">
			<input class="ui black button f k r" type="submit" value="작성">
			<a class="ui button f k r" href="${path}/board/list.w9?page=1">목록</a>
	</div>
	</bvo:form>
</section>
<jsp:include page="../include/footer.jsp"/>
