<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="mvo" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<mvo:form class="ui form" modelAttribute="mvo" action="http://localhost:8080/W9/member/join.w9" method="post">
		<h1 class="ui center aligned header f k r">회원가입</h1>
		<hr>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui basic label llab" for="id">아이디</label>
				<mvo:input type="text" path="id" id="id" placeholder="ID"/>
				<label class="ui left pointing basic label llab chk"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui basic label llab" for="pw">암호</label>
				<mvo:input type="password" path="pw" id="pw" placeholder="Password"/>
				<label class="ui left pointing basic label llab chk"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui basic label llab" for="pwc">암호확인</label>
				<input type="password" id="pwc" placeholder="Confirm Password">
				<label class="ui left pointing basic label llab chk"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input field">
				<label class="ui basic label llab" for="nick">닉네임</label>
				<mvo:input type="text" path="nick" id="nick" placeholder="Nickname"/>
				<label class="ui left pointing basic label llab chk"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input field">
				<label class="ui basic label llab" for="email">이메일</label>
				<mvo:input type="email" path="email" id="email" placeholder="Email Adress"/>
				<label class="ui left pointing basic label llab chk"></label>
			</div>
		</div>
		<hr>
		<div class="ui center aligned container">
			<input class="ui black button f k r" type="submit" value="가입">
			<a class="ui button f k r" href="http://localhost:8080/W9">취소</a>
		</div>
	</mvo:form>
</section>
</body>
</html>
