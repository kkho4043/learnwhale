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


<title>반 관리</title>

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
			<div class="col-md-5 text-left">
				<form action="" method="">
					<div>
						<input type="text">
						<button type="submit" id=btn_search>검색</button>
					</div>
				</form>
			</div>
			<div class="col-md-5 text-right">
				<button type="submit" id=btn_produce>
					<a href="">반생성</a>
				</button>
			</div>

			<div class="row">
				<div class="col-sm-10">
					<table class="table table-hover table-bordered">
						<thead>
							<tr>
								<th>번호</th>
								<th>반이름</th>
								<th>시작일</th>
								<th>종료일</th>
								<th>인원</th>
								<th>상태</th>
								<th>관리</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>105</td>
								<td><a href="">하이미디어 자바 풀스택 B반</a></td>
								<td>2021-03-03</td>
								<td>2021-12-31</td>
								<td>13/20명</td>
								<td>진행중</td>
								<td>보이기</td>
								<td><a href="">[수정]</a> [삭제]</td>
							</tr>

							<tr>
								<td>105</td>
								<td><a href="">하이미디어 자바 풀스택 B반</a></td>
								<td>2021-03-03</td>
								<td>2021-12-31</td>
								<td>13/20명</td>
								<td>진행중</td>
								<td>숨기기</td>
								<td><a href="">[수정]</a> [삭제]</td>
							</tr>
						</tbody>
					</table>

					<nav class="text-center">
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#">10</a></li>
							<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- table row -->
		</div>
		<!-- //container밑 row -->
	</div>
	<!-- //container -->
</body>
</html>