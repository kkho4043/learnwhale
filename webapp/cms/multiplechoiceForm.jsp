<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/multiplechoiceForm.css">

<c:import url="/ktu/head.jsp"></c:import>

<title>Insert title here</title>

</head>
<body>
	<div id="Creat-Title">
		<h1>문제 작성지</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="row">
					<div class="col-sm-4 problemType">
						<button type="button" class="btn btn-warning">객관식</button>
					</div>
					<div class="col-sm-4 problemType">
						<button type="button" class="btn btn-info">OX문제</button>
					</div>
					<div class="col-sm-4 problemType">
						<button type="button" class="btn btn-success">주관식</button>
					</div>
				</div>
				<!-- //row -->

				<div class="row" id="TPdiv">
					<div class="col-sm-12" id="time-point">
						<select id="asdasd" name="time">
							<option value="none">시간 선택</option>
							<option value="10sec">10초</option>
							<option value="15sec">15초</option>
							<option value="20sec">20초</option>
							<option value="30sec">30초</option>
						</select> <select name="point">
							<option value="none">점수 선택</option>
							<option value="5poin">5점</option>
							<option value="10poin">10점</option>
							<option value="15poin">15점</option>
							<option value="20poin">20점</option>
						</select>
					</div>
				</div>
				<!-- //row -->

				<div class="row">
					<div class="col-sm-12" id="make-problem">
						<form action="#" method="post">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="문제 제목을 입력해주세요.">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="문제를 입력해주세요.">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
							</div>
							<div class="form-group" id="img-file">
								<input type="file">
							</div>
							<div class="form-group" id="last-makeType">
								<input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요.">
							</div>
							<!-- //col-sm-12 -->

							<div class="row answer-content">
								<div class="col-sm-12">
									<h4>각 문항에 내용을 입력해주세요.</h4>
								</div>
								<div class="col-sm-1 answer-num">
									<strong>1</strong>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="exampleInputEmail3" placeholder="The first answer">
								</div>
								<div class="col-sm-2">
									<input type="checkbox" id="check-first"> <label class="checkBox" for="check-first">정답체크</label>
								</div>
							</div>
							<!-- //answer-content -->
							<div class="col-sm-12 fileArea">
								<input type="file">
							</div>
							<!-- //fileArea -->

							<div class="row answer-content">
								<div class="col-sm-1 answer-num">
									<strong>2</strong>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="exampleInputEmail3" placeholder="The second answer">
								</div>
								<div class="col-sm-2">
									<input type="checkbox" id="check-second"> <label class="checkBox" for="check-second">정답체크</label>
								</div>
							</div>
							<!-- //answer-content -->
							<div class="col-sm-12 fileArea">
								<input type="file">
							</div>
							<!-- //fileArea -->

							<div class="row answer-content">
								<div class="col-sm-1 answer-num">
									<strong>3</strong>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="exampleInputEmail3" placeholder="The third answer">
								</div>
								<div class="col-sm-2">
									<input type="checkbox" id="check-third"> <label class="checkBox" for="check-third">정답체크</label>
								</div>
							</div>
							<!-- //answer-content -->
							<div class="col-sm-12 fileArea">
								<input type="file">
							</div>
							<!-- //fileArea -->

							<div class="row answer-content">
								<div class="col-sm-1 answer-num">
									<strong>4</strong>
								</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="exampleInputEmail3" placeholder="The fourth answer">
								</div>
								<div class="col-sm-2">
									<input type="checkbox" id="check-fourth"> <label class="checkBox" for="check-fourth">정답체크</label>
								</div>
							</div>
							<!-- //answer-content -->
							<div class="col-sm-12 fileArea">
								<input type="file">
							</div>
							<!-- //fileArea -->
						</form>
						<!-- //form -->
					</div>
					<!-- //col-sm-12 -->
				</div>
				<!-- //row -->

				<div class="col-sm-2 save">
					<a id="out" href="">나가기</a>
				</div>
				<div class="col-sm-4 save">
					<button type="submit" class="btn btn-primary">임시저장</button>
				</div>
				<div class="col-sm-6 save">
					<button type="submit" class="btn btn-primary">저장하기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- //container -->
</body>
</html>