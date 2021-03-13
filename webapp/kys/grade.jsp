<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>나의 성적 테이블</title>
		
		<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
		
		
		
		<style>
			#content {width:910px;
					  }
			
			#wrap {display: flex;
				   width: 900px;
				  }
			
			
			#studentList {background-color: #94B1CF;
						  width: 400px;
						  height: 500px;
						  margin: 20px 15px 0 0;
						  color: #D0DFF0; 
						 }
			
			#studentList ul {list-style: none;
							 padding: 20px 0 0 0;
							
							 }
			#studentList h4 {margin-top:20px;
							}
			
			
			
			h2 {font-size: 28px;
			   }
			
			.glyphicon {font-size: 19px;
					    padding-right: 8px;
						}
			
			#board {width: 720px;}
			
			#boardHeader {display:flex;
					   	  height: 60px;
					     }
			
			#boardHeader ul {list-style:none;
							 padding-top: 30px;
							}
			
			#boardHeader .row {margin-left:auto;
				  padding-top: 17px;
				  }
			
			#search-box {width: 226px;
						  }
			
			#board #gradeList {width:720px;
							   		 
							   	}
		
			#board #gradeList thead {background-color:#a8ccda;	 
									 }
									 
									 
									 
		</style>
		
			
	</head>
	
	<body>
		
		<div class="container-fluid">
		
			
			<c:import url="/ktu/header.jsp"></c:import>
			<!-- 헤더 -->
			
				
			<!-- aside -->
			<c:import url="/ktu/blog-aside.jsp"></c:import>
				
				
				<div class="col-xs-10 body">
					
					<!-- content -->
					<div id="content">
						
						<!-- wrap -->
						<div id="wrap">
						
							<div id="studentList">
								
								<h4>학생리스트</h4>
								
								<ul>
									<a href="#"><li>1> 강용수</li></a>
									<a href="#"><li>2> 강용수</li></a>
									<a href="#"><li>3> 강용수</li></a>
									<a href="#"><li>4> 강용수</li></a>
									<a href="#"><li>5> 강용수</li></a>
									<a href="#"><li>6> 강용수</li></a>
									<a href="#"><li>7> 강용수</li></a>
									<a href="#"><li>8> 강용수</li></a>
									<a href="#"><li>9> 강용수</li></a>
								</ul>
									
							</div>
							
							<div id="myGrade">
							
							<h2><span class="glyphicon glyphicon-paperclip"></span> 성적관리</h2>
							
								<!-- search -->
								<div id="boardHeader">
								
									<ul class="list-inline">
										<li>전체</li>
										<li>쪽지</li>
										<li>과제</li>
										<li>시험</li>
									</ul>
								
								
									<div class="row">
									  
									  <div class="col-lg-6">
									    <div class="input-group">
									      <input type="text" class="form-control" id="search-box" placeholder="Search for...">
									      <span class="input-group-btn">
									        <button class="btn btn-default" type="button">Go!</button>
									      </span>
									    </div><!-- /input-group -->
									  </div><!-- /.col-lg-6 -->
									  
									</div><!-- /.row -->
									
								</div>
								<!-- search -->
								
								
								<!-- board -->
								<div id="board">
								
									<table id="gradeList" class="table table-bordered table-hover">
										
										<thead>
											<tr>
												<td>번호</td>
												<td>시험제목</td>
												<td>점수</td>
												<td>문항수</td>
												<td>시작일</td>
												<td>종료일</td>
												<td>상태</td>
												<td>유형</td>
											</tr>
										</thead>
										
										<tbody>
											<tr>
												<td>30</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>29</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>28</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>27</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>26</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>25</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>24</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>23</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
											</tr>
											<tr>
												<td>22</td>
												<td>자바 연산자 테스트</td>
												<td>80점</td>
												<td>10</td>
												<td>2020-01-05</td>
												<td>2020-01-05</td>
												<td>진행중</td>
												<td>쪽지시험</td>
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
							<!-- myGrade -->
						
						</div>
						<!-- wrap -->
						
					</div>
					<!-- content -->
								
				</div>
						
			</div>
						
			<div class="col-md-xs footer">푸터</div>
			<!-- footer -->
		
	</body>
		
	
	
</html>