<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/category.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/pmForm.css">

<c:import url="/cms/category.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<div id="search">
		<div class="search-float">
			<img id="search-img" src="/learnwhale/assets/image/search.png">
		</div>
		<div class="search-float">
			<input type="text" class="form-control" placeholder="Text input">
		</div>
		<div class="search-float">
			<button type="button" class="btn btn-primary" id="searchBtn">검색</button>
		</div>
	</div>
	<!-- //search -->

	<div id="table-div">
		<table class="table">
			<thead>
				<tr>
					<th>문제 제목</th>
					<th>문제 유형</th>
					<th>만든 날짜</th>
					<th id="thead-last">관리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>if</th>
					<th>객관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary" id="move-Btn">이동</button></th>
					<th><button type="button" class="btn btn-danger" id="delete-Btn">Danger</button></th>
				</tr>
				<tr>
					<th>컨트롤러</th>
					<th>객관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Dao</th>
					<th>OX문제</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
				<tr>
					<th>Service</th>
					<th>주관식</th>
					<th>2021-03-03</th>
					<th><button type="button" class="btn btn-primary">이동</button></th>
					<th><button type="button" class="btn btn-danger">삭제</button></th>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="modal fade" id="delete-Modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">문제 제목</h4>
				</div>
				<div class="modal-body">
					<p>if문&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-danger">삭제</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<div class="modal fade" id="move-Modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">문제 제목</h4>
				</div>
				<div class="col-xs-2" id="category">
					<div id="manage">
						<button type="submit" class="btn btn-default" id="manage-btn">수정</button>
						<button type="submit" class="btn btn-default" id="manage-btn">생성</button>
						<button type="submit" class="btn btn-default" id="delete-btn">삭제</button>
						<button type="submit" class="btn btn-default" id="manage-btn">관리</button>
					</div>
					<div class="parents-folder" id="top-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 자바프로그래밍
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 연산자(5)
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 제어문(10)
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 반복문
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 배열
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 클래스
					</div>
					<div class="child-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 리스트
					</div>
					<div class="parents-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 오라클
					</div>
					<div class="parents-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> jsp/servlet
					</div>
					<div class="parents-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> spring
					</div>
					<div class="parents-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 리눅스
					</div>
					<div class="parents-folder">
						<img id="folder-img" src="/learnwhale/assets/image/folder.png"> 프로젝트
					</div>
				</div>
				<!-- //left_menu -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-danger">삭제</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
<script type="text/javascript">
	$("#delete-Btn").on("click", function() {
		console.log("삭제버튼 클릭");

		$("#delete-Modal").modal();
	});
	
	$("#move-Btn").on("click", function(){
		console.log("이동버튼 클릭");
		
		$("#move-Modal").modal();
	});
</script>
</html>