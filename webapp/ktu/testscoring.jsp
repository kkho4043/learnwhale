<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/kka/blog.jsp"></c:import>
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<style>
.tList {
	width: 800px;
	border: 1px solid black;
	height: 700px;
	padding: 50px;
}

.stdList {
	padding: 0px;
}

.stdList ol {
	margin-left: 20px;
}

.stdList ol li {
	list-style: decimal;
	margin-top: 5px;
}

.protable {
	text-align: center;
	width: 100%;
}

.protable th {
	text-align: center;
}

.paging {
	margin-top: 10px;
	margin-left: 40%;
}
</style>

</head>
<body>

	<div class="tList col-xs-10">
		<h3>시험관리 > 월말평가 > 정우성</h3>


		<div class="row">
			<div class="col-xs-2 stdList">
				<p>학생리스트</p>
				<ol class="">
					<li>정우성(제출)</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>
					<li>아랐다</li>

				</ol>
			</div>
			<div class="col-xs-10">
				<table border="1" class="protable table">
					<tr>
						<th>번호</th>
						<th>문제 제목</th>
						<th>점수</th>
						<th>배점</th>
						<th>오답여부</th>
						<th>형태</th>
					</tr>
					<tr>
						<td>1</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>2</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>3</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>

					<tr>
						<td>4</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>

					<tr>
						<td>5</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>

					<tr>
						<td>6</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>7</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>8</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>9</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>
					<tr>
						<td>10</td>
						<td>자바 연산자 1번</td>
						<td>5</td>
						<td>5</td>
						<td>O</td>
						<td>O/X</td>
					</tr>


				</table>

				<div class="row paging">
					<a>◀ 1 2 3 4 5 6 7 8 ▶</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>