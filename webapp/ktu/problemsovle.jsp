<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/kka/blog.jsp"></c:import>
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<style>
.tList {
	width: 800px;
	border: 1px solid black;
	height: 700px;
	padding: 50px 20px 50px 50px;
	border: 1px solid black;
}

.protitle div {
	margin: 0px;
	padding: 0px;
}

.testimg {
	height: 200px;
	background-color: blue;
}

.protype{
	height: 300px;
}


.protype .multiple div {
	margin: 10px;
}
.protype .OX{
	margin:25px 0px 0px 100px;
}

.protype .OX div {
	margin : 25px;
	height: 150px;
	width: 150px;
	float: left;
}

#O{
	background-color: #62B5F8;
}

#X{
	background-color: #F54F40;
}

.shortanswer{
	margin-top: 50px;
	padding-left: 50px;
}
.shortanswer textarea{
	width: 500px;
	height: 150px;
}
.prolist {
	height: 450px;
	border: 1px solid black;
	
}

.prolist table {
	
}

.prolist table th{
	text-align :center;
}
.prolist table td {
	text-align :center;
	margin-top : 5px;
	font-size: 17px;
}

.answer{
	border: solid 6px green;
}
.givescore{
	padding-left: 250px;
}
.givescore input[type=text]{
	width: 40px;
}

.prolistbtn {
	padding: 5px 0px 0px 50px;
}
</style>

</head>
<body>

	<div class="tList col-xs-10">
		<div class="row">
			<div class="col-xs-9">
				<div class="row protitle">
					<div class="col-xs-1">2번</div>
					<div class="col-xs-8">다음인물은 가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가누구인가</div>
					<div class="col-xs-1">(5점)</div>
					<div class="col-xs-1"></div>
					<div class="col-xs-1">30초 타이머</div>
				</div>
				<div class="row">
					<div class="testimg">
						<img src="#">

						<!--  <input type="button" value="첨부파일">  -->
					</div>
				</div>
				<div class="row">정답 : 이게답.</div>
				<div class="row">입력한답 :</div>
				<div class="row protype">
					
					<!-- <div class="shortanswer row">
						<textarea>이게 답이라 하였다.</textarea>
						<a href="#" download><button>첨부파일 받기</button></a>
					</div>  주관식 -->
					
					<!-- <div class="OX row"> 
						<div id ="O">O</div>
						<div id ="X" class ="answer">X</div>
					</div> OX-->
				
					<div class="multiple row"> 
						<div class="row">
							<input type="button" value="1"><span>유관순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순</span>
						</div>
						<div class="row">
							<input type="button" value="2" class="answer"><span>이순신</span>
						</div>
						<div class="row">
							<input type="button" value="3"><span>강호동</span>
						</div>
						<div class="row">
							<input type="button" value="4"><span>세종대왕</span>
						</div>
					</div>
					
					<div class= "givescore"><span>점수</span> <input type="text" value = "0"><span>/ 5</span></div>
				</div>

				<div class="row">
					<div class="col-xs-5"></div>
					<div class="col-xs-2">
						<input type="button" value="점수 부여 확인">
					</div>
					<div class="col-xs-3"></div>
					<div class="col-xs-2">
						<input type="button" value="리스트">
					</div>
				</div>


			</div>

			<div class="col-xs-3">
				<div class="row">
					<div class="prolist">
						<table border="1" class = "table">
							<tr>
								<th>번호</th>
								<th>오답여부</th>
								<th>상태</th>
							</tr>
							
							<tr>
								<td>1</td>
								<td>O</td>
								<td>OX</td>
							</tr>
							
							<tr>
								<td>2</td>
								<td>△</td>
								<td>주관식</td>
							</tr>
							
							<tr>
								<td>3</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							<tr>
								<td>4</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							<tr>
								<td>5</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							<tr>
								<td>6</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							<tr>
								<td>7</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							<tr>
								<td>8</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							
							<tr>
								<td>9</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
							
							<tr>
								<td>10</td>
								<td>X</td>
								<td>객관식</td>
							</tr>
						
						</table>

					</div>

				</div>
				<div class="row prolistbtn">
					<input type="button" value="이전"> <input type="button" value="다음">
				</div>
			</div>
		</div>


	</div>


</body>
</html>