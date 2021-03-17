<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/category.css" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>
</head>
<body>
	<div id="cate-area" class="col-xs-3">
		<div id="cate">
			<div id="cate-controller" class="clearfix">
				<a class="btn btn-primary btn-xs pull-left" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"
					id="manage-btn">관리</a>

				<div class="collapse" id="collapseExample">
					<div class="well" id="cateSub-btn">
						<a class="btn btn-primary btn-xs pull-left" id="creating-btn">등록</a>
						<button class="btn btn-primary btn-xs pull-left" id="modify-btn">수정</button>
						<button class="btn btn-danger btn-xs pull-left" id="delete-btn">삭제</button>
					</div>
				</div>

			</div>

			<div class="parents-folder parentsFolder" id="top-folder">
				<span class="glyphicon glyphicon-folder-close"></span><a> 자바프로그래밍</a>
			</div>
			<div id="child-folderDiv">
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close" id="subFolders"></span>연산자(5)</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close"></span>연산자(5)</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close"></span>연산자(5)</span>
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
</script>
</html>