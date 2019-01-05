<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="mvo" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<mvo:form class="ui labels form" modelAttribute="mvo" action="http://localhost:8080/W9/member/join.w9" method="post">
		<h3 class="ui center aligned header">회원가입</h3>
		<hr style="margin-top:15px; margin-bottom:15px;">
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui center aligned basic black label" for="id" style="width:100px; text-align:center;">아이디</label>
				<mvo:input type="text" class="ui input error" path="id" id="id" placeholder="ID" style="border-left:5px solid black;"/>
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui black basic label" for="pw" style="width:100px; text-align:center;">암호</label>
				<mvo:input type="password" path="pw" id="pw" placeholder="Password" style="border-left:5px solid black;"/>
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui black basic label" for="pwc" style="width:100px; text-align:center;">암호확인</label>
				<input type="password" id="pwc" placeholder="Confirm Password" style="border-left:5px solid black;">
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input field">
				<label class="ui black basic label" for="nick" style="width:100px; text-align:center;">닉네임</label>
				<mvo:input type="text" path="nick" id="nick" placeholder="Nickname" style="border-left:5px solid black;"/>
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input field">
				<label class="ui black basic label" for="email" style="width:100px; text-align:center;">이메일</label>
				<mvo:input type="email" path="email" id="email" placeholder="Email Adress" style="border-left:5px solid black;"/>
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<hr style="margin-top:15px; margin-bottom:15px;">
		<div class="ui center aligned container">
			<input class="ui black button" type="submit" value="가입">
			<a class="ui button" href="http://localhost:8080/W9">취소</a>
		</div>
	</mvo:form>
</section>
</body>
</html>
