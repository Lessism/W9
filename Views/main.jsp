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
<div class="ui inverted menu">
	<a class="item" href="https://github.com/Lessism">Lessism</a>
	<a class="item" href="/W9">Project W9</a>
</div>
<div class="ui container" style="border:1px solid black">
	<h1>Hello world! 헬로우 월드</h1>
	<P>The time on the server is ${serverTime}.</P>
</div>
</body>
</html>
