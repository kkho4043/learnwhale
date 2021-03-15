<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/blog.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div class="wrap">
		<div class="header">
			<div>
				<h1 class="col-sm-6 logo">
					<a> <img id="logoName-img"
						src="${pageContext.request.contextPath}/assets/image/logo_learnwhale_01.png">
					</a>
				</h1>
				<div class="col-sm-5" id="span-name">
					<span id="span-Area">홍길동 선생님</span>
				</div>
				<div class="col-sm-1">
					<button type="button" class="btn btn-primary" id="inBtn">로그아웃</button>
				</div>
			</div>

			<div>
				<div class="col-sm-12" id="header-imgArea">
					<img id="background-img" src="${pageContext.request.contextPath}/assets/image/header_image.png">
				</div>
				<div class="col-sm-12" id="in-Area">
					<div class="col-sm-12" id="blog-name">하이미디어 풀스텝 A반</div>
					<div class="col-sm-12" id="blog-Date">2021.03.21-2021.05.21</div>
				</div>
			</div>
		</div>
		<!-- //header 끝 -->

		<section class="wrap_container">
			<div class="wrap_container_area">
				<div class="col-xs-2 left_menu" style= "margin-left: 16px;">
					<div id="userPackInfo" class="">
						<div id="box">
							<div>
								<img id="photo-img" src="${pageContext.request.contextPath}/assets/image/photo.jpg">
							</div>
							<div>
								<ul class="info">
									<li>홍길동 선생님</li>
									<li>abcde@gamil.com</li>
									<li>연락처: 010-2222-2222</li>
								</ul>
							</div>
							<div id="manage"> 
								<button type="button" class="btn m_order" id="">반관리</button>
							</div>
						</div>
					</div>
					<div>
						<ul class="left_menu_se">
							<li id="nav1"><a class="mune" href="">시험관리</a></li>
							<li id="nav2"><a class="mune" href="">성적관리</a></li>
							<li id="nav2"><a class="mune" href="">학생관리</a></li>
							<li id="nav2"><a class="mune" href="">공지사항</a></li>
						</ul>
					</div>
				</div>


			</div>
		</section>

	</div>
	<!-- //wrap 끝 -->

</body>
</html>