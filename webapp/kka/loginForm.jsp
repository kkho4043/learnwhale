<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 스타일시트 자리 -->
<style>
 #content {width:720px;}

</style>

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">

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
									<input type="id" class="form-control" id="input-id" placeholder="아이디를 입력하세요">
								</div>
							</div>
							<!-- 비밀번호 -->
							<div class="form-group">
								<label class="col-md-2"  for="input-pass">비밀번호</label>
								<div class="col-md-10">
									<input type="password" class="form-control" id="input-pass" placeholder="비밀번호를 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox"> Remember me
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">로그인하기</button>
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