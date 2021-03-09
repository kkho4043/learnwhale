<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/header.css">

<title>Insert title here</title>
</head>
<body>
	<div id="color">
		<div class="row">
			<div class="col-sm-2">
				<img id="logo-img" src="/learnwhale/assets/image/Logo.png">
			</div>
			<!-- //col-sm-2 -->
			
			<div class="col-sm-6" id="col6">
				<ul>
					<li><a href="">회사소개</a></li>
					<li><a href="">사용법</a></li>
					<li><a href="">공지사항</a></li>
					<li><a href="">고객센터</a></li>
					<li><a href="">질문과 답변</a></li>
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
					<div class="form-group" id="rightmost">
						<input type="email" class="form-control" id="exampleInputEmail3" placeholder="아이디">
					</div>
					<div class="form-group"> 
						<input type="password" class="form-control" id="exampleInputPassword3" placeholder="비밀번호">
					</div>
					<button type="submit" class="btn btn-default" id="loginBtn">로그인</button>
				</form>
			</div> 
			<!-- //col-sm-4 -->
			
			<!-- <div class="col-sm-4">
				<button type="submit" class="btn btn-default inBtn">로그아웃</button>
				<button type="submit" class="btn btn-default inBtn">MyHome</button>
			</div> -->
			
			
		</div>
	</div>



</body>
</html>