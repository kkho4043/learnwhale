<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<style>
div.questionList{
	width: 900px;
	height: 1500px;
	float: right;
}
.questionList div{
	width: 30%;
	height:250px;
	overflow:scroll;
	margin: 10px;
	border: 1px;
	
}

</style>
<head>
<meta charset="UTF-8">
<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>
<c:import url="/ktu/head.jsp"></c:import>
</head>
<body>
	<c:import url="/ktu/myclass-side.jsp"></c:import>
	<div class = "questionList">
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
	</div>
	
</body>
</html> 