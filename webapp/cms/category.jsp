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
<body>
	<section class="wrap_container">
		<div class="wrap_container_area">
			<div id="border-line">
				<span id="category-title">● 문제관리</span> 
				<span id="span-right">홈 > 마이클래스 > 문제관리</span>
			</div>
			<div class="col-xs-2" id="category">
				<div id="manage">
					<div>
						<button type="submit" class="btn btn-default" id="modify-btn">수정</button>
						<button type="submit" class="btn btn-default" id="creating-btn">생성</button>
						<button type="submit" class="btn btn-default" id="delete-btn">삭제</button>
						<button type="submit" class="btn btn-default" id="manage-btn">관리</button>
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

	$(document).ready(function(){
		$("#delete-btn").hide();
		$("#creating-btn").hide();
		$("#modify-btn").hide();
		$("#manage-btn").click(function(){
			$("#delete-btn").show();
			$("#creating-btn").show();
			$("#modify-btn").show();
		});
	});
</script>

</html>