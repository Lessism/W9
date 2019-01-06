<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="../include/header.jsp"/>
<section class="ui black segment text container">
	<form class="ui form" action="http://localhost:8080/W9/member/info.w9" method="post">
		<div class="ui two fields">
			<div class="ui field">
				<h1 class="ui center aligned header f k r">게시글</h1>
			</div>
			<div class="ui field">
				<div class="ui labeled input">
					<label class="ui basic label llab f k r" for="id">작성자</label>
					<input id="ㅁㄴㅇ" type="text"/>
				</div>
			</div>
		</div>
		<div class="ui field">
			<label class="ui basic label llab f k r" for="id">제목</label>
			<input class="l inp" id="id" type="text"/>
		</div>
		<div class="ui field">
			<label class="ui basic label llab f k r" for="id">내용</label>
			<textarea rows="20"></textarea>
		</div>
		<div class="ui center aligned container">
			<a class="ui black button f k r" href="http://localhost:8080/W9/board/write.w9">글쓰기</a>
			<a class="ui button f k r" href="http://localhost:8080/W9">목록</a>
	</div>
	</form>
</section>
<jsp:include page="../include/footer.jsp"/>
