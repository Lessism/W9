<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<form class="ui labels form">
		<h3 class="ui center aligned header">회원가입</h3>
		<hr style="margin-top:15px; margin-bottom:15px;">
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui center aligned basic black label" for="id" style="width:100px; text-align:center;">아이디</label>
				<input class="ui input error" type="text" id="id" placeholder="ID" style="border-left:5px solid black;">
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input">
				<label class="ui black basic label" for="pw" style="width:100px; text-align:center;">암호</label>
				<input type="password" id="pw" placeholder="Password" style="border-left:5px solid black;">
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
				<input type="text" id="nick" placeholder="Nickname" style="border-left:5px solid black;">
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<div class="ui field">
			<div class="ui labeled input field">
				<label class="ui black basic label" for="email" style="width:100px; text-align:center;">이메일</label>
				<input type="email" id="email" placeholder="Email Adress" style="border-left:5px solid black;">
				<label class="ui left pointing basic red label" style="display:none; width:250px;"></label>
			</div>
		</div>
		<hr style="margin-top:15px; margin-bottom:15px;">
		<div class="ui center aligned container">
			<input class="ui black button" type="submit" value="가입">
			<a class="ui button" href="http://localhost:8080/W9">취소</a>
		</div>
	</form>
</section>
</body>
</html>
