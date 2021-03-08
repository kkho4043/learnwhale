<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>
	<div class="container-fluid">
		<!-- header -->
		<c:import url="/ktu/header.jsp"></c:import>
		<!-- //header -->

		<div class="row">
			<c:import url="/ktu/blog-aside.jsp"></c:import>

			<div class="col-xs-10 body">

				<!-- 내용 -->
				<div id="gradeDetail table">
					<table class="table table-hover text-center">
						<caption>성적 상세보기</caption>
						<thead>
							<tr class="info">
								<th>번호</th>
								<th>이름</th>
								<th>문제유형</th>
								<th>출제일</th>
								<th>제출일</th>
								<th>제출여부</th>
								<th>성적</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>10</td>
								<td>java</td>
								<td>쪽지</td>
								<td>2021.02.24</td>
								<td>2021.02.24</td>
								<td>-</td>
								<td>90</td>
							</tr>
							<tr>
								<td>9</td>
								<td>jblog</td>
								<td>과제</td>
								<td>2021.02.22</td>
								<td>-</td>
								<td>미제출</td>
								<td>0</td>
							</tr>
							<tr>
								<td>8</td>
								<td>guestbook</td>
								<td>쪽지</td>
								<td>2021.02.21</td>
								<td>2021.02.22</td>
								<td>-</td>
								<td>85</td>
							</tr>
							<tr>
								<td>7</td>
								<td>phonebook</td>
								<td>과제</td>
								<td>2021.02.21</td>
								<td>2021.02.21</td>
								<td>제출</td>
								<td>99</td>
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