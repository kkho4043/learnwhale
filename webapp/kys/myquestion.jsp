<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>나의 성적 테이블</title>
		
		<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
		
		
		
		<style>
			#board #gradeBoard {width:720px;
							   		 
							   	}
		
			#board #gradeBoard thead {background-color:#a8ccda;	 
									 }
									 
			#search {display:flex;
					}
									 
			
			.row{padding-top:15px;
				 margin-left:auto;	
				 }
			
			#page {text-align:center;
					width:720px;}
			
									 
		</style>
		
			
	</head>
	
	<body>
	
		<!-- content -->
		
		<div id= "content" style="width:750px;">
	
	
			<!-- search -->
			<div id="search" style="width:720px;">
				
				<h3>전체 푼 문제들</h3>
				
				<div class="row">
				  
				  <div class="col-lg-6">
				    <div class="input-group">
				      <input style= "width:250px;" type="text" class="form-control" placeholder="Search for...">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button">검색</button>
				      </span>
				    </div><!-- /input-group -->
				  </div><!-- /.col-lg-6 -->
				  
				</div>
				
			</div>	
			<!-- search -->
			
			<!-- board -->
			
			<div id="board">
			
				<table id="gradeBoard" class="table table-bordered table-hover">
					
					<thead>
						<tr>
							<td>반이름</td>
							<td>문제 이름</td>
							<td>문제 유형</td>
							<td>제출날짜</td>
							<td>점수</td>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>하이미디어 a반</td>
							<td>데이터형2</td>
							<td>쪽지시험</td>
							<td>(진행중)</td>
							<td>-</td>
						</tr>
						<tr>
							<td>하이고 3-1반(수학)</td>
							<td>속도</td>
							<td>시험</td>
							<td>20.12.14</td>
							<td>85</td>
						</tr>
						<tr>
							<td>시원스쿨 영어</td>
							<td>수동태</td>
							<td>쪽지시험</td>
							<td>21.02.13</td>
							<td>80</td>
						</tr>
						<tr>
							<td>하이고 3-2반 과학</td>
							<td>빛과 속력</td>
							<td>숙제</td>
							<td>21.02.14</td>
							<td>90</td>
						</tr>
						<tr>
							<td>하이고 3-2반 영어</td>
							<td>관계대명사</td>
							<td>쪽지시험</td>
							<td>21.2.14</td>
							<td>90</td>
						</tr>
					</tbody>
					
				</table>
		
			</div>
			<!-- board -->
			
			<!-- page -->
			<nav id="page">
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li style="margin-right:40px;"><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
			</nav>
			<!-- page -->
			
	
		</div>	
		<!-- content -->
	
	
	</body>
		
	
	
</html>