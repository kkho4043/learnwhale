<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/category.css"
	type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css"
	rel="stylesheet" type="text/css">


<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="cate-area" class="col-xs-3">
		<div id="cate">
			<div id="cate-controller" class="clearfix">
				<a class="btn btn-primary btn-xs pull-left" data-toggle="collapse"
					href="#collapseExample" aria-expanded="false"
					aria-controls="collapseExample" id="manage-btn">관리</a>

				<div class="collapse" id="collapseExample">
					<div class="well" id="cateSub-btn">
						<a class="btn btn-primary btn-xs pull-left" id="creating-btn">등록</a>
						<button class="btn btn-primary btn-xs pull-left" id="modify-btn">수정</button>
						<button class="btn btn-danger btn-xs pull-left" id="delete-btn">삭제</button>
					</div>
				</div>

			</div>

			<div class="parents-folder parentsFolder" id="top-folder">
				<span class="glyphicon glyphicon-folder-close"></span><a>
					자바프로그래밍</a>
			</div>
			<div id="child-folderDiv">
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span
						class="glyphicon glyphicon-folder-close" id="subFolders"></span>연산자(5)
					</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span
						class="glyphicon glyphicon-folder-close"></span>연산자(5)
					</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span
						class="glyphicon glyphicon-folder-close"></span>연산자(5)
					</span>
				</div>
				<div class="child-folder">
					<img class="folder-img" src="/learnwhale/assets/image/folder.png">배열
				</div>
				<div class="child-folder">
					<img class="folder-img" src="/learnwhale/assets/image/folder.png">클래스
				</div>
				<div class="child-folder">
					<img class="folder-img" src="/learnwhale/assets/image/folder.png">리스트
				</div>
			</div>
			<div class="parents-folder">
				<img class="folder-img" src="/learnwhale/assets/image/folder.png">
				오라클
			</div>
			<div class="parents-folder">
				<img class="folder-img" src="/learnwhale/assets/image/folder.png">
				jsp/servlet
			</div>
			<div class="parents-folder">
				<img class="folder-img" src="/learnwhale/assets/image/folder.png">
				spring
			</div>
			<div class="parents-folder">
				<img class="folder-img" src="/learnwhale/assets/image/folder.png">
				리눅스
			</div>
			<div class="parents-folder">
				<img class="folder-img" src="/learnwhale/assets/image/folder.png">
				프로젝트
			</div>
		</div>

	</div>

	<div class="modal fade" id="madeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 생성</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요"
							style="width: 400px;">
					</p>
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 수정</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요"
							style="width: 400px;">
					</p>
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 삭제</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="" style="width: 400px;">
					</p>
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
			};
		});
	});

	$(document).ready(function() {
		$("#delete-btn").hide();
		$("#creating-btn").hide();
		$("#modify-btn").hide();
		$("#manage-btn").click(function() {
			$("#delete-btn").show();
			$("#creating-btn").show();
			$("#modify-btn").show();
		});
	});
	
	$("#creating-btn").on("click", function() {
		console.log("");

		//모달창 호출
		$("#madeModal").modal();
	});

	$("#modify-btn").on("click", function() {
		console.log("");

		//모달창 호출
		$("#modifyModal").modal();
	});

	$("#delete-btn").on("click", function() {
		console.log("");

		//모달창 호출
		$("#deleteModal").modal();
	});	
</script>
</html>