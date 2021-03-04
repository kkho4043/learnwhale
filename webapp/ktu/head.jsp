<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<html>
<style>
.header ul {
	list-style: none;
}

.header li {
	outline:1px dotted red;
	margin-left: 20px;
	float: right;
}
.header div{
	height: 100px;
	padding: 0px;
	border-bottom:solid 1px gray; 
}


</style>

	<div class="header">
		<div class="col-md-4">
			<img src="/">
		</div>

		<div class="col-md-4">
			<h1>myclass</h1>
		</div>

		<div class="col-md-4">
			<ul>
				<!-- 로그인 전 메뉴 -->
				
				<li>로그아웃</li>
				<li>홍길동 선생님</li>
				
				<!-- 로그인 후 메뉴 -->
				<!-- 자신의 블로그일때만 관리 메뉴가 보인다. 
				
						<li><a class="btn_s" href="${pageContext.request.contextPath}/${authUser.id}/admin/basic">내블로그 관리</a></li>
					
						<li><a class="btn_s" href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
			-->
			</ul>
		</div>
	</div>


</head>
</html>