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
	<c:import url="/ktu/head.jsp"></c:import>
	<!-- //header -->
	<div id="submitDetail table">
		<table class="table table-hover text-center" >
			<caption>jblog숙제</caption>
			<thead>
				<tr class="info">
					<th>제출인원</th>
					<th>제출날짜</th>
					<th>제출파일</th>
					<th>제출여부</th>
					<th>점수</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>강00</td>
					<td>2021.03.04</td>
					<td><a href="">확인</a></td>
					<td>제출</td>
					<td><button type=button class="btn btn-primary btn-sm active"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button></td>
				</tr>
				<tr>
					<td>강00</td>
					<td>2021.03.04</td>
					<td><a href="">확인</a></td>
					<td>제출</td>
					<td><button type=button class="btn btn-primary btn-sm active"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button></td>
				</tr>
				<tr>
					<td>강00</td>
					<td>2021.03.04</td>
					<td><a href="">확인</a></td>
					<td>제출</td>
					<td><button type=button class="btn btn-primary btn-sm active"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button></td>
				<tr>
					<td>강00</td>
					<td>2021.03.04</td>
					<td><a href="">확인</a></td>
					<td>제출</td>
					<td><button type=button class="btn btn-primary btn-sm active"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button></td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="modal fade">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">점수를 입력하세요</h4>
	      </div>
	      <div class="modal-body">
	        <p>One fine body&hellip;</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">완료</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
</html>