<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/category.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="cate-area" class="col-xs-3">
		<div id="cate">
			<div id="cate-controller" class="clearfix">
				<button class="btn btn-default btn-xs pull-right" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false">관리</button>

				<div class="collapse" id="collapseExample">

					<a href="${pageContext.request.contextPath}/myclass/problem/category"><button class="btn btn-primary btn-xs pull-left" id="folderMade">등록</button></a>
					<button class="btn btn-primary btn-xs pull-left" id="folderModify">수정</button>
					<button class="btn btn-danger btn-xs pull-left" id="folderDelete">삭제</button>

				</div>

			</div>

			<c:forEach items="${cateList}" var="cateVo">
				<c:choose>
				
					<c:when test="${cateVo.depth == 0}">
						<div class="parents-folder parentsFolder" id="top-folder" data-group="${cateVo.groupNo}">

							<span class="glyphicon glyphicon-folder-close"></span>
							<a> ${cateVo.cateName}</a>
						</div>
					</c:when>
					
					<c:otherwise>
					
						<div id="${cateVo.groupNo}" data-group="${cateVo.groupNo}">
							<div class="child-folder">
								<span class="glyphicon glyphicon-menu-right">
								<span class="glyphicon glyphicon-folder-close"> 
								</span>${cateVo.cateName}</span>
							</div>
						</div>
					
					</c:otherwise>
					
				</c:choose>
			</c:forEach>

			<div class="parents-folder parentsFolder" id="top-folder">
				<span class="glyphicon glyphicon-folder-close"></span><a> 자바프로그래밍</a>
			</div>
			
			<div id="child-folderDiv">
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close" id="subFolders"></span>연산자(5)
					</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close"></span>연산자(5)
					</span>
				</div>
				<div class="child-folder">
					<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close"></span>연산자(5)
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
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요" style="width: 400px;">
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 수정</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요" style="width: 400px;">
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
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
			
			let parentNo = $(this).data("group");
			let childNo = $("#child-folderDiv").data("group");
			
			console.log(childNo); 
			
			
			var submenu = $(this).nextAll("#"+parentNo);
			console.log(submenu);
			if (submenu.is(":visible")) {
				submenu.slideUp();
				
			} else {
				submenu.slideDown();
				
			}
			;
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