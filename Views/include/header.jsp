<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Project W9</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.0/semantic.min.js"></script>
</head>
<body>
<header class="ui inverted segment">
	<div class="ui inverted menu container">
		<div class="ui inverted left menu">
			<a class="ui inverted button" href="https://github.com/Lessism">Lessism</a>
		</div>
		<div class="ui inverted right menu">
			<a class="item" href="http://localhost:8080/W9/member/login.w9">Login</a>
			<a class="item" href="http://localhost:8080/W9/member/join.w9">Join</a>
		</div>
	</div>
	<div class="ui center aligned container">
		<a class="ui inverted header" href="/W9">Project W9</a>
	</div>
	<nav class="ui inverted secondary pointing menu container">
		<a class="active item" href="/W9">Home</a>
	</nav>
</header>
