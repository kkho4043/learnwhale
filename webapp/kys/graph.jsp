<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
	
	<html>

	<head>
	
		<meta charset="UTF-8">
		<title>그래프</title>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		
		<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
		
		<script type="text/javascript">
		
			function draw(){
				
				var canvas = document.getElementById('myChart')
				
				if(canvas.getContext){
					
					var ctx = canvas.getContext('2d');
					
					
					var point = [90, 80, 60];
					var point1 = [90, 80, 70];
					var point2 = [50, 50, 70];
					var point3 = [70, 80, 40];
					
					let pointArr = [point, point1, point2, point3];
					
					let sumArr = new Array;
					
					
					for(let i=0; i<pointArr.length; i++){
						
						var result = pointArr[i].reduce(function add(sum, currValue){
							
							return sum + currValue;
							
						}, 0);
						
						sumArr.push(result/pointArr[i].length);
			
					}
					
					console.log(sumArr);
				
					
					var myChart = new Chart(ctx, {
						
						type: 'bar',
						
						data: {
							labels: ["20년 10월", "20년 11월", "20년 12월", "21년 1월", "21년 2월", "20년 3월"],
							
							datasets: [{
								
								label: '평균점수',
								
								data: sumArr,
								
								backgroundColor: [
									
									'rgba(255, 99, 50, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
					                'rgba(75, 192, 192, 0.2)',
					                'rgba(153, 102, 255, 0.2)',
					                'rgba(255, 159, 64, 0.2)'
								],
								
								borderColor: [
						             'rgba(255,99,132,1)',
						              'rgba(54, 162, 235, 1)',
						              'rgba(255, 206, 86, 1)',
						              'rgba(75, 192, 192, 1)',
						              'rgba(153, 102, 255, 1)',
						              'rgba(255, 159, 64, 1)'
						         ],
								
						         borderWidth: 1
								
							}]
					
					
						},
						
						options: {
							
							responsive: false, 
							scales: {
								
								yAxes: [{
									ticks: {
										beginAtZero:true
									}
								}]
								
							}
						}
						
						
						
					});
					
				}
				
			}	
		

		</script>
		
		<style>	
			canvas {border: 1px solid black;
					width: 720px;
					height: 300px;
					}
			
		</style>
		
	</head>
	
	
	<body onload="draw();">
		
		<div id="wrap"class="container-fluid">
		
			
			<c:import url="/ktu/header.jsp"></c:import>
			<!-- 헤더 -->
		
			<div class="row">
				
			<!-- aside -->
			<c:import url="/ktu/blog-aside.jsp"></c:import>
				
				
				<div class="col-xs-10 body">
					
					<!-- content -->
					<div id="content">
						
						<div>
							<canvas id="myChart"></canvas>
						</div>
								
					</div>
					<!-- content -->	
				
				</div>
					
			</div>
				
			<div class="col-md-xs footer">푸터</div>
			<!-- footer -->	
			
		</div>
		<!-- wrapper -->
	
	
	</body>
	
	
</html>