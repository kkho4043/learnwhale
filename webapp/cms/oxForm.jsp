<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>

</head>
<body>
	<div id="Creat-Title">
		<h1 style="text-align: center">문제 작성지</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="row">
					<div class="col-sm-4" style="text-align: center;">
						<button type="button" class="btn btn-warning">객관식</button>
					</div>
					<div class="col-sm-4" style="text-align: center;">
						<button type="button" class="btn btn-info">OX문제</button>
					</div>
					<div class="col-sm-4" style="text-align: center;">
						<button type="button" class="btn btn-success">주관식</button>
					</div>
				</div>
				<!-- //row -->

				<div class="row">
					<div class="col-sm-12" style="margin: 10px; text-align: right;">
						<select id="asdasd" name="time">
							<option value="none">시간 선택</option>
							<option value="10">10초</option>
							<option value="15">15초</option>
							<option>20초</option>
							<option>30초</option>
						</select> <select name="point">
							<option value="none">점수 선택</option>
							<option>5점</option>
							<option>10점</option>
							<option>15점</option>
							<option>20점</option>
						</select>
					</div>
				</div>
				<!-- //row -->

				<div class="row">
					<div class="col-sm-12" style="text-align: center;">
						<form action="#" method="post">
							<p class="title">문제를 작성</p>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="문제 제목을 입력해주세요.">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="문제를 입력해주세요.">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
							</div>
							<div class="form-group">
								<input type="file">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요.">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-sm-12">
										<p>정답을 선택해주세요</p>
									</div>
									<!-- //col-sm-12 -->
									<div class="col-sm-6">
										<div>
											<input id="quizAnswerO" type="radio" name="">
										</div>
										<div>
											<label class="" for="quizAnswerO">O</label>
										</div>
									</div>
									<!-- //col-sm-6 -->
									<div class="col-sm-6">
										<div>
											<input id="quizAnswerX" type="radio" name="">
										</div>
										<div>
											<label class="" for="quizAnswerX">X</label>
										</div>
									</div>
									<!-- //col-sm-6 -->
								</div>
								<!-- //row -->
								
							</div>
							
						</form>
						<!-- //form -->
					</div>
					<!-- //col-sm-12 -->
					<div class="col-sm-6" style="text-align: center;">
						<button type="button" class="btn btn-primary">임시저장</button>
					</div>
					<div class="col-sm-6" style="text-align: center;">
						<button type="button" class="btn btn-primary">저장하기</button>
					</div>
					<!-- //col-sm-6 -->
				</div>
				<!-- //row -->



			</div>
			<div class="col-sm-2"></div>
		</div>
		<!-- //row -->
	</div>
	<!-- //container -->

</body>
</html>