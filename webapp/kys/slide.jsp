<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		
		<title>Insert title here</title>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

		
		<style media="screen">
			
			*{margin:0; padding:0;}
		
			.slide {width:1000px;
					height: 500px;
					overflow: hidden;
					position: relative;
					margin: 0 auto;
					}
			
			.slide ul {width:4000px;
					   position: absolute;
					   top:0;
					   left:0;
					   font-size:0;}
				
			.slide ul li {display: inline-block;
						  }
			
			.slide ul li img {width:1000px;
							  height:500px;
							  }
			
			
			
		</style>
		
		
	</head>
	
	<body>
		
		<div class="slide">
			<ul>
				<li><img src="${pageContext.request.contextPath}/kys/whale1.jpg"></li>
				<li><img src="${pageContext.request.contextPath}/kys/whale2.jpg"></li>
				<li><img src="${pageContext.request.contextPath}/kys/whale3.jpg"></li>
				<li><img src="${pageContext.request.contextPath}/kys/whale4.jpg"></li>	
			</ul> 
		</div>
		
		
		
	</body>
	
	<script type="text/javascript">
		$("document").ready(function(){
			
		})
	</script>
	
	
	
</html>