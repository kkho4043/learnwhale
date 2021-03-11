<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/blog-header.css">

<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="col-sm-6">
			<img  id="logoName-img" src="/learnwhale/assets/image/LogoName.png">
		</div>
		<div class="col-sm-5" id="span-name">
			<span id="span-Area">홍길동 선생님</span>
		</div>
		<div class="col-sm-1">
			<button type="button" class="btn btn-primary" id="inBtn">로그아웃</button>
		</div>
	</div>
	
	<div>
		<div class="col-sm-12" id="header-imgArea">
			<img id="background-img" src="/learnwhale/assets/image/backTest.jpg">
		</div>
		<div class="col-sm-12" id="in-Area">
			<div class="col-sm-12" id="blog-name">
				하이미디어 풀스텝 A반
			</div>
			<div class="col-sm-12" id="blog-Date">
				2021.03.21-2021.05.21
			</div>
		</div>
	</div>
</body>
</html>