<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>학생리스트</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/student.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>


</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->

	
	<!-- content, container 영역-->
	<div class="container">
		<div class="row">
			
			<div id="content">
			
				<!-- 왼쪽 영역-->
				<c:import url="/WEB-INF/views/ban/include/aside.jsp"></c:import>
				<!-- //왼쪽 영역-->
			
				<!-- 오른쪽 영역 -->
				<div id="main-area" class="col-xs-10">
					<!-- 위치 -->
					<div id="breadcrumb-area">
						<ol class="breadcrumb pull-right">
           					<li class="breadcrumb-item">반</li>
          					<li class="breadcrumb-item">학생관리</li>
          				</ol>
					</div>
					<!-- //위치 -->
					
					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>학생관리</p>
							</div>
						</div>
					</div>	
					<!-- //메인영역 타이틀 -->
					
			<!-- //main-content-area -->
			
			<div id="wrap" class="container-fluid">

			<!-- 헤더 -->
		
		
			<div class="row">
										
				<!-- content -->
				<div id= "content">
			
			
					<!-- title -->
					<div id="title-form">

						<div class="row">
						   
						  <div class="btn-group" role="group" aria-label="...">
							  <button type="button" class="btn btn-success">승인</button>
							  <button type="button" class="btn btn-default">대기</button>
							  <button type="button" class="btn btn-danger">탈퇴</button>
						  </div>
						
						</div>
		
					</div>	
					<!-- title -->
					
					<!-- board -->
					
					<div id="board">
					
						<table id="studentList" class="table table-bordered table-hover">
							
							<thead>
								<tr>
									<td>번호</td>
									<td>이름</td>
									<td>이메일</td>
									<td>핸드폰 번호</td>
									<td>생년월일</td>
									<td>성별</td>
									<td>상태</td>
									<td>선택</td>
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td>1</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>2</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>3</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>4</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>5</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>6</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>7</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>8</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>9</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>10</td>
									<td>정우성</td>
									<td>asdf@naver.com</td>
									<td>010-1111-1111</td>
									<td>1989.11.11</td>
									<td>남</td>
									<td>대기</td>
									<td><input type="checkbox"></td>
								</tr>
							</tbody>
							
						</table>
				
					</div>
					<!-- board -->
					
					<!-- page -->
					<nav id="page">
						  <ul class="pagination">
						    <li>
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li style="margin-right:40px;"><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
					</nav>
					<!-- page -->
					
			
					</div>	
					<!-- content -->	
										
				</div>

		</div>
		<!-- wrap -->
					<!-- //main-content-area -->
					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->	
					
					
					
			
				</div>
				<!-- //오른쪽 영역 -->
			
			</div>
			<!-- //content -->
		
		</div>
		<!-- //content row-->
		
	</div>
	<!-- //content, container 영역-->
	
	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/ban/include/footer.jsp"></c:import>
	<!-- //footer-Area container 영역-->
	
</body>
</html>