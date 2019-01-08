<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="bvo" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<bvo:form class="ui form" modelAttribute="bvo" action="${pageContext.request.contextPath}/board/update.w9" method="post">
		<div class="ui two fields">
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="no">글번호</label>
					<bvo:input class="l inp" path="no" it="no" type="text" readonly="true"/>
				</div>
			</div>
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="hit">조회수</label>
					<bvo:input class="l inp" path="hit" id="hit" type="text" readonly="true"/>
				</div>
			</div>
		</div>
		<div class="ui two fields">
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="writer">작성자</label>
					<bvo:input class="l inp" path="writer" id="writer" type="text" readonly="true"/>
				</div>
			</div>
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="writedate">작성일자</label>
					<bvo:input class="l inp" path="writedate" id="writedate" type="text" readonly="true"/>
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
			<a class="absolute left f k r" href="${pageContext.request.contextPath}/board/prev.w9?prevno=${bvo.no}">Prev</a>
			<input class="ui black button f k r" type="submit" value="수정">
			<a class="ui red button f k r" href="${pageContext.request.contextPath}/board/delete.w9?no=${bvo.no}">삭제</a>
			<a class="ui button f k r" href="${pageContext.request.contextPath}/board/list.w9">목록</a>
			<a class="absolute right f k r" href="${pageContext.request.contextPath}/board/next.w9?nextno=${bvo.no}">Next</a>
		</div>
	</bvo:form>
</section>
<jsp:include page="../include/footer.jsp"/>
