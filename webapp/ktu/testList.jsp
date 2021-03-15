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
	border: 1px solid black;
	height: 700px;
	padding: 50px;
}

.searchF {
	float: left;
}

.addtest {
	float: right;
}

.test_table {
	width: 100%;
	text-align: center;
	margin-top: 10px;
}
.test_table th{
	text-align: center;
}

.paging{
	margin-top: 10px;
	margin-left:40%;
	
}
</style>

</head>
<body>

	<div class="tList col-xs-10">
		<h3>시험관리</h3>
		<div class="row">
			<div class="searchF">
				<input type="text"> <input type="button" value="검색">
			</div>

			<div class="addtest">
				<input type="button" value="시험출제">
			</div>
		</div>
		<div class="row">
			<table border="1" class="test_table table">

				<tr>
					<th>번호</th>
					<th>시험제목</th>
					<th>문항수</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>상태</th>
					<th>참석자</th>
					<th>형태</th>
					<th>수정</th>
				</tr>
				<tr>
					<td>1</td>
					<td>자바 연산자 테스트</td>
					<td>5</td>
					<td>2020-01-01</td>
					<td>2020-01-02</td>
					<td>준비중</td>
					<td>0/20</td>
					<td>쪽지</td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td>1</td>
					<td>자바 연산자 테스트</td>
					<td>5</td>
					<td>2020-01-01</td>
					<td>2020-01-02</td>
					<td>준비중</td>
					<td>0/20</td>
					<td>쪽지</td>
					<td><input type="button" value="수정"></td>
				</tr>
				<tr>
					<td>1</td>
					<td>자바 연산자 테스트</td>
					<td>5</td>
					<td>2020-01-01</td>
					<td>2020-01-02</td>
					<td>준비중</td>
					<td>0/20</td>
					<td>쪽지</td>
					<td><input type="button" value="수정"></td>
				</tr>


			</table>
		</div>
		<div class="row paging">
		<a>◀ 1 2 3 4 5 6 7 8 ▶</a>
		
		</div>
	</div>
</body>
</html>