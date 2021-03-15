<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/homepage.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="head-Area">
		<div class="row">
			<div class="navbar-brand">
				<div class="">
					<img id="logo-img" src="/learnwhale/assets/image/Logo.png">
				</div>
			</div>
			<!-- //col-sm-2 -->
			
			<div class="col-sm-5" id="col6">
				<ul class="navbar">
					<li class="nav"><a href="">OVERVIEW</a></li>
					<li class="nav"><a href="">FEATURES</a></li>
					<li class="nav"><a href="">SERVICE</a></li>
					<li class="nav"><a><button type="submit" class="btn btn-default" id="myclass">마이클래스</button></a></li>
				</ul>
			</div>
			
			<div class="">
				<div class="">
					<button type="submit" class="btn btn-default rightmost" >로그인</button>
					<button type="submit" class="btn btn-default rightmost" >회원가입</button>
				</div>
			</div>
			
		</div>
		<!-- //row -->
	</div>
	<!-- //head-Area -->
	
	<section class="wrap_container">
		<div class="wrap_container_area">
		
			<div class="col-xs-2 left_menu" style= "margin-left: 30px;">
				<div>
					<div class="left_menu_se">
						<div id="nav1" style= "background-color: #1b639e;"><a href="">마이클래스</a></div>
						<div id="nav2"><a href="">문제관리</a></div>
						<div id="nav2"><a href="">반관리</a>
							<div>
								<button type="button" class="btn m_order" id="">풀스탭 A</button>
								<button type="button" class="btn m_order" id="">풀스탭 B</button>
							</div>
						</div>
						<div id="nav2"><a href="">개인정보관리</a></div>
					</div>
				</div>
			</div>
			<!-- //left_menu -->




		</div>
	</section>

</body>
</html>