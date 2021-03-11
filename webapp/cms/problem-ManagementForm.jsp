<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/pmForm.css">

<c:import url="/cms/header.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="border: solid 2px #EBEBEB;">
		<table class="table">
			<thead>
				<tr>
					<th>문제 제목</th>
					<th>문제 유형</th>
					<th>만든 날짜</th>
					<th id="thead-last">관리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>if문에 관한 것</th>
					<th>객관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>컨트롤러</th>
					<th>객관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Dao에 대한 것</th>
					<th>OX문제</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service에 대한 것</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
			</tbody>
		</table>
	</div>
	
</body>
</html>