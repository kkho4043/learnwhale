<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/multiplechoiceForm.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
<c:import url="/cms/category.jsp"></c:import>



<title>Insert title here</title>

</head>
<body>




	<div class="container-fluid">
		<div class="row">
			<div class="container">
				<div class="row">
					<div id="Creat-Title">문제 작성지</div>

					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<div class="row">
							<div class="col-sm-4 problemType">
								<a href="${pageContext.request.contextPath }/cms/multiplechoiceForm.jsp"><button type="button" class="btn btn-warning">객관식</button></a>
							</div>
							<div class="col-sm-4 problemType">
								<a href="${pageContext.request.contextPath }/cms/oxForm.jsp"><button type="button" class="btn btn-info">OX문제</button></a>
							</div>
							<div class="col-sm-4 problemType">
								<a href="${pageContext.request.contextPath }/cms/subjectiveForm.jsp"><button type="button" class="btn btn-success">주관식</button></a>
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

									<div class="row">
										<div class="col-sm-12">
											<h4>정답을 선택해주세요</h4>
										</div>
										<!-- //col-sm-12 -->
										<div class="col-sm-6">
											<div>
												<input id="quizAnswerO" type="radio" name="radio-answer">
											</div>
											<div id="O">
												<label class="" for="quizAnswerO">O</label>
											</div>
										</div>
										<!-- //col-sm-6 -->
										<div class="col-sm-6">
											<div>
												<input id="quizAnswerX" type="radio" name="radio-answer">
											</div>
											<div id="X">
												<label class="" for="quizAnswerX">X</label>
											</div>
										</div>
										<!-- //col-sm-6 -->
									</div>
									<!-- //row -->


								</form>
								<!-- //form -->
							</div>
							<!-- //col-sm-12 -->
						</div>
						<!-- //row -->

						<div class="col-sm-2">
							<a id="out" href="">나가기</a>
						</div>
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary" id="save">저장하기</button>
						</div>

					</div>
				</div>
			</div>
			<!-- //container -->
		</div>
	</div>
</body>
</html>