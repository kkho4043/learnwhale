<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/maink.css" rel="stylesheet" type="text/css">



<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<div id="header-Area" class="container-fluid">
		<div class="row">
			<div id="header" class="container navbar-brand">
				<div class="col-xs-3">
					<img id="logo-img" src="/learnwhale/assets/image/Logo.png">
				</div>

				<div class="col-xs-7">
					<ul class="navbar">
						<li class="nav"><a href="">OVERVIEW</a></li>
						<li class="nav"><a href="">FEATURES</a></li>
						<li class="nav"><a href="">SERVICE</a></li>
						<li class="nav"><a id="myclass" href="">마이클래스</a></li>
					</ul>
				</div>
				
				<div class="col-xs-2 text-right">
					<button id="btnLogin" type="button" class="btn btn-default btn-xs" >로그인</button>
					<button id="btnJoin" type="button" class="btn btn-default btn-xs" >회원가입</button>
				</div>
			</div>
			<!-- //header container-->
			
		</div>
		<!-- //row -->
	</div>
	<!-- //head-Area -->

	<!-- content-Area -->
	<div  class="container-fluid">
		<div class="row">
			<div id="content-Area"  class="container">
				
				<div id="main" class="col-xs-12">
					<div id="content-title-area" class="row">
						<div id="content-title" class="col-xs-8">
							회원가입
						</div>
						<div id="breadcrumb-area" class="col-xs-4">
							<ol class="breadcrumb pull-right">
            					<li class="breadcrumb-item">홈</li>
           						<li class="breadcrumb-item">마이클래스</li>
            					<li class="breadcrumb-item">문제관리</li>
          					</ol>
						</div>
					</div>
					<!-- //content-title-area -->
					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					
					<div id="content-body-area" class="row">
							
						<div id="join-area" class="text-enter">
							<div class="col-xs-6 jointype-t">
								<button type="button" class="btn btn-primary">선생님으로가입</button>
							</div>
							<div class="col-xs-6 jointype-s">
								<button type="button" class="btn btn-primary">학생으로가입</button>
							</div>
						</div>


											






					</div>
					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->
					
					

					
				</div>
				<!-- //main -->
				
			</div>
			<!-- //container-->
		</div>
		<!-- //row -->
	</div>
	<!-- //content-Area -->
	
	
	<!-- footer-Area -->
	<div id="footer-Area" class="container-fluid">
		<div class="row">
			<div id="" class="container">
				<div id="footer" class="col-xs-12 text-left">
					<ul class="clearfix">
						<li >개인정보보호정책</li>
						<li >이용약관</li>
						<li >무단수집거부</li>
						<li >찾아오시는 길</li>
						<li class="last">관리자메일</li>
					</ul>
					
					<p>COPY RIGHT© 풀스택B반 시험조 ALL RIGHTS RESERVED</p>
				</div>
			</div>
			<!-- //container-->
		</div>
		<!-- //row -->
	</div>
	<!-- //footer-Area -->
	
</body>
</html>