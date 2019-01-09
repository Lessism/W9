<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Project W9</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/Lcss.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:500&amp;subset=korean" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.js"></script>
</head>
<body>
<div class="relative height">
<header class="ui inverted vertical segment">
	<div class="ui inverted menu container">
		<div class="ui inverted left menu">
			<a class="ui inverted button" href="https://github.com/Lessism">Lessism</a>
		</div>
		<div class="ui inverted right menu">
			<c:if test="${info eq null}">
				<a class="item" href="${pageContext.request.contextPath}/member/login.w9">Login</a>
				<a class="item" href="${pageContext.request.contextPath}/member/join.w9">Join</a>
			</c:if>
			<c:if test="${info ne null}">
				<a class="item" href="${pageContext.request.contextPath}/member/logout.w9">Logout</a>
				<a class="item" href="${pageContext.request.contextPath}/member/info.w9">Info</a>
			</c:if>
		</div>
	</div>
	<div class="ui center aligned container">
		<a class="ui inverted header f k r" href="${pageContext.request.contextPath}">Project W9</a>
	</div>
	<nav class="ui inverted secondary pointing menu container">
		<a class="active item" href="${pageContext.request.contextPath}">Home</a>
		<a class="item" href="${pageContext.request.contextPath}/board/list.w9?page=1">Board</a>
	</nav>
</header>
<div class="ui black segment container">
	<h1>${info.nick}</h1>
	<hr>
	<P>The time on the server is ${serverTime}.</P>
	<p>HTML</p>
	<p>CSS</p>
	<p>JavaScript</p>
	<p>Java</p>
	<p>Eclips</p>
	<p>MySQL</p>
</div>
<footer class="ui inverted vertical center aligned footer segment">
	<div class="ui text container f k r">
		<h6 class="f k r">ver.Member</h6>
	</div>
</footer>
</div>
</body>
</html>
