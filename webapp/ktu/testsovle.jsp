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
	padding: 50px;
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
	height: 500px;
	border: 1px solid black;
	margin: 10px;
}

.prolist ul {
	text-align: center;
}

.prolist ul li {
	margin: 20px;
	font-size: 20px;
}

.prolistbtn {
	padding: 0px 0px 0px 12px;
}
</style>

</head>
<body>

	<div class="tList col-xs-10">
		<div class="row">
			<div class="col-xs-10">
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

				<div class="row protype">
					
					<div class="shortanswer">
						<textarea></textarea>
						<input type="file">
					</div>
					
					<!-- <div class="OX"> 
						<div id ="O">O</div>
						<div id ="X">X</div>
					</div>  OX -->
				
					<!-- <div class="multiple"> 
						<div class="row">
							<input type="button" value="1"><span>유관순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순순</span>
						</div>
						<div class="row">
							<input type="button" value="2"><span>이순신</span>
						</div>
						<div class="row">
							<input type="button" value="3"><span>강호동</span>
						</div>
						<div class="row">
							<input type="button" value="4"><span>세종대왕</span>
						</div>
					</div> 객관식 -->
				</div>

				<div class="row">
					<div class="col-xs-2">
						<input type="button" value="이전문제">
					</div>
					<div class="col-xs-8"></div>
					<div class="col-xs-2">
						<input type="button" value="다음문제">
					</div>
				</div>


			</div>

			<div class="col-xs-2">
				<div class="row">
					<div class="prolist">
						<ul>
							<li>1번</li>
							<li>2번</li>
							<li>3번</li>
							<li>4번</li>
							<li>5번</li>
							<li>6번</li>
							<li>7번</li>
							<li>8번</li>
							<li>9번</li>
							<li>10번</li>
						</ul>

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