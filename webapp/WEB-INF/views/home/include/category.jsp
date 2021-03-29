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
	
		<style>
		
			.contextmenu {
			  display: none;
			  position: absolute;
			  width: 100px;
			  margin: 0;
			  padding: 0;
			  background: #FFFFFF;
			  border-radius: 5px;
			  list-style: none;
			  box-shadow:
			    0 15px 35px rgba(50,50,90,0.1),
			    0 5px 15px rgba(0,0,0,0.07);
			  overflow: hidden;
			  
			}
			
			.contextmenu li {
			  border-left: 3px solid transparent;
			  transition: ease .2s;
			}
			
			.contextmenu li a {
			  display: block;
			  padding: 10px;
			  color: #B0BEC5;
			  text-decoration: none;
			  transition: ease .2s;
			}
			
			.contextmenu li:hover {
			  background: #CE93D8;
			  border-left: 3px solid #9C27B0;
			}
			
			.contextmenu li:hover a {
			  color: #FFFFFF;
			}
			
			#cate {
			 	position:relative;
			}
			
			.main-folder{
				color: blue;			
			}
		</style>
		
	</head>
<body>
	<div id="cate-area" class="col-xs-3">
		<div id="cate">
			<div id="cate-controller" class="clearfix">
				
				<button class="btn btn-default btn-xs pull-right" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false"
					id="management-btn" aria-controls="collapseExample">관리</button>
				
				<div class="collapse" id="collapseExample">

					<button class="btn btn-primary btn-xs pull-left" id="creating-btn">등록</button>
					<button class="btn btn-primary btn-xs pull-left" id="modify-btn">수정</button>
					<button class="btn btn-danger btn-xs pull-left" id="delete-btn">삭제</button>
				</div>	
				
			</div>

			<c:forEach items="${cateList}" var="cateVo">
				<c:choose>

					<c:when test="${cateVo.depth == 0}">
						<div class="parents-folder" id="top-folder" data-group="${cateVo.groupNo}" data-cate="${cateVo.cateNo }">

							<span class="glyphicon glyphicon-folder-close"></span> 
							<span class="main-folder" data-cate="${cateVo.cateNo }">
							 	${cateVo.cateName}
							</span> 
									
						</div>
					</c:when>

					<c:otherwise>

						<div id="${cateVo.groupNo}" data-group="${cateVo.groupNo}" class="child-group">
							<div class="child-folder">
								<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon glyphicon-folder-close"> </span> <a
								href="${pageContext.request.contextPath}/myclass/problem/problemList?cateNo=${cateVo.cateNo}"> ${cateVo.cateName}</a></span>
							</div>
						</div>

					</c:otherwise>

				</c:choose>
			</c:forEach>
			
			<ul class="contextmenu">
	  			<li><a href="#">등록</a></li>
	  			<li><a href="#">수정</a></li>
	  			<li><a href="#">삭제</a></li>
			</ul>

		</div>

	</div>

	<form method="get" action="${pageContext.request.contextPath}/myclass/problem/addMainFolder">
		<div class="modal fade" id="madeModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">메인폴더 생성</h4>
					</div>
					<div class="modal-body">
						<label for="modalName">폴더이름</label> <input id="modalName" type="text" name="cateName" placeholder="폴더 이름을 입력해주세요" style="width: 400px;">
						<!-- no 히든으로 처리 -->
						<input type="text" name="userNo" value="1"<%-- ${authUser.no } --%>>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">저장하기</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.madeModal -->
	</form>
	<!-- /.addMainFolder-->

	<form method="get" action="${pageContext.request.contextPath}/myclass/problem/addSubFolder">
		<div class="modal fade" id="addSubFolder">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">서브폴더 생성</h4>
					</div>
					<div class="modal-body">
						<label for="SubName">폴더이름</label> <input id="SubName" type="text" name="cateName" placeholder="폴더 이름을 입력해주세요" style="width: 400px;">
						<!-- no 히든으로 처리 -->
						<input type="text" name="userNo" value="1"> <input type="text" name="groupNo" value="">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">저장하기</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.madeModal -->
	</form>
	<!-- /.addSubFolder-->

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
				<div class="modal-body"></div>
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
			subMake();
			rightClick();
			subVisible();
		});
		
		
		
		
		
		
		
		
		
		
		
		function rightClick(){
				
			$(".parents-folder .main-folder").contextmenu(function(e){
				
				//pointer position
				
				var poX = e.offsetX;
				var poY = $(this).offset().top -150;
				
				$(".contextmenu").css({
					"left": poX,
					"top" : poY
				}).show();
		
				//Prevent browser default contextmenu
				return false;
	
			});
		
			$(document).click(function(){
				$(".contextmenu").hide();
			});
		}
	

		
		function subMake() {
	
			$(".subFolder-btn").click(function() {
	
				var groupNo = $(this).data("group");
				$('input[name=groupNo]').val(groupNo);
				//서브모달창 호출
				$("#addSubFolder").modal();
	
			});
		};
	
			
		function subVisible(){
			
			$(".parents-folder").click(function() {

				let parentNo = $(this).data("group");
	
				var submenu = $(this).nextAll("#" + parentNo);
				
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
	
				};
				
			});
		
		}
			
		
	
		$(document).ready(function() {
			$("#management-btn").click(function() {
				
				if ($(".collapse").is(":visible")) {
					$(".collapse").slideUp();
				} else {
					$(".collapse").slideDown();
				}
	
			});
		});
	
		$("#creating-btn").on("click", function() {
			console.log("등록 버튼 클릭");
	
			//메인모달창 호출
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
	
		$("document").ready(function() {
	
			$("#btn1").on("click", function() {
	
				$("#modal").val("123");
	
			});
	
		});
	</script>

</html>