<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/header.css">

<title>Insert title here</title>
</head>
<body>
	<div id="head-Area">
		<div class="row" id="margin-btm">
			<div class="col-sm-3">
				<div>
					<img id="logo-img" src="/learnwhale/assets/image/Logo.png">
				</div>
			</div>
			
			<!-- //col-sm-2 -->
			
			<div class="col-sm-5" id="col6">
				<ul>
					<li><a href="">OVERVIEW</a></li>
					<li><a href="">FEATURES</a></li>
					<li><a href="">SERVICE</a></li>
					<li><a><button type="submit" class="btn btn-default" id="MyClass">마이클래스</button></a></li>
				</ul>
			</div>
			<!-- //col-sm-6
			
			<!-- <div class="col-sm-6" id="text-center">
				<a href="" id="logo-name">LearnWhale</a>
				<div id="class-name">
					<span>하이미디어 A반</span>
				</div>
			</div> -->
			
			<div class="col-sm-4">
				<form class="form-inline">
					<div class="form-group rightmost" id="rightmost-id">
						<input type="email" class="form-control" id="exampleInputEmail3" placeholder="아이디">
					</div>
					<div class="form-group rightmost"> 
						<input type="password" class="form-control" id="exampleInputPassword3" placeholder="비밀번호">
					</div>
					<button type="submit" class="btn btn-default rightmost" id="loginBtn">로그인</button>
				</form>
			</div>
			<!-- //col-sm-4 -->
			
			<!-- <div class="col-sm-4" id="right">
				<span id="span-name">홍길동 선생님</span>
				<button type="button" class="btn btn-primary" id="inBtn">로그아웃</button>
			</div> -->
			<!-- //col-sm-4 -->
			
		</div>
		<!-- //row -->
	</div>
	<!-- //head-Area -->
</body>
</html>