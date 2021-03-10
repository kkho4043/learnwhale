<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head> 
	
		<meta charset="UTF-8">
		
		<title>블로그 메인</title>
	
		<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
	
	
		<style>
			
			#content {width:720px;
					  
					  }
			
			#content #tableHeader {width: 720px;
									display:flex;
									height: 55px;
									}
			
			#btnMore {margin-left: auto;
					  width: 80px;
					  padding-top: 22px;
					  	}
			
			#table table{border-collapse: collapse;
						 width: 720px;
						 text-align: center;
						}
			
			
			
		</style>
	
	
	
	</head>
	
	<body>
		
		<div id="wrap"class="container-fluid">
		
			
			<c:import url="/ktu/header.jsp"></c:import>
			<!-- 헤더 -->
		
		
			<div class="row">
				
			<!-- aside -->
			<c:import url="/ktu/blog-aside.jsp"></c:import>
				
				
				<div class="col-xs-10 body">
		
				<!-- content -->
				<div id="content">
				
					<h1>Home</h1>
						
						<div id="tableHeader">
							
								<h3>진행중인 문제들</h3>
								
								<span id="btnMore"><button id="more">더 보기></button></span>
							
						</div>
					
					<div id="table">
					
						<table border=1>
						
							<tr>
								<td>데이터형2</td>
								<td>(진행중)</td>
							</tr>
							<tr>
								<td>mysite5</td>
								<td>21.03.05까지</td>
							</tr>
							<tr>
								<td>jblog</td>
								<td>21.2.17까지</td>
							</tr>
							<tr>
								<td>guestbook</td>
								<td>21.2.5까지</td>
							</tr>
							<tr>
								<td>phonebook</td>
								<td>21.2.4까지</td>
							</tr>
						</table>
			
					
					</div>	
					
			
				</div>
				<!-- content -->
		
				</div>
				
				
			<div class="col-md-xs footer">푸터</div>
			<!-- footer -->
					
		</div>
		
		
		</div>
		<!-- wrap -->
		
		
		
	</body>
	
</html>