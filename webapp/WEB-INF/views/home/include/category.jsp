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
	
			<c:forEach items="${cateList}" var="cateVo">
				<c:choose>

					<c:when test="${cateVo.depth == 0}">
						<div class="parents-folder" id="top-folder" data-group="${cateVo.groupNo}" data-cate="${cateVo.cateNo }">

							<span class="glyphicon glyphicon-folder-close"></span>
							
							<span class="main-folder" data-cate="${cateVo.cateNo }" data-group="${cateVo.groupNo}">
							 	${cateVo.cateName}
							</span> 
									
						</div>
					</c:when>

					<c:otherwise>

						<div id="${cateVo.groupNo}" data-group="${cateVo.groupNo}" class="child-group">
							<div class="child-folder">
								<span class="glyphicon glyphicon-menu-right"></span> 
								
								<span class="glyphicon glyphicon-folder-close"> </span> 
								
								<a class = "subFolder" href="" data-cate="${cateVo.cateNo }" data-group="${cateVo.groupNo}">
								 	${cateVo.cateName}
								</a>
								
							</div>
						</div>

					</c:otherwise>
				
				</c:choose>
			</c:forEach>
		
			<ul class="contextmenu">
	  			<li id="subMake" data-group=""><a href="">폴더 만들기</a></li>
	  			<li id="modify"><a href="">수정</a></li>
	  			<li id="delete"><a href="">삭제</a></li>
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
						<input type="text" name="userNo" value="1">
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
						<input type="text" name="userNo" value="1">
						<input type="text" name="groupNo" value="">
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
<form method="get" action="${pageContext.request.contextPath}/myclass/problem/updateFolder">
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
						<input type="text" name="cateName" id="modiText" placeholder="폴더 이름을 입력해주세요" style="width: 400px;">
						<input type="text"  name="cateNo" value="">
					</p>
				</div>
				<div class="modal-footer">
					<button onclick="empty();" type="button" id="cancel" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-primary">수정하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modifyModal -->
</form>
	  
	<form method="get" action="${pageContext.request.contextPath}/api/myclass/problem/delete">
	<div class="modal fade" id="deleteModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 삭제</h4>
				</div>
				<div class="modal-body">폴더를 삭제하시겠습니까?</div>
				<input type="text" name="cateNo" value="">
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-primary">삭제하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.deleteModal -->
	</form>
	
	<c:if test="${param.result ==0 }">
		<script type="text/javascript">
			alert("문제가 있는 카테고리는 삭제 할 수 없습니다");
		</script>
	</c:if>
	
	
</body>

	<script type="text/javascript">
		
	
		$(document).ready(function() {
			subMake();
			rightClick();
			subVisible();
			empty();
			
		});
		
		
		
		
		function rightClick(){
				
			$(".parents-folder .main-folder, .child-folder .subFolder").contextmenu(function(e){
				
				let groupNo = e.target.getAttribute("data-group");
				let cateNo = e.target.getAttribute("data-cate");
				//$(".contextmenu #subMake").attr("data-group", groupNo);
				
				if(e.target.getAttribute("class")=='subFolder'){
					$("#subMake").hide();
				}
				else{
					$("#subMake").show();
				}
				$("#subMake").on("click", function(){
					$("input[name=groupNo]").val(groupNo);
				})
				
				$("#modify").on("click", function(){
					$("input[name=cateNo]").val(cateNo);
				})
				
				$("#delete").on("click", function(){
					$("input[name=cateNo]").val(cateNo);
				})
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
	

		$("#subMake").on("click", function(e) {
			e.preventDefault();
			//메인모달창 호출
			$("#addSubFolder").modal();
		});
		
		$("#modify").on("click", function(e) {
			e.preventDefault();
			//메인모달창 호출
			$("#modifyModal").modal();
		});
		
		$("#delete").on("click", function(e) {
			e.preventDefault();
			//메인모달창 호출
			$("#deleteModal").modal();
		});
		
		function empty(){
			
			$("#modiText").val("");
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
	
		$("document").ready(function(){
			fetchList();
					
		});
		function fetchList(){
			
			$(".child-folder a").on("click", function(e){
				e.preventDefault();
				
				var html = $("#problemList").html();	

				if(html != null){
					
					$("#problemList").empty();
				}
							
				let cateNo = $(this).data("cate");
				history.pushState(null, null, 'problemList?cateNo='+cateNo);
				document.getElementById("cateNosave").value = cateNo;
				console.log("카테로리 클릭");
				$.ajax({
					url: "${pageContext.request.contextPath}/myclass/problem/cateproblem",
					type: "get",
					dataType : "json",
					data : {"cateNo" : cateNo},
					
					success : function(proList){
						
						for(var i=0; i<proList.length; i++){
							
							render(proList[i]);
						}
					},
					
					error: function(XHR, status, error){
						console.log(status+ ":" + error);
			
					}
				});
					
				
			});
			
		};


		function render(proVo){
				
			let html = 		"<tr id='tr-center'>";
			html += 			"<th>"+proVo.problemNo+"</th>";
			html += 			"<th><a href='${pageContext.request.contextPath}/myclass/problem/creating-ViewForm?proNo="+proVo.problemNo+"'>"+proVo.problemTitle;
			html +=				"</a></th>";
			html += 			"<th>"+proVo.type+"</th>";
			html += 			"<th>"+proVo.regDate+"</th>";
			html += 			"<td>";
			html +=					"<button class='btn btn-primary btn-xs delete-Btn' data-title='"+proVo.problemTitle+"'>이동</button>";	
			html +=					"<button class='btn btn-danger btn-xs move-Btn'>삭제</button>";
			html += 			"</td>";
			html += 		"</tr>";

			$("#problemList").append(html);
		}
	</script>

</html>