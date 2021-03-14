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