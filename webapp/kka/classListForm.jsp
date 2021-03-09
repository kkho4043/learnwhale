<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.form-text {
	font-size: 20px;
	font-weight: 300;
	color: #008B8B; ,
	line-height: 100px
}

table {
	text-align: center;
	align: center;
	​ border-collapse: collapse;

}
</style>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>

<body>
	<div id="wrap">
		<c:import url="/ktu/header.jsp"></c:import>
		<!-- //header -->

		<div class="row">
			<c:import url="/ktu/myclass-aside.jsp"></c:import>

			<div class="col-xs-10 body">

				<!-- 내용 -->
				<div id="content">
					<div id="list">

						<table class="table table-hover" >
							<caption>내반 리스트</caption>
							<thead>
								<tr class="info">
									<th>번호</th>
									<th>수업명</th>
									<th>수업 시작일</th>
									<th>학생 인원</th>
									<th>수업진행률</th>
									<th>관리</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10</td>
									<td><a href="#">하이미디어 C</a></td>
									<td>2020-12-21</td>
									<td>20명</td>
									<td>70%</td>
									<td><a href="">[수정]</a></td>
								</tr>
								<tr>
									<td>9</td>
									<td><a href="#">하이미디어 B</a></td>
									<td>2020-12-20</td>
									<td>15명</td>
									<td>60%</td>
									<td><a href="">[수정]</a></td>
								</tr>
								<tr>
									<td>8</td>
									<td><a href="#">하이미디어 A</a></td>
									<td>2020-12-19</td>
									<td>15명</td>
									<td>60%</td>
									<td><a href="">[수정]</a></td>
								</tr>
								<tr>
									<td>7</td>
									<td><a href="#">JAVA기초반 C</a></td>
									<td>2020-12-19</td>
									<td>15명</td>
									<td>60%</td>
									<td><a href="">[수정]</a></td>
								</tr>
								<tr>
									<td>6</td>
									<td><a href="#">JAVA기초반 B</a></td>
									<td>2020-12-19</td>
									<td>15명</td>
									<td>60%</td>
									<td><a href="">[수정]</a></td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="#">JAVA기초반 A</a></td>
									<td>2020-12-19</td>
									<td>15명</td>
									<td>60%</td>
									<td><a href="">[수정]</a></td>
								</tr>
							</tbody>
						</table>

						<nav id="page">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li style="margin-right: 40px;"><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
						<!-- page -->


					</div>
					<!-- //list -->

				</div>
				<!-- //content  -->
				<div class="clear"></div>

				<!-- //footer -->

			</div>
			<!-- //wrap -->
		</div>
	</div>
</body>
</html>