<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>학생리스트</title>
	
		<!-- css -->
		<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/assets/css/ban/student.css" rel="stylesheet" type="text/css">
	
		<!-- js -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
		
		<c:if test="${param.success eq 'fail'}">

			<script type="text/javascript">

					alert("가입 상태 업데이트에 실패했습니다.\n다시 시도해주세요");

			</script>
			
		</c:if>
		
		
		
	
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
          					<li class="breadcrumb-item">학생관리</li>
          				</ol>
					</div>
					<!-- //위치 -->
					
					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>학생관리</p>
							</div>
						</div>
					</div>	
					<!-- //메인영역 타이틀 -->
					
			<!-- //main-content-area -->
			
			<div id="wrap" class="container-fluid">

			<!-- 헤더 -->
		
		
			<div class="row">
										
				<!-- content -->
				<div id= "content">
			
			
					<!-- title -->
					<form action="${pageContext.request.contextPath }/${url}/student/approve" method="get">
					
					<div id="title-form">

						<div class="row">
						   
						  <div class="btn-group" role="group" aria-label="submit">
							  <button type="submit" class="btn btn-default">승인</button>
							  
							  <button type="submit" class="btn btn-default"
							  formaction="${pageContext.request.contextPath }/${url}/student/wait">대기</button>
							  
							  <button type="submit" class="btn btn-default"
							  formaction="${pageContext.request.contextPath }/${url}/student/delete">탈퇴</button>
							  
						  </div>
						
						</div>
		
					</div>	
					<!-- title -->
					
					<!-- board -->
					
					
					<div id="studentList" class="row">
						<div class="col-xs-12">
						<table  class="table table-hover table-bordered table-striped">
							<colgroup>
								<col style="width: 1%;">
								<col style="width: 3%;">
								<col style="width: 12%;">
								<col style="width: 7%;">
								<col style="width: 2%;">
								<col style="width: 1%;">
							</colgroup>
							<thead class="text-center" style="font-weight:bold;">
								<tr>
									<td>번호</td>
									<td>이름</td>
									<td>이메일</td>
									<td>핸드폰 번호</td>
									<td>상태</td>
									<td>선택</td>
								</tr>
							</thead>
							
							
							
								<tbody>
									<c:forEach items="${joinList}" var="userVo" varStatus="status">
									<tr>
										<td>${userVo.R }</td>
										<td>${userVo.NAME }</td>
										<td>${userVo.EMAIL }</td>
										<td>${userVo.PHONENUM }</td>
										<td>${userVo.APPROVAL }</td>
										<td><input type="checkbox" name="userNo" value="${userVo.NO }"></td>
									</tr>
									</c:forEach>					
								</tbody>
								
							
							
						</table>
						</div>
					</div>
					<!-- board -->
					
					</form>
					
					<!-- page -->
					<nav id="page">
						  <ul class="pagination">
						    <li>
						    	<c:choose>
						    		<c:when test="${param.page <=1 or empty param.page }">
						    			<a href="${pageContext.request.contextPath }/${url}/student/list?page=1" aria-label="Previous">
							        		<span aria-hidden="true">&laquo;</span>
							     	 	</a>
						    		</c:when>
						    		<c:otherwise>
								     	 <a href="${pageContext.request.contextPath }/${url}/student/list?page=${param.page -1}" aria-label="Previous">
								        	<span aria-hidden="true">&laquo;</span>
								     	 </a>
							     	 </c:otherwise>
						     	 </c:choose>
						    </li>
						    
						    <c:forEach var="page" begin="${paMap.startPage }" end="${paMap.endPage }">
						    	<c:choose>
						    		<c:when test="${param.page eq page or (empty param.page and page==1)}">
						    		
						    			<li class= "active"><a href="${pageContext.request.contextPath }/${url}/student/list?page=${page}">${page }</a></li>
						    			
						    		</c:when>
						    		<c:otherwise>
						    		
						    			<li><a href="${pageContext.request.contextPath }/${url}/student/list?page=${page}">${page }</a></li>
						
						    		</c:otherwise>
						    	</c:choose>				    	
						    </c:forEach>
						    
						    <li>
						      <c:choose>
						    		<c:when test="${param.page >= paMap.lastPage }">
						    			<a href="${pageContext.request.contextPath }/${url}/student/list?page=${paMap.lastPage}" aria-label="Next">
							        		<span aria-hidden="true">&raquo;</span>
							     	 	</a>
						    		</c:when>
						    		<c:otherwise>
								     	 <a href="${pageContext.request.contextPath }/${url}/student/list?page=${param.page +1}" aria-label="Next">
								        	<span aria-hidden="true">&raquo;</span>
								     	 </a>
							     	 </c:otherwise>
						     	 </c:choose>
						    </li>
						  </ul>
					</nav>
					<!-- page -->
					
			
					</div>	
					<!-- content -->	
										
				</div>

		</div>
		<!-- wrap -->
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