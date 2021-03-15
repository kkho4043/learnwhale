<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>학생관리</title>
		
		<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
		
		
		
		<style>
		
			#content {width: 720px;
					 }
			h2 {font-size: 28px;
			   }
			
			.glyphicon {font-size: 19px;
					    padding-right: 8px;
						}		
			
			
			#board #gradeBoard {width:720px;
							   		 
							   	}
		
			#board #studentList thead {background-color:#a8ccda;	 
									 }
									 
			#title-form {width: 720px;
					    display: flex;
						}
									 	
			#title-form .row {padding-top:15px;
				 			  margin-left:420px;
				 			  padding-top: 20px;	
				 			  }
			
			#page {text-align:center;
					width:720px;}
			
									 
		</style>
		
			
	</head>
	
	<body>
	
		<div id="wrap" class="container-fluid">
		
			
			
			<!-- 헤더 -->
		
		
			<div class="row">
										
				<!-- content -->
				<div id= "content">
			
			
					<!-- title -->
					<div id="title-form">
													
						<h2><span class="glyphicon glyphicon-th-list"></span> 학생관리</h2>
					
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
		
			<div class="col-md-xs footer">푸터</div>
			<!-- footer -->
		
		</div>
		<!-- wrap -->
		
	</body>

</html>