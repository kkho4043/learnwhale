<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		
		<title>Insert title here</title>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
		
		<style>
		
			* {margin:0; 
			   padding:0;
			   }
			
			ul {width: 1000px;}
			li {list-style: none;}
			
			   
			/* ul, li {list-style:none;}
			
			.slide{height:150px; overflow: hidden;}			   
			.slide ul {height:100%;}
			.slide li {height:100%;}
			
			 CSS :nth-child() 클래스는 형제 사이에서의 순서에 따라 요소를 선택합니다. 
			 li:nth-child(2)라 함은 아래를 예로 들면 아래의 네 개의 리스트에서 두번째 리스트를 의미한다
			
			.slide li:nth-child(1){background:#faa;}
		    .slide li:nth-child(2){background:#afa;}
		    .slide li:nth-child(3){background:#aaf;}
		    .slide li:nth-child(4){background:#faf;} 
		    
		    */
		    
		    li img {width: 80%; height: 400px;
		    		}
		    
		      
		</style>
	</head>
	
	<body>
		
	
			<div>
			
				<ul class="bxslider">
					<li><img src="${pageContext.request.contextPath}/kys/whale1.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/kys/whale2.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/kys/whale3.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/kys/whale4.jpg"></li>	
				</ul> 
				
			</div>


	</body>
	
	<script type="text/javascript">
		
		$(document).ready(function(){
			
			$('.bxslider').bxSlider({
				auto:true,
				speed:500,
				pause:2000,
				mode:'horizontal',
				autoControls:true,
				pager:true,
				captions:true
			});
			
			
		});
		
		
	
	
	</script>
	
	
</html>