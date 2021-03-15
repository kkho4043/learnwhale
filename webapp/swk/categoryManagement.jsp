<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/category.css">

<c:import url="/kka/homepage.jsp"></c:import>

<title>Insert title here</title>
</head>
<style>
body, div, ul, li, dl, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
}

body {
	font-family: "맑은 고딕", 돋움, 굴림;
	font-size: 12px;
}

.collapse {
	margin: 0 auto;
	text-align: center;
}

.woong {
	display: inline-block;
	vertical-align: top;
}
</style>
<body>
	<section class="wrap_container">
		<div class="wrap_container_area">
			<div id="border-line">
				<span id="category-title">● 문제관리</span> <span id="span-right">홈 > 마이클래스 > 문제관리</span>
			</div>
			<div class="col-xs-2" id="category">
				<div id="manage">
					<div>
						<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false"
							aria-controls="collapseExample">관리</button>
						<div class="collapse" id="collapseExample">
							<div class="woong" id="folderMade">
								<button>생성</button>
							</div>
							<div class="woong" id="folderModify">
								<button>수정</button>
							</div>
							<div class="woong" id="folderDelete">
								<button>삭제</button>
							</div>
						</div>
					</div>
					<div class="parents-folder parentsFolder" id="top-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"><a>자바프로그래밍</a>
					</div>
					<div id="child-folderDiv">
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 연산자(5)
						</div>
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 제어문(10)
						</div>
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 반복문
						</div>
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 배열
						</div>
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 클래스
						</div>
						<div class="child-folder">
							<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 리스트
						</div>
					</div>
					<div class="parents-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 오라클
					</div>
					<div class="parents-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"> jsp/servlet
					</div>
					<div class="parents-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"> spring
					</div>
					<div class="parents-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 리눅스
					</div>
					<div class="parents-folder">
						<img class="folder-img" src="/learnwhale/assets/image/folder.png"> 프로젝트
					</div>
				</div>
			</div>
			<!-- //left_menu -->
		</div>
	</section>

	
	<div class="modal fade" id="madeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 생성</h4>
				</div>
				<div class="modal-body">
					<p><input type="text" placeholder="폴더 이름을 입력해주세요" style="width: 400px;"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">저장하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.madeModal -->
	
	<div class="modal fade" id="modifyModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 수정</h4>
				</div>
				<div class="modal-body">
					<p><input type="text" placeholder="폴더 이름을 입력해주세요" style="width: 400px;"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">수정하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modifyModal -->
	
	<div class="modal fade" id="deleteModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 삭제</h4>
				</div>
				<div class="modal-body">
					<p><input type="text" placeholder="" style="width: 400px;"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">삭제하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.deleteModal -->


</body>
<script type="text/javascript">
	$(document).ready(function() {
		$(".parentsFolder").click(function() {
			console.log("클릭");
			var submenu = $(this).next("#child-folderDiv");
			console.log(submenu);
			if (submenu.is(":visible")) {
				submenu.slideUp();
				console.log("클릭1");
			} else {
				submenu.slideDown();
				console.log("클릭2");
			}
			;
		});
	});

	$(document).ready(function() {
		$("#delete-btn").hide();
		$("#creating-btn").hide();
		$("#modify-btn").hide();
		$("#cancle-btn").hide();
		$("#manage-btn").click(function() {
			$("#delete-btn").show();
			$("#creating-btn").show();
			$("#modify-btn").show();
			$("#cancle-btn").show();

		});
	});

	$("#folderMade").on("click", function() {
		console.log("");

		//모달창 호출
		$("#madeModal").modal();
	});
	
	$("#folderModify").on("click", function() {
		console.log("");

		//모달창 호출
		$("#modifyModal").modal();
	});
	
	$("#folderDelete").on("click", function() {
		console.log("");

		//모달창 호출
		$("#deleteModal").modal();
	});
</script>

</html>