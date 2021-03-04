<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>수강인원</title>
</head>
<body>
	<!-- header -->
	<c:import url="/ktu/head.jsp"></c:import>
	<!-- //header -->
	<div id="participants table">
		<table class="table table-hover text-center">
           	   <caption>수강 인원</caption>
           	   		<thead>
           	   			<tr class="info">
							<th>이름</th>
							<th>가입일</th>
							<th>핸드폰 번호</th>
							<th>이메일</th>
							<th>삭제하기</th>
						</tr>
					</thead>
					
					<tbody>
						<tr align="center" bgcolor="white">
							<td>강00</td>
							<td>2021.02.21</td>
							<td>010-0000-0000</td>
							<td>xxx@xxx.com</td>
							<td><a href="">삭제</a></td>	
						</tr>
						<tr align="center" bgcolor="white">
							<td>김00</td>
							<td>2021.02.20</td>
							<td>010-1111-1111</td>
							<td>aaa@aaa.com</td>
							<td><a href="">삭제</a></td>	
						</tr>
						<tr align="center" bgcolor="white">
							<td>정00</td>
							<td>2021.02.19</td>
							<td>010-2222-2222</td>
							<td>bbb@bbb.com</td>
							<td><a href="">삭제</a></td>	
						</tr>
						<tr align="center" bgcolor="white">
							<td>윤00</td>
							<td>2021.02.18</td>
							<td>010-3333-3333</td>
							<td>cccc@ccc.com</td>
							<td><a href="">삭제</a></td>	
						</tr>
					</tbody>	
					
		 </table>
	</div>
	
</body>
</html>