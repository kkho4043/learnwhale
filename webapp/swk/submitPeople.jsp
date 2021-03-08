<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/common.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table.basic {
	width: 100%;
	line-height: 21px;
	border-top: 1px solid #cccccc;
	border-left: 1px solid #cccccc;
	border-collapse: collapse;
}

table.basic th, table.basic td {
	color: #678197;
	text-align: center;
	border-right: 1px solid #cccccc;
	border-bottom: 1px solid #cccccc;
	padding: 3px 0;
	text-align: center;
}

table.basic th {
	background-color: #eeeeee;
}
</style>
<body>
	<div class="container-fluid">
		<!-- header -->
		<c:import url="/ktu/header.jsp"></c:import>
		<!-- //header -->

		<div class="row">
			<c:import url="/ktu/blog-aside.jsp"></c:import>

			<div class="col-xs-10 body">

				<!-- 내용 -->
				<div id="submit table">
					<table class="table table-hover text-center">
						<caption>제출 인원</caption>
						<thead>
							<tr class="info">
								<th>번호</th>
								<th>이름</th>
								<th>출제일</th>
								<th>문제유형</th>
								<th>제출인원</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>10</td>
								<td>jblog</td>
								<td>2021.03.04</td>
								<td>쪽지</td>
								<td><a href="">11/20</a></td>
							</tr>
							<tr>
								<td>9</td>
								<td>mysite</td>
								<td>2021.03.01</td>
								<td>과제</td>
								<td><a href="">20/20</a></td>
							</tr>
							<tr>
								<td>8</td>
								<td>guestbook</td>
								<td>2021.02.25</td>
								<td>쪽지</td>
								<td><a href="">18/20</a></td>
							</tr>
							<tr>
								<td>7</td>
								<td>phonebook</td>
								<td>2021.02.20</td>
								<td>과제</td>
								<td><a href="">12/20</a></td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- page -->
				<nav id="page">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li style="margin-right: 40px;"><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
				<!-- page -->
			</div>
		</div>
	</div>
</body>
</html>