<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<style>

h1 {
	text-align: center;
}

.row {
	width: 100%;
	height: 600px;
	float: left;
	border: solid 1px gray;
	height: 600px;
}

.myclassSide1 {
	border-left: solid 1px gray;	
}

.myclassSide2 {
	height:33.333333%;
}

.myclassSide2>div {
	display: flex;
	height: 100%;
	
	align-items: center;
	border: solid 1px gray
}
.myclassSide2>div>h4 {
	width:100%;
	text-align:center;
}
</style>

	
		<div class="col-md-2 myclassSide1">
	    <h2>내 반 리스트</h2>
		<ul>
			<li>하이미디어 a반</li>
			<li>하이고 1반</li>
			<li>하이고 수학</li>
		</ul>
  		</div>
  		
  		<div class="col-md-2 myclassSide2">
			<div><h3>내가만든 문제</h3></div>
			<div><h3>내 반 리스트</h3></div>
			<div><h3>내 정보 수정</h3></div>
  		</div>
		
  		

</html>