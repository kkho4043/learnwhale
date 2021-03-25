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
							<li class="breadcrumb-item">시험수정</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 수정</p>
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
									<input type="text" id="examtitle" value="${pMap.examVo.examTitle}">
								</div>
							</div>

							<div class="row">
								<div class="col-xs-2">시험 유형</div>

								<div class="col-xs-2">
									<input id="testtype-easy" type="radio" name="testtype" value="쪽지시험" checked="checked" onclick="gettype(event)"><span>쪽지시험</span>
								</div>
								<div class="col-xs-2">
									<input id="testtype-test" type="radio" name="testtype" value="시험" onclick="gettype(event)"><span>시험</span>
								</div>
								<div class="col-xs-2">
									<input id="testtype-home" type="radio" name="testtype" value="과제" onclick="gettype(event)"><span>과제</span>
								</div>
							</div>

							<div class="row" class="simpletesttime" id="testtime">
								<div class="col-xs-2">시간설정</div>
								<div class="col-xs-4">
									<select name="testtime" id="timeselect">
										<option value="">문제당 시간</option>
										<option value="30" <c:if test="${pMap.examVo.time == '30'}"> selected="selected" </c:if>>30초</option>
										<option value="60" <c:if test="${pMap.examVo.time == '60'}"> selected="selected" </c:if>>1분</option>
										<option value="120" <c:if test="${pMap.examVo.time == '120'}"> selected="selected" </c:if>>2분</option>
										<option value="180" <c:if test="${pMap.examVo.time == '180'}"> selected="selected" </c:if>>3분</option>
										<option value="240" <c:if test="${pMap.examVo.time == '240'}"> selected="selected" </c:if>>4분</option>
										<option value="300" <c:if test="${pMap.examVo.time == '300'}"> selected="selected" </c:if>>5분</option>
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
								합산점수 <span id="hapscore">100</span> / 100
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
								<button type="button" class="btn btn-xs btn-primary" id="examgrant">시험 수정</button>
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
	$(document)
			.ready(
					function() {
						if ("${pMap.examVo.examType}" === "쪽지시험") {
							document.getElementById("testtime").style.display = "block";
							$('#testtype-easy').prop('checked', true);

						} else {
							document.getElementById("testtime").style.display = "none";
							if ("${pMap.examVo.examType}" === "시험") {
								$('#testtype-test').prop('checked', true);
							} else {
								$('#testtype-home').prop('checked', true);
							}

						}

						document.getElementById("startdate").value = "${pMap.examVo.startDate}";
						document.getElementById("enddate").value = "${pMap.examVo.endDate}";
						
						
						console.log('${pMap.qList}');
						var ar = '${pMap.qList}'.split("QuestionVo");
						var proNos;var eq;var rut;var prono;var poi;var proti;var proty;
						for(var i= 0 ;i < ar.length;i++){
							
							
							proNos = ar[i].indexOf('problemNo');
							if(proNos == -1){
								continue;
							}
							eq = ar[i].indexOf('=',proNos);
							rut = ar[i].indexOf(',',eq);
							prono = ar[i].substring(eq+1,rut);
							console.log("problemNo = " + prono);
							
							
							proNos = ar[i].indexOf('point');
							if(proNos == -1){
								continue;
							}
							eq = ar[i].indexOf('=',proNos);
							rut = ar[i].indexOf(',',eq);
							poi = ar[i].substring(eq+1,rut);
						
							console.log("point = " + poi);
							
							
							proNos = ar[i].indexOf('problemTitle');
							if(proNos == -1){
								continue;
							}
							eq = ar[i].indexOf('=',proNos);
							rut = ar[i].indexOf(',',eq);
							proti = ar[i].substring(eq+1,rut);
						
							console.log("problemTitle = " + proti);
							
							
							proNos = ar[i].indexOf('problemType');
							if(proNos == -1){
								continue;
							}
							eq = ar[i].indexOf('=',proNos);
							rut = ar[i].indexOf(']',eq);
							proty = ar[i].substring(eq+1,rut-1);
							
							console.log("problemType = " + proty);
							
							
							var vo = new Object();
							vo.problemNo = prono;
							vo.point = poi;
							vo.problemTitle = proti;
							vo.problemType = proty;
							voarr.push(vo);
						}
					
						rendersVo();
						getscore();
					});
	//시험 유형
	function gettype(event) {
		type = event.target.value;
		if (type === "쪽지시험") {
			document.getElementById("testtime").style.display = "block";
		} else {
			document.getElementById("testtime").style.display = "none";
		}

	}
	
	var type ="${pMap.examVo.examType}" ;
	

	//점수 합산
	function getscore() {
		var hap = 0;
		hap = Number(hap);
		for (var i = 0; i < voarr.length; i++) {
			var idN = '#score-' + i;
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
		console.log(title);
		var langSelect = document.getElementById("timeselect");
		var time = langSelect.options[langSelect.selectedIndex].value;
		var startdate = document.getElementById("startdate").value;
		var enddate = document.getElementById("enddate").value;
		var etype = type;
		var examNo = "${param.examNo}"
		console.log(title, etype, time);
		console.log(startdate, enddate);
		var qarr = [];
		for (var i = 0; i < voarr.length; i++) {
			var idN = '#score-' + i;
			var val = $(idN).val();
			qarr.push(voarr[i].problemNo + "/" + val);

		}
		if (title == '') {
			alert('제목을 입력해주세요');
			return false;
		} else if (etype == '쪽지시험') {
			if (time == '') {
				alert('시간을 입력해주세요');
				return false;
			}
		} else if (startdate == '') {
			alert('시작일을 선택해주세요');
			return false;
		} else if (enddate == '') {
			alert('종료일을 선택해주세요');
			return false;
		} else if (qarr == '') {
			alert('문제를 선택해주세요');
			return false;
		} else if (document.getElementById("hapscore").innerHTML != 100) {
			alert('부여된 점수의 합이 100점이 아닙니다');
			return false;
		} else {
			for (var i = 0; i < voarr.length; i++) {
				var idN = '#score-' + i;
				var val = $(idN).val();

				if (val == '') {
					alert('점수가 부여되지않은 점수가 있습니다');
					return false;
				}
			}
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/abc/exam/modify",
			type : "post",
			//contentType : "application/json",
			data : {
				examNo : examNo,
				examTitle : title,
				examType : etype,
				time : time,
				startDate : startdate,
				endDate : enddate,
				qarr : qarr

			},
			success : function(url) {
				console.log(url)
				location.href = "${pageContext.request.contextPath}" + url;

				/* location.href = "http://www.example.com/ThankYou.html" */
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
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

		var problemNo = $(this).data("no");
		var title = $(this).data("title");
		var problemType = $(this).data("type");

		var vo = new Object();
		vo.problemNo = problemNo;
		vo.problemTitle = title;
		vo.problemType = problemType;
		vo.point = "";
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
		str += '	<td>' + Vo.problemType + '</td>';
		str += '	<td><input type="text" id="score-' + (order - 1)
				+ '" onchange = "getscore()" value="'+Vo.point+'">점</td>';
		str += '	<td>';
		str += '			<input type="button" value="삭제" class="btn btn-xs btn-danger" data-order="'
				+ (order - 1) + '">';
		str += '	</td>';
		str += '	<input type="hidden" value="'+Vo.problemNo+'">';
		str += '</tr>';

		$("#selectprolist").prepend(str);
	}
</script>
</html>




