<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="mvo" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<mvo:form class="ui form" modelAttribute="mvo" action="${pageContext.request.contextPath}/member/login.w9" method="post">
		<h1 class="ui center aligned header f k r">로그인</h1>
		<hr>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui basic label llab f k r" for="id">아이디</label>
				<mvo:input type="text" path="id" id="id" placeholder="ID"/>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui basic label llab f k r" for="pw">암호</label>
				<mvo:input type="password" path="pw" id="pw" placeholder="Password"/>
			</div>
		</div>
		<hr>
		<div class="ui center aligned container">
			<input class="ui black button f k r" type="submit" value="로그인">
			<a class="ui button f k r" href="${pageContext.request.contextPath}">메인</a>
		</div>
	</mvo:form>
</section>
<jsp:include page="../include/footer.jsp"/>
