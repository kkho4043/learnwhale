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
		<link href="${pageContext.request.contextPath}/assets/css/ban/report.css" rel="stylesheet" type="text/css">
		
		
		<!-- js -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
	
	</head>
	
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->
	
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
          					<li class="breadcrumb-item">성적관리</li>
          				</ol>
					</div>
					<!-- //위치 -->
					
					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>성적관리</p>
							</div>
						</div>
					</div>	
					<!-- //메인영역 타이틀 -->
					
					
					
					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
					
						<div id="student-list" class="col-xs-2">
							<ol>
								<c:forEach items="${joinList }" var="userVo" varStatus= "status">
									<li><a href= "${pageContext.request.contextPath }/${url}/report/list?type=all&joinNo=${userVo.JOINNO }">${userVo.NAME }</a></li>
								</c:forEach>
							</ol>
						</div>
						<!-- //student-list -->
					
						<div id="report-area" class="col-xs-10">
							
							<div id="boardHeader">
								<c:choose>
									<c:when test="${empty param.joinNo }">
										<h3>${joinList[0].NAME }님 성적 평균점수</h3>
										
									</c:when>
									<c:otherwise>
										<c:forEach items="${joinList }" var="userVo" varStatus="status">
												
											<c:if test="${status.current.JOINNO eq param.joinNo}">
												<h3>${status.current.NAME }님 성적 평균점수</h3>
											</c:if>
	
										</c:forEach>
									
									</c:otherwise>
								</c:choose>
								
								<div id="total">
									<ul>
										<li>종합</li>
										<li>${avgList[0] }</li>
									</ul>
								</div>
								
								<ul class="list-inline text-left">
									<c:choose>
										<c:when test="${empty avgList }">
											<li>쪽지:  0</li>
											<li>시험:  0</li>
											<li>과제:  0</li>
										</c:when>
									
									<c:otherwise>
										<li>쪽지:  ${avgList[1] }</li>
										<li>시험:  ${avgList[2] }</li>
										<li>과제:  ${avgList[3] }</li>
									</c:otherwise>
									
									</c:choose>
							
								</ul>
								
							</div>
							
							<div class="row">
								<div class="col-xs-12">
								
									<div id="controll-area" class="row">
										<div class="col-xs-6">
											<form action="${pageContext.request.contextPath }/${url}/report/list">
												<div class="form-group form-inline">
												
													<input type="text" class="form-control input-sm" id="keyword" name="keyword" placeholder="">
													<input type="hidden" name="joinNo" value="${param.joinNo }">
													<button class="btn btn-default btn-sm" type="submit">검색</button>
												
												</div>
											</form>
										</div>
										<div id="selecOpt" class="col-xs-6">
											<ul class="pull-right">
												<li><a href="${pageContext.request.contextPath }/${url}/report/list?type=all&joinNo=${param.joinNo}">전체</a></li>
												<li><a href="${pageContext.request.contextPath }/${url}/report/list?type=quiz&joinNo=${param.joinNo}">쪽지</a></li>
												<li><a href="${pageContext.request.contextPath }/${url}/report/list?type=test&joinNo=${param.joinNo}">시험</a></li>
												<li><a href="${pageContext.request.contextPath }/${url}/report/list?type=homework&joinNo=${param.joinNo}">과제</a></li>
											</ul>
										</div>
									</div>
									
									<div class="row">
										<div class="col-xs-12">
											<table class="table table-hover table-bordered table-striped">
												<colgroup>
													<col style="width: 8%;">
													<col>
													<col style="width: 12%;">
													<col style="width: 7%;">
													<col style="width: 12%;">
													<col style="width: 15%;">
												</colgroup>
												<thead class="">
													<tr>
														<th>번호</th>
														<th>문제명</th>
														<th>형식</th>
														<th>점수</th>
														<th>작성일</th>
														
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${exList }" var="examVo" varStatus="status">
														<tr>
															<td>${exList.size() - status.index}</td>
															<td class="text-left">${examVo.examTitle }</td>
															<td>${examVo.examType }</td>
															<td>${examVo.grade }</td>
															<td>${examVo.regDate }</td>
														</tr>
													</c:forEach>
												</tbody>		
											</table>
										</div>
									</div>
							
							
									<div class="row">
										<div class="col-xs-12 text-center">
											<nav>
												<ul class="pagination">
												    <li>
												    	<c:choose>
												    		<c:when test="${param.page <=1 or empty param.page }">
												    			<a href="${pageContext.request.contextPath }/${url}/report/list?page=1&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}" aria-label="Previous">
													        		<span aria-hidden="true">&laquo;</span>
													     	 	</a>
												    		</c:when>
												    		<c:otherwise>
														     	 <a href="${pageContext.request.contextPath }/${url}/report/list?page=${param.page -1}&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}" aria-label="Previous">
														        	<span aria-hidden="true">&laquo;</span>
														     	 </a>
													     	 </c:otherwise>
												     	 </c:choose>
												    </li>
												   
												   	<c:forEach var="page" begin="${paMap.startPage }" end="${paMap.endPage }">
														<c:choose>
												    		<c:when test="${param.page eq page or (empty param.page and page==1)}">
												    		
												    			<li class= "active"><a href="${pageContext.request.contextPath }/${url}/report/list?page=${page}&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}">${page }</a></li>
												    			
												    		</c:when>
												    		<c:otherwise>
												    		
												    			<li><a href="${pageContext.request.contextPath }/${url}/report/list?page=${page}&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}">${page }</a></li>
												
												    		</c:otherwise>
												    	</c:choose>
													</c:forEach>
												   
												    <li>
													    <c:choose>
												    		<c:when test="${param.page >= paMap.lastPage }">
												    			<a href="${pageContext.request.contextPath }/${url}/report/list?page=${paMap.lastPage}&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}" aria-label="Next">
													        		<span aria-hidden="true">&raquo;</span>
													     	 	</a>
												    		</c:when>
												    		<c:otherwise>
														     	 <a href="${pageContext.request.contextPath }/${url}/report/list?page=${param.page +1}&keyword=${param.keyword}&joinNo=${param.joinNo}&type=${param.type}" aria-label="Next">
														        	<span aria-hidden="true">&raquo;</span>
														     	 </a>
													     	</c:otherwise>
												     	 </c:choose>
												    </li>
												</ul>
											</nav>
										</div>
									</div>
									
								
								</div>
							</div>
						</div>
						<!-- //report-area -->
						
					
					
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
	
</body>
</html>




