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
			
			#wrap {width: 900px;
				  }
				  
			#content-title .glyphicon {font-size: 19px;
							    	   padding: 25px 8px 0px 0px;
									   }
			
			#content-title h2 {font-size: 28px;
							   }
			
			#content-title {display: flex;
			   				}
			
			#content-body{display: flex;
						 }
			
			#studentList {background-color: #94B1CF;
						  width: 150px;
						  height: 500px;
						  margin: 20px 15px 0 0;
						  color: #D0DFF0;
						   
						 }
			
			#studentList ul {list-style: none;
							 padding: 5px 0 0 0;
							
							 }
			
			#studentList ul li {padding-top: 15px;}
							 
			#studentList h4 {margin-top:20px;
							}
			
			#board {width: 720px;}
			
			#boardHeader {width:720px; 
						  height: 100px;
						  background: #F4EBDD;
						  margin-top: 20px;
						  }
			
			#boardHeader h3 {font-size: 18px;
							 float: left;
							 width: 370px;
							 padding-right: 160px;
							}
			
			#boardHeader .list-inline{font-weight: 560;
									  font-size: 15px;
									  float: left;
									  padding: 15px 0 0 10px;
							  		  }
			
			#boardHeader #total {width:100px;
								 height:100px;
								 background: #D0DFF0;;
								 display: inline-block;
								 float: right;
								 margin-right: 10px;
								 }
			
			#boardHeader #total ul {list-style: none;
								    padding: 0 0 0 0;
								    font-size: 16px;
								    font-weight: 560;
								    }
			
			#boardHeader #total ul li:nth-child(1) {padding-top: 20px;
												   }
			
			#boardHeader #total ul li:nth-child(2) {padding-top: 10px;
													}
			
			
			#searchForm {display:flex;
					   	 height: 60px;
					     }
			
			#searchForm .btn-group {padding-top: 20px;
									}
			
			#searchForm .btn-group ul {padding-top: 10px;
										}
			
			#searchForm ul {list-style:none;
							 padding-top: 30px;
							}
			
			#searchForm .row {margin-left:auto;
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
						
							<div id="content-title">
								<span class="glyphicon glyphicon-menu-hamburger"></span><h2> 성적관리</h2>
							</div>
						
						<!-- body-wrap -->
							<div id="content-body">
						
							<div id="studentList">
								
								<h4>학생리스트</h4>
								
								<ul>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
									<li><a href="#">강용수</a></li>
								</ul>
									
							</div>
							
							<div id="myGrade">
							
							<div id="boardHeader">
								<h3>정우성님 성적 평균점수</h3>
								
								<div id="total">
									<ul>
										<li>종합</li>
										<li>80점</li>
									</ul>
								</div>
								
								<ul class="list-inline text-left">
									<li>쪽지:  60점</li>
									<li>과제:  70점</li>
									<li>시험:  100점</li>
								</ul>
								
							</div>
							
								<!-- search -->
								<div id="searchForm">
									
									<!-- Single button -->
									<div class="btn-group">
									  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									    전체 <span class="caret"></span>
									  </button>
									  <ul class="dropdown-menu" role="menu">
									    <li><a href="#">전체</a></li>
									    <li><a href="#">쪽지시험</a></li>
									    <li><a href="#">과제</a></li>
									    <li><a href="#">시험</a></li>
									  </ul>
									</div>
								
									<!-- <ul class="list-inline">
										<li><a href="#">전체</a></li>
										<li>|</li>
										<li><a href="#">쪽지</a></li>
										<li>|</li>
										<li><a href="#">과제</a></li>
										<li>|</li>
										<li><a href="#">시험</a></li>
									</ul> -->
								
								
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
						<!-- content-body -->
						
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