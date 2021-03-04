<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>

</head>
<body>
	<div id="Creat-Title">
			<h1 style="text-align: center">문제 작성지</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8" style="text-align: center; border: 1px solid black; padding: 0px;">
				<div class="col-sm-4" style="text-align: center;"><button type="button" class="btn btn-warning">객관식</button></div>
				<div class="col-sm-4" style="text-align: center;"><button type="button" class="btn btn-info">OX문제</button></div>
				<div class="col-sm-4" style="text-align: center;">
				<button type="button" class="btn btn-success">주관식</button>
			</div><br>
				
				<div class="col-sm-12" style="margin:10px; text-align: right;">
					<select id="asdasd" name="time" >
				    	<option value="none">시간 선택</option>
				    	<option value="10">10초</option>
				    	<option value="15">15초</option>
				    	<option>20초</option>
				    	<option>30초</option>
					</select>
					<select name="point" >
				    	<option value="none">점수 선택</option>
				    	<option>5점</option>
				    	<option>10점</option>
				    	<option>15점</option>
				    	<option>20점</option>
					</select>
				 </div><br><br>
				
				<div class="col-sm-12" style="text-align: center;">
					<form>
					  <div class="form-group">
					 	<label for="exampleInputTitle1">문제를 작성</label>
					    <input type="text" class="form-control" placeholder="문제 제목을 입력해주세요."><br>
					    <input type="text" class="form-control" placeholder="문제를 입력해주세요."><br>
					    <input type="text" class="form-control" placeholder="이미지를 넣어주세요.">
					    <input type="file"><br>
					    <input type="text" class="form-control" placeholder="정답에 대한 설명을 넣어주세요.">
					  </div><br>
					  <div>
					  	
					  	<label style="font-size: 100px; color: blue; margin:0px 0px 0px 200px; float: left">O</label>
					  </div>
					  <div>
					  	<label style=" margin: 0px 150px 0px 0px; float: right;">정답을 선택해주세요</label>
					  	<input type="radio" style="margin:0px 227px 0px 0px; float: right;">
					  	<label style="font-size:100px; color: red; margin:0px 200px 0px 0px; float: right">X</label>
					  </div>
					  <br><br><br><br>
					</form>
				</div>s
				
				
				<div class="col-sm-6" style="text-align: center;">
					<button type="button" class="btn btn-primary">임시저장</button>
				</div>
				<div class="col-sm-6" style="text-align: center;">
					<button type="button" class="btn btn-primary">저장하기</button>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>

</body>
</html>