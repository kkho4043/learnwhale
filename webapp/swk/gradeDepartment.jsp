<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>

<body>
	<!-- header -->
	<c:import url="/ktu/head.jsp"></c:import>
	<!-- //header -->
	<div id="gradeDepartment table" >
		<table class="table table-hover" >
           	   <caption>성적 관리</caption>
           	   		<thead>
           	   			<tr class="info">
							<th>이름</th>
							<th>쪽지시험 평균</th>
							<th>과제 평균</th>
							<th>시험 평균</th>
							<th>통합(과제+쪽지시험) 평균</th>
							<th>점수 보기</th>
						</tr>
					</thead>
					
					<tbody>
						<tr align="center" bgcolor="white">
							<td>강00</td>
							<td>70</td>
							<td>60</td>
							<td>70</td>
							<td>50</td>	
							<td><button name="" type="button" class="btn btn-primary btn-sm active">상세보기</button></td>
						</tr>
						<tr align="center" bgcolor="white">
							<td>김00</td>
							<td>80</td>
							<td>70</td>
							<td>50</td>
							<td>80</td>	
							<td><button name="" type="button" class="btn btn-primary btn-sm active">상세보기</button></td>
						</tr>
						<tr align="center" bgcolor="white">
							<td>정00</td>
							<td>90</td>
							<td>90</td>
							<td>75</td>
							<td>80</td>	
							<td><button name="" type="button" class="btn btn-primary btn-sm active">상세보기</button></td>
						</tr>
						<tr align="center" bgcolor="white">
							<td>윤00</td>
							<td>60</td>
							<td>40</td>
							<td>65</td>
							<td>55</td>	
							<td><button name="" type="button" class="btn btn-primary btn-sm active">상세보기</button></td>
						</tr>
						
						
					</tbody>	
					
		 </table>
	</div>

</body>
</html>