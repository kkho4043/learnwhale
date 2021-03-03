<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<style>
ul {
	list-style: none;
	margin: 5;
	padding: 5;
}

li {
	margin: 5 5 5 5;
	padding: 5 5 5 5;
	border: 0;
	float: right;
}

h2 {
	text-align: center;
}
</style>
<head>
</head>
<body>
	<div>

		<img src="/">

		<ul class="clearfix">
			<!-- 로그인 전 메뉴 -->
			<li> 로그인 </li>
			<li> 홍길동 선생님  </li>
			
			<!-- 로그인 후 메뉴 -->
			<!-- 자신의 블로그일때만 관리 메뉴가 보인다. 
				
						<li><a class="btn_s" href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">내블로그 관리</a></li>
					
						<li><a class="btn_s" href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
					-->
		</ul>

		<h2>myclass</h2>

	</div>
</body>
</html>