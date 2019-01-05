<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Project W9</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/SemanticUI/semantic.css">
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/SemanticUI/semantic.min.js"></script>
</head>
<body>
<header class="ui inverted segment">
	<div class="ui inverted menu container">
		<div class="ui inverted left menu">
			<a class="ui inverted button" href="https://github.com/Lessism">Lessism</a>
		</div>
		<div class="ui inverted right menu">
			<a class="item" href="login.w9">Login</a>
			<a class="item" href="join.w9">Join</a>
		</div>
	</div>
	<div class="ui center aligned container">
		<a class="ui inverted header" href="/W9">Project W9</a>
	</div>
	<nav class="ui inverted secondary pointing menu container">
		<a class="active item" href="/W9">Home</a>
	</nav>
</header>
<div class="ui container">
	<h1>Main page</h1>
	<hr>
	<P>The time on the server is ${serverTime}.</P>
	<p>HTML</p>
	<p>CSS</p>
	<p>JavaScript</p>
	<p>Java</p>
	<p>Eclips</p>
	<p>MySQL</p>
</div>
</body>
</html>
