<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 스타일시트 자리 -->
<style>
#content {
	width: 720px;
}

.form-group {
	padding: 7px 35px 10px 11px
}
</style>

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">

		<!-- header -->
		<c:import url="/ktu/header.jsp"></c:import>
		<!-- //header -->
		<!-- //head -->
<!-- 		<div class="col-xs-3 mcaside">
			<div class="row">
				<div class="col-xs-6 mcside1">
					<h4>내 반 리스트</h4>
					<ul class="ist-unstyled">
						<li>하이미디어 a반</li>
						<li>하이미디어 b반</li>
						<li>하이미디어 c반</li>
					</ul>
				</div>
				<div class="col-xs-6 mcside2">
					<div class="side-active">내가 만든 문제</div>
					<div>내 반 리스트</div>
					<div>내 정보 수정</div>

				</div>
				학생일때
				<div class="col-xs-6 side2">
								<div>나의 성적 통계
								</div>
								<div>내가푼 문제들
								</div>
								<div>내 정보 수정
								</div>
							</div>
			</div>
		</div>
		//aside -->

		<!-- //header -->

		<div id="content">


			<div id="user">
				<div id="loginForm">
					<form action="" method="">

						<h2>로그인</h2>

						<form class="form-horizontal">
							<!-- 아이디 -->
							<div class="form-group">
								<label class="col-md-2" for="input-id">아이디</label>
								<div class="col-md-10">
									<input type="id" class="form-control" id="input-id"
										placeholder="아이디를 입력하세요">
								</div>
							</div>
							<!-- 비밀번호 -->
							<div class="form-group">
								<label class="col-md-2" for="input-pass">비밀번호</label>
								<div class="col-md-10">
									<input type="password" class="form-control" id="input-pass"
										placeholder="비밀번호를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox"> 로그인 상태 유지
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">로그인</button>
								</div>
							</div>
						</form>

					</form>

				</div>
				<!-- //loginForm -->
			</div>
			<!-- //user -->
		</div>
		<!-- //content  -->
		<div class="clear"></div>

		<!-- //footer -->

	</div>
	<!-- //wrap -->

</body>

</html>