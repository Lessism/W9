<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Project W9</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/css/Lcss.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:500&amp;subset=korean" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.js"></script>
</head>
<body>
<header class="ui inverted vertical segment">
	<div class="ui inverted menu container">
		<div class="ui inverted left menu">
			<a class="ui inverted button" href="https://github.com/Lessism">Lessism</a>
		</div>
		<div class="ui inverted right menu">
			<c:if test="${!login}">
				<a class="item" href="http://localhost:8080/W9/member/login.w9">Login</a>
				<a class="item" href="http://localhost:8080/W9/member/join.w9">Join</a>
			</c:if>
			<c:if test="${login}">
				<a class="item" href="http://localhost:8080/W9/member/logout.w9">Logout</a>
				<a class="item" href="http://localhost:8080/W9/member/info.w9">Info</a>
			</c:if>
		</div>
	</div>
	<div class="ui center aligned container">
		<a class="ui inverted header f k r" href="/W9">Project W9</a>
	</div>
	<nav class="ui inverted secondary pointing menu container">
		<a class="active item" href="/W9">Home</a>
	</nav>
</header>
<div class="ui black segment container">
	<h1>${minfo.nick}</h1>
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
		<h6 class="f k r">ver.멤버</h6>
	</div>
</footer>
</body>
</html>
