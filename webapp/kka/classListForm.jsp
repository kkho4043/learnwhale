<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../assets/css/mysite.css" rel="stylesheet" type="text/css">
<link href="../../assets/css/board.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">

		<!-- //header -->

		<div id="content">

			<div id="content-head">
			
            	<div id="location">
            		<ul>
            			<li>내가 만든 문제</li>
            			<li>내 반 리스트</li>
            			<li>내 정보 수정</li>
            		</ul>
            	</div>
            	
            </div>
            <!-- //content-head -->

			<div id="list">
	
				<table border="1" width="50%" height="50">
				  <caption>내반 리스트</caption>
					<thead>
						<tr>
							<th>번호</th>
							<th>수업명</th>
							<th>수업 시작일</th>
							<th>학생 인원</th>
							<th>수업진행률</th>
							<th>관리</th>
						</tr>
					</thead>
					<tbody>
						<tr align="center">
							<td>10</td>
							<td class="text-left"><a href="#">하이미디어 C</a></td>
							<td>2020-12-21</td>
							<td>20명</td>
							<td>70%</td>
							<td><a href="">[수정]</a></td>
						</tr>
						<tr align="center">
							<td>9</td>
							<td class="text-left"><a href="#">하이미디어 B</a></td>
							<td>2020-12-20</td>
							<td>15명</td>
							<td>60%</td>
							<td><a href="">[수정]</a></td>
						</tr>
						<tr align="center">
							<td>8</td>
							<td class="text-left"><a href="#">하이미디어 A</a></td>
							<td>2020-12-19</td>
							<td>15명</td>
							<td>60%</td>
							<td><a href="">[수정]</a></td>
						</tr>
						<tr align="center">
							<td>7</td>
							<td class="text-left"><a href="#">JAVA기초반 C</a></td>
							<td>2020-12-19</td>
							<td>15명</td>
							<td>60%</td>
							<td><a href="">[수정]</a></td>
						</tr>
						<tr align="center">
							<td>6</td>
							<td class="text-left"><a href="#">JAVA기초반 B</a></td>
							<td>2020-12-19</td>
							<td>15명</td>
							<td>60%</td>
							<td><a href="">[수정]</a></td>
						</tr>
						<tr align="center">
							<td>5</td>
							<td class="text-left"><a href="#">JAVA기초반 A</a></td>
							<td>2020-12-19</td>
							<td>15명</td>
							<td>60%</td>
							<td><a href="">[수정]</a></td>
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
	
			
			</div>
			<!-- //list -->
			
		</div>
		<!-- //content  -->
		<div class="clear"></div>

		<!-- //footer -->
		
	</div>
	<!-- //wrap -->

</body>
</html>