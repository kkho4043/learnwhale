<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



	<head>
	
		<meta charset="UTF-8">
		<title>그래프</title>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		
		<script type="text/javascript">
		
			function draw(){
				
				var canvas = document.getElementById('myChart')
				
				if(canvas.getContext){
					
					var ctx = canvas.getContext('2d');
					
					var myChart = new Chart(ctx, {
						
						type: 'bar',
						
						data: {
							labels: ["20년 10월", "20년 11월", "20년 12월", "21년 1월", "21년 2월", "20년 3월"],
							
							datasets: [{
								
								label: '평균점수',
								
								data: [70, 80, 60, 55, 56, 77.4],
								
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
		
		<div>
			<canvas id="myChart"></canvas>
		</div>
		
		
	
	
	</body>
	
	
</html>