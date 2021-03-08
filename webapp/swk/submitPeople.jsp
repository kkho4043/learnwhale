<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
	<c:import url="/ktu/header.jsp"></c:import>
	<!-- //header -->
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
</body>
</html>