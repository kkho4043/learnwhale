<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/category.css">
<link rel="stylesheet" href="/learnwhale/assets/css/board.css">

<c:import url="/kka/blog.jsp"></c:import>

<title>Insert title here</title>
</head>
<body>

	<div id="content">

		<div id="board">
			<div id="list">
				<form action="" method="">
					<div id="content-head">
						<h3>공지사항</h3>					
					</div>
				</form>
				<!-- //content-head -->
				
				
				<div class="form-group text-right">
					<input type="text">
					<button type="submit" id=btn_search>검색</button>
				</div>
				
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>조회수</th>
							<th>작성일</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>10</td>
							<td class="text-left"><a href="#">게시판 게시글입니다.</a></td>
							<td>과학선생님</td>
							<td>1232</td>
							<td>2020-12-23</td>
							<td><a href="">[삭제]</a></td>
						</tr>
						<tr>
							<td>9</td>
							<td class="text-left"><a href="#">게시판 게시글입니다.</a></td>
							<td>수학선생님</td>
							<td>1232</td>
							<td>2020-12-23</td>
							<td><a href="">[삭제]</a></td>
						</tr>
						<tr>
							<td>8</td>
							<td class="text-left"><a href="#">게시판 게시글입니다.</a></td>
							<td>국어선생님</td>
							<td>1232</td>
							<td>2020-12-23</td>
							<td><a href="">[삭제]</a></td>
						</tr>
						<tr>
							<td>7</td>
							<td class="text-left"><a href="#">게시판 게시글입니다.</a></td>
							<td>국어선생님</td>
							<td>1232</td>
							<td>2020-12-23</td>
							<td><a href="">[삭제]</a></td>
						</tr>
						<tr class="last">
							<td>6</td>
							<td class="text-left"><a href="#">게시판 게시글입니다.</a></td>
							<td>국어선생님</td>
							<td>1232</td>
							<td>2020-12-23</td>
							<td><a href="">[삭제]</a></td>
						</tr>
					</tbody>
				</table>

				<div id="paging">
					<ul>
						<li><a href="">◀</a></li>
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li class="active"><a href="">5</a></li>
						<li><a href="">6</a></li>
						<li><a href="">7</a></li>
						<li><a href="">8</a></li>
						<li><a href="">9</a></li>
						<li><a href="">10</a></li>
						<li><a href="">▶</a></li>
					</ul>


					<div class="clear"></div>
				</div>
				<a id="btn_write" href="">글쓰기</a>

			</div>
			<!-- //list -->
		</div>
		<!-- //board -->
		<div class="clear"></div>
	  	
	  </div>
	  <!-- //content 끝 -->
</body>
</html>