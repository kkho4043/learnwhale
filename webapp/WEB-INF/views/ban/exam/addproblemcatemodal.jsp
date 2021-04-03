<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="row">
		<div id="cate-area" class="col-xs-2" style="margin-left: 20px; overflow: auto; white-space: nowrap;">
			<div id="cate" style="height: 356px;">

				<c:forEach items="${cateList}" var="cateVo">
					<c:choose>

						<c:when test="${cateVo.depth == 0}">
							<div class="parents-folder parentsFolder" id="top-folder" data-group="${cateVo.groupNo}">

								<span class="glyphicon2 glyphicon-folder-close"></span> <a href="#" class="cateNum" data-catno="${cateVo.cateNo}"> ${cateVo.cateName}</a>
							</div>
						</c:when>

						<c:otherwise>

							<div id="${cateVo.groupNo}" data-group="${cateVo.groupNo}" class="child-group">
								<div class="child-folder" style="margin-left: 0px;">
									<span class="glyphicon glyphicon-menu-right"> <span class="glyphicon2 glyphicon-folder-close" id="folder-color"> </span><a href="#"
										class="cateNum" data-catno="${cateVo.cateNo}">${cateVo.cateName}</a></span>
								</div>
							</div>

						</c:otherwise>

					</c:choose>
				</c:forEach>


			</div>

		</div>
		<!-- //col-xs-3 -->
		<div id="main-area" class="col-xs-9">
			<div class="row">
				<div id="controll-area" class="col-xs-12">
					<div class="row">
						<div class="col-xs-6">
							<form>
								<div class="form-group form-inline">
									<input type="text" class="form-control input-sm" id="txtSearchKyword" placeholder="">
									<button class="btn btn-default btn-sm" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<table class="table table-striped table-bordered table-hover" style="width: 90%;" id="proList">
					<colgroup>
						<col style="width: 10%;">
						<col>
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 20%;">
					</colgroup>
					<thead>
						<tr>
							<th class="th-center">번호</th>
							<th>문제 제목</th>
							<th>문제 유형</th>
							<th>만든 날짜</th>
							<th id="thead-last">문제등록</th>
						</tr>
					</thead>
					<tbody id="cate-problem">

					</tbody>
				</table>
			</div>

			<div class="row">
				<div class="col-xs-12 text-center">
					<nav>
						<ul class="pagination">
							
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- //head -->