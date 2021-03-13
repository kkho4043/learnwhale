<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/homepage2.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar" data-scroll="fixed">
		<div class="container">
		
	       <div class="navbar-header">
	      	 <a class="navbar-brand" id="logoImage" href="" style="">
	      	 	<img src="${pageContext.request.contextPath}/assets/image/Logo.png">
	      	 </a>
		   </div>
		   <!-- //navbar-header 끝 -->
			
	       <div class="col-md-4 navbar-collapse">
	       	<ul class="nav">
	       		<li>
	       			<a href="">OVERVIEW</a>
	       		</li>
	       		<li>
	       			<a href="">FEATURES</a>
	       		</li>
	       		<li>
	       			<a href="">SERVICE</a>
	       		</li>
	       		<li>
	       			<a href="" class="pin_btn">마이클래스</a>
	       		</li>
	       	</ul>
	       </div>
	       <!-- //navbar-collapse 끝 -->
	       
	       <div class="">
	       	    <ul class="nav navbar-nav">
		      	 	<li>
		      	 	    <a>홍길동 선생님</a>
		      	 	</li>
		      	 	<li>
		      	 		<a href="" class="pin_btn right">로그아웃</a>
		      	 	</li>
	      	    </ul>
	       </div>
	       
	     </div>
	     <!-- //container 끝 --> 
	</nav>
	<!-- //navbar 끝 -->
		

</body>
</html>