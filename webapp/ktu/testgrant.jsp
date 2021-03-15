<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/kka/blog.jsp"></c:import>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/category.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<style>
.tList {
	width: 800px;
	border: 1px solid black;
	height: 700px;
	padding: 50px;
}

.testoption {
	height: 200px;
}

.testoption .row {
	margin-top: 15px;
}

.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td,
	.table>tbody>tr>td, .table>tfoot>tr>td {
	padding: 4px;
	text-align: center;
}

.table input[type=text] {
	width: 30px;
}
</style>

</head>
<body>

	<div class="tList col-xs-10">
		<h3>시험관리 > 시험출제</h3>


		<div class="row testoption">

			<div class="row">
				<div class="col-xs-2">제목</div>
				<div class="col-xs-10">
					<input type="text">
				</div>
			</div>

			<div class="row">
				<div class="col-xs-2">시험유형</div>
				<div class="col-xs-2">
					<input type="radio" name="testtype" value="쪽지시험" checked="checked"><span>쪽지시험</span>
				</div>
				<div class="col-xs-2">
					<input type="radio" name="testtype" value="시험"><span>시험</span>
				</div>
				<div class="col-xs-2">
					<input type="radio" name="testtype" value="과제"><span>과제</span>
				</div>
			</div>

			<!-- <div class="row" class="simpletesttime">
					<div class="col-xs-2">시간설정</div>
					<div class="col-xs-4">
						<select name="testtime">
							<option value="">문제당 시간</option>
							<option value="30">30초</option>
							<option value="60">1분</option>
							<option value="120">2분</option>
							<option value="180">3분</option>
							<option value="240">4분</option>
							<option value="300">5분</option>
						</select>
					</div>
				</div> 쪽지시험 시간 설정-->

			<div class="row" class="testtime">
				<div class="col-xs-2">시간설정</div>
				<div class="col-xs-4">
					<select name="testtime">
						<option value="">전체 시간</option>
						<option value="1800">30분</option>
						<option value="3000">50분</option>
						<option value="5400">1시간 30분</option>
						<option value="7200">2시간</option>
						<option value="9000">2시간 30분</option>
						<option value="10800">3시간</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-2">응시 가능 시간</div>
				<div class="col-xs-4">
					<input type="datetime-local"> 부터
				</div>

				<div class="col-xs-4">
					<input type="datetime-local"> 까지
				</div>
			</div>


		</div>


		<div class="row">
			<div class="col-xs-2">선택한 문제</div>
			<div class="col-xs-5">
				<button type="button" class="" data-toggle="modal" data-target="#myModal">문제 추가</button>
			</div>

			<div class="col-xs-3">
				합산점수 <span>0</span> / 100
			</div>
		</div>

		<div class="row prolist">
			<table class="table" border="1">
				<tr>
					<th>번호</th>
					<th>문제 제목</th>
					<th>형식</th>
					<th>문제당 점수</th>
					<th>삭제</th>
				</tr>

				<tr>
					<td>4</td>
					<td>자바 여산자 테스트</td>
					<td>객관식</td>
					<td><input type="text">점</td>
					<td><input type="button" value="삭제"></td>
				</tr>

				<tr>
					<td>3</td>
					<td>자바 여산자 테스트</td>
					<td>객관식</td>
					<td><input type="text">점</td>
					<td><input type="button" value="삭제"></td>
				</tr>

				<tr>
					<td>2</td>
					<td>자바 여산자 테스트</td>
					<td>객관식</td>
					<td><input type="text">점</td>
					<td><input type="button" value="삭제"></td>

				</tr>
				<tr>
					<td>1</td>
					<td>자바 여산자 테스트</td>
					<td>객관식</td>
					<td><input type="text">점</td>
					<td><input type="button" value="삭제"></td>

				</tr>


			</table>
		</div>


	</div>


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
						<c:import url="/ktu/addproblemcatemodal.jsp"></c:import>
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
	$('#myModal').on('shown.bs.modal', function() {
		$('#myInput').focus()
	})

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
</script>
</html>


