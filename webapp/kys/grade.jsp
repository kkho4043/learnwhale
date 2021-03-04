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
			#content {width:720px;
					  }
			
			#dropdown {display:flex;
					   
					   }
			
			.dropdown {margin-left:auto;
						padding-top: 17px;}
			
			#board #gradeBoard {width:720px;
							   		 
							   	}
		
			#board #gradeBoard thead {background-color:#a8ccda;	 
									 }
									 
									 
									 
		</style>
		
			
	</head>
	
	<body>
		
		<!-- content -->
		<div id="content">
			
			<div id="dropdown">
				
				<h3>3월 전체 성적 평균</h3>
				<!-- dropdown -->
				<div class="dropdown">
				  
				  <ul class="list-unstyled list-inline">
				  	
				  	<li>  
					 
					  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="true">
					   	유형
					    <span class="caret"></span>
					  </button>
					  
					  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu2">
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">쪽지시험</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">숙제</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">시험</a></li>
					    
				  	  </ul>
				  	  
				  	</li>
				  	
				  	
				  	<li>
					  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					   	월선택
					    <span class="caret"></span>
					  </button>
					  
					  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					  
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">1월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">2월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">3월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">4월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">5월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">6월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">7월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">8월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">9월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">10월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">11월</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">12월</a></li>
					    
					  </ul>
					</li>
							  	
				  </ul> 
				 
				</div>
				<!-- dropdown -->
			</div>
			
			<!-- board -->
			<div id="board">
			
				<table id="gradeBoard" class="table table-bordered table-hover">
					
					<thead>
						<tr>
							<td>반이름</td>
							<td>반 점수 평균</td>
							<td>내 점수 평균</td>
							<td style="width:60px;">등수</td>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>풀스택A</td>
							<td>74.5</td>
							<td>80.5</td>
							<td>5</td>
						</tr>
						<tr>
							<td>최강수학</td>
							<td>82.5</td>
							<td>70.5</td>
							<td>3</td>
						</tr>
						<tr>
							<td>시원스쿨 영어</td>
							<td>60.5</td>
							<td>40.5</td>
							<td>9</td>
						</tr>
						<tr>
							<td>3-2반 과학</td>
							<td>55.5</td>
							<td>50</td>
							<td>9</td>
						</tr>
						<tr>
							<td>3-2반 수학</td>
							<td>70.6</td>
							<td>80</td>
							<td>4</td>
						</tr>
					</tbody>
					
				</table>
		
			</div>
			<!-- board -->
			
		</div>
		<!-- content -->
	
	
	</body>
		
	
	
</html>