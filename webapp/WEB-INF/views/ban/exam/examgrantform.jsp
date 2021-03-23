<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/assets/css/ban/exam.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/category.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/problem.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- top-banner -->

	<!-- //top-banner -->


	<!-- content, container 영역-->
	<div class="container">
		<div class="row">

			<div id="content">

				<!-- 왼쪽 영역-->
				<c:import url="/WEB-INF/views/ban/include/aside.jsp"></c:import>
				<!-- //왼쪽 영역-->

				<!-- 오른쪽 영역 -->
				<div id="main-area" class="col-xs-10">
					<!-- 위치 -->
					<div id="breadcrumb-area">
						<ol class="breadcrumb pull-right">
							<li class="breadcrumb-item">반</li>
							<li class="breadcrumb-item">시험출제</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 출제</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
						<div class="row testoption">

							<div class="row">
								<div class="col-xs-2">제목</div>
								<div class="col-xs-10">
									<input type="text" id="examtitle">
								</div>
							</div>

							<div class="row">
								<div class="col-xs-2">시험 유형</div>
								<div class="col-xs-2">
									<input type="radio" name="testtype" value="쪽지시험" checked="checked" onclick="gettype(event)"><span>쪽지시험</span>
								</div>
								<div class="col-xs-2">
									<input type="radio" name="testtype" value="시험" onclick="gettype(event)"><span>시험</span>
								</div>
								<div class="col-xs-2">
									<input type="radio" name="testtype" value="과제" onclick="gettype(event)"><span>과제</span>
								</div>
							</div>

							<div class="row" class="simpletesttime" id="testtime">
								<div class="col-xs-2">시간설정</div>
								<div class="col-xs-4">
									<select name="testtime"  id= "timeselect">
										<option value="">문제당 시간</option>
										<option value="30">30초</option>
										<option value="60">1분</option>
										<option value="120">2분</option>
										<option value="180">3분</option>
										<option value="240">4분</option>
										<option value="300">5분</option>
									</select>
								</div>
							</div>


							<div class="row">
								<div class="col-xs-2">응시 가능 시간</div>
								<div class="col-xs-5">
									<input type="datetime-local" id="startdate"> 부터
								</div>

								<div class="col-xs-5">
									<input type="datetime-local" id="enddate"> 까지
								</div>
							</div>


						</div>


						<div class="row">
							<div class="col-xs-2">선택한 문제</div>
							<div class="col-xs-6">
								<button type="button" class="" data-toggle="modal" data-target="#myModal">문제 추가</button>
							</div>

							<div class="col-xs-3">
								합산점수 <span id = "hapscore">0</span> / 100
							</div>
						</div>

						<div class="row prolist">
							<table class="table">
								<thead>
									<tr>
										<th>번호</th>
										<th>문제 제목</th>
										<th>형식</th>
										<th>문제당 점수</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody id="selectprolist">


								</tbody>
							</table>
						</div>

						<div class="row">
							<div class="col-xs-5"></div>
							<div class="col-xs-6">
								<button type="button" class="btn btn-xs btn-primary" id="examgrant">시험 출제</button>
							</div>
						</div>

					</div>
					<!-- //main-content-area -->
					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->




				</div>
				<!-- //오른쪽 영역 -->

			</div>
			<!-- //content -->

		</div>
		<!-- //content row-->

	</div>
	<!-- //content, container 영역-->

	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/ban/include/footer.jsp"></c:import>
	<!-- //footer-Area container 영역-->



	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">문제 추가</h4>
				</div>
				<div class="modal-body">
					<div class="procate">
						<c:import url="/WEB-INF/views/ban/exam/addproblemcatemodal.jsp"></c:import>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	//시험 유형
	function gettype(event) {
		type = event.target.value;
		if (type === "쪽지시험") {
			document.getElementById("testtime").style.display = "block";
		} else {
			document.getElementById("testtime").style.display = "none";
		}
		
	}var type = "쪽지시험";
	
	//점수 합산
	function getscore() {
		var hap = 0;
		hap = Number(hap);
		for(var i = 0;i < voarr.length; i++){
			var idN='#score-'+i;
			console.log(idN);
			 var val = $(idN).val();
			 val = Number(val);
			 hap = hap + val;
			console.log(val);
		}
		console.log(hap);
		document.getElementById("hapscore").innerHTML = hap;
	}
	
	$("#examgrant").on("click", function() {
		
		var title = document.getElementById('examtitle').value;
		
		var langSelect = document.getElementById("timeselect");
		var time = langSelect.options[langSelect.selectedIndex].value;
		
		var startdate = document.getElementById("startdate").value;;
		var enddate= document.getElementById("enddate").value;;
		var etype = type;
		console.log(title,etype,time);
		console.log(startdate,enddate);
				
		var qarr = [];
		
		 for (var i = 0; i < voarr.length; i++) {
			 var idN='#score-'+i;	
			 var val = $(idN).val();
			 
			 qarr.push(voarr[i].problemNo+"/"+val);
			
		} 
		$.ajax({
			url : "${pageContext.request.contextPath}/abc/exam/grant",
			type : "post",
			//contentType : "application/json",
			 data : {
					examTitle : title ,
					examType : etype ,
					time : time,
					startDate : startdate ,
					endDate :enddate,
					qarr: qarr
					
					}

		});
	});
	
	var order = 1;
	$(document).ready(function() {
		$(".parentsFolder").click(function() {

			console.log("click1번");
			let parentNo = $(this).data("group");

			var submenu = $(this).nextAll("#" + parentNo);
			console.log(submenu);
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();

			}
			;
		});
	});

	$(document).ready(function() {
		$(".parentsFolder").click(function() {
			var submenu = $(this).next("#child-folderDiv");
			console.log(submenu);
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
			;
		});
	});
	//카테고리 항목
	$("#cate a").on("click", function() {
		event.preventDefault();

		var cateNo = $(this).data("catno");
		$("#cate-problem").empty();
		console.log(cateNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/abc/exam/cateproList",
			type : "post",
			//contentType : "application/json",
			data : {
				cateNo : cateNo
			},
			//dataType : "json",
			success : function(cateproList) {
				if (cateproList == null) {
					console.log("카테고리에 항목없음")
				} else {
					for (var i = 0; i < cateproList.length; i++) {
						render(cateproList[i], "up");
					}
				}

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

		});

	});

	//리스트 추가(출력)
	function render(cateVo, updown) {
		var str = "";
		str += '<tr>';
		str += '	<td>' + cateVo.problemNo + '</td>';
		str += '	<td>' + cateVo.problemTitle + '</td>';
		str += '	<td>' + cateVo.type + '</td>';
		str += '	<td>' + cateVo.regDate + '</td>';
		str += '	<td>';
		str += '			<button class="btn btn-default btn-xs" data-no="'+cateVo.problemNo+'" data-title="'+cateVo.problemTitle+'" data-type="'+cateVo.type+'" data-regdate="'+cateVo.regDate+'">등록</button>';
		str += '	</td>';
		str += '</tr>';

		if (updown == "down") {
			$("#cate-problem").prepend(str);
		} else if (updown == "up") {
			$("#cate-problem").append(str)
		} else {

		}
	}

	var voarr = [];

	//등록버튼 클릭
	$("#cate-problem").on("click", "button", function() {

		var no = $(this).data("no");
		var title = $(this).data("title");
		var type = $(this).data("type");

		console.log(no, title, type);

		var vo = new Object();
		vo.problemNo = no;
		vo.problemTitle = title;
		vo.type = type;

		voarr.push(vo);
		rendersVo();
	});

	//삭제버튼 클릭
	$("#selectprolist").on("click", "input[type=button]", function() {
		console.log("삭제버튼 클릭");
		var delorder = $(this).data("order");
		voarr.splice(delorder, 1);

		var remove = $(this);
		remove.parents("tr").empty();
		document.getElementById("hapscore").innerHTML = 0;
		rendersVo();
	});

	function rendersVo() {
		$("#selectprolist").empty();
		for (var i = 0; i < voarr.length; i++) {
			serender(voarr[i], i + 1);
		}
	}

	//리스트 출력
	function serender(Vo, order) {

		var str = "";
		str += '<tr>';
		str += '	<td>' + order + '</td>';
		str += '	<td>' + Vo.problemTitle + '</td>';
		str += '	<td>' + Vo.type + '</td>';
		str += '	<td><input type="text" id="score-'+(order-1)+'" onchange = "getscore()" value="">점</td>';
		str += '	<td>';
		str += '			<input type="button" value="삭제" class="btn btn-xs btn-danger" data-order="'
				+ (order - 1) + '">';
		str += '	</td>';
		str += '	<input type="hidden" value="'+Vo.no+'">';
		str += '</tr>';

		$("#selectprolist").prepend(str);
	}
</script>
</html>




