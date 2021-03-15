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


<title>반 생성</title>

<style>
body, div, ul, li, dl, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
}

body {
	font-family: "맑은 고딕", 돋움, 굴림;
	font-size: 12px;
}
</style>
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
					<button type="submit" class="btn btn-default rightmost">로그인</button>
					<button type="submit" class="btn btn-default rightmost">회원가입</button>
				</div>
			</div>

		</div>
		<!-- //row -->
	</div>
	<!-- //head-Area -->

	<section class="wrap_container">
		<div class="wrap_container_area">

			<div class="col-xs-2 left_menu">
				<div>
					<div class="left_menu_se">
						<div id="nav1">
							<a href="">마이클래스</a>
						</div>
						<div id="nav2">
							<a href="">문제관리</a>
						</div>
						<div id="nav2">
							<a href="">반관리</a>
							<div>
								<button type="button" class="btn m_order" id="">풀스탭 A</button>
								<button type="button" class="btn m_order" id="">풀스탭 B</button>
							</div>
						</div>
						<div id="nav2">
							<a href="">개인정보관리</a>
						</div>
					</div>
				</div>
			</div>
			<!-- //left_menu -->

		</div>
	</section>

	<div class="container">
		<div class="row">
			<form action="" method="">
				<div class="col-md-1">반이름</div>
				<div class="col-md-11">
					<input type="text" placeholder="반 이름을 입력해주세요" style="width: 600px;">
				</div>

				<div class="row">
					<div class="col-md-1">메인배너</div>
					<div class="col-md-10">
						<input type="text" placeholder="메인배너 이미지를 넣어주세요" style="width: 600px;">
					</div>
					<div class="col-md-1">
						<input type="file">
					</div>
				</div>
				<!-- //메인베너 -->

				<div class="row">
					<div class="col-md-1">시작일</div>
					<div class="col-md-11">
						<input type="text" placeholder="" style="width: 600px;">
					</div>
				</div>
				<!-- //시작일 -->

				<div class="row">
					<div class="col-md-1">종료일</div>
					<div class="col-md-11">
						<input type="text" placeholder="" style="width: 600px;">
					</div>
				</div>
				<!-- //종료일 -->

				<div class="row">
					<div class="col-md-1">노출여부</div>
					<div class="col-md-11">
						<input type="radio" name="chk_info" value="">보이기 <input type="radio" name="chk_info" value="">숨기기
					</div>
				</div>
				<!-- //노출여부 -->

				<div class="row">
					<div class="col-md-1">url</div>
					<div class="col-md-11">
						<input type="text" placeholder="해당 반(블로그) 개설을 위해 url을 입력해주세요 ex) a,b,c,,1,2,3,가,나,다" style="width: 600px;"> ※url의 경우 중복불가, 수정불가
					</div>
				</div>
				<!-- //노출여부 -->
				
				<div class="row">
					<div class="col-md-6">
						<button type="submit" value="">저장</button>
					</div>
					<div class="col-md-6">
						<button type="button" value="">취소</button>
					</div>
				</div>
			</form>
		</div>
		<!-- container밑 row -->
	</div>
	<!-- //container -->


</body>
</html>