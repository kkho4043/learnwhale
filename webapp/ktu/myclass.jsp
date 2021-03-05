<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 head">
				<div class="row">
					<div class="col-xs-2 logo">로고</div>
					<div class="col-xs-7 menu">

						<ul class="list-unstyled list-inline">
							<li class="menu-link">회사 소개</li>
							<li>│</li>
							<li class="menu-link">사용법</li>
							<li>│</li>
							<li class="menu-link">공지사항</li>
							<li>│</li>
							<li class="menu-link">고객센터</li>
							<li>│</li>
							<li class="menu-link">질문과 답변</li>
						</ul>



					</div>
					<div class="col-xs-3 login">
						<div class="col-xs-6">로그인</div>
						<div class="col-xs-6">회원가입</div>
						<div class="col-xs-12 myclass">myclass</div>
					</div>

				</div>
			</div>
			<!-- //head -->
		</div>
		<div class="row">
			<div class="col-xs-12 middle">
				<div class="row">
					<div class="col-xs-3 aside">
						<div class="row">
							<div class="col-xs-6 side1">
								<h4>내 반 리스트</h4>
								<ul class="ist-unstyled">
									<li>하이미디어 a반</li>
									<li>하이미디어 b반</li>
									<li>하이미디어 c반</li>
								</ul>
							</div>
							<div class="col-xs-6 side2">
								<div class="side-active">내가 만든 문제</div>
								<div>내 반 리스트</div>
								<div>내 정보 수정</div>

							</div>
							<!--학생일때 -->
							<!-- <div class="col-xs-6 side2">
								<div>나의 성적 통계
								</div>
								<div>내가푼 문제들
								</div>
								<div>내 정보 수정
								</div>
							</div> -->
						</div>
					</div>
					<div class="col-xs-9 body">내용</div>
				</div>
			</div>
			<!-- //body -->
			<div class="col-md-xs footer">푸터</div>
			<!-- //footer -->
		</div>
	</div>

</body>
</html>