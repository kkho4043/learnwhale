<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

<style>
.contextmenu {
  display: none;
  position: absolute;
  width: 200px;
  margin: 0;
  padding: 0;
  background: #FFFFFF;
  border-radius: 5px;
  list-style: none;
  box-shadow:
    0 15px 35px rgba(50,50,90,0.1),
    0 5px 15px rgba(0,0,0,0.07);
  overflow: hidden;
  z-index: 999999;
}

.contextmenu li {
  border-left: 3px solid transparent;
  transition: ease .2s;
}

.contextmenu li a {
  display: block;
  padding: 10px;
  color: #B0BEC5;
  text-decoration: none;
  transition: ease .2s;
}

.contextmenu li:hover {
  background: #CE93D8;
  border-left: 3px solid #9C27B0;
}

.contextmenu li:hover a {
  color: #FFFFFF;
}
</style>
</head>
<body>
	
	
	
	<ul class="contextmenu">
	  <li><a href="#">Simple link</a></li>
	  <li><a href="#">Link to somewhere</a></li>
	  <li><a href="#">Another link</a></li>
	  <li><a href="#">Link to nowhere</a></li>
	  <li><a href="#">Random link</a></li>
	</ul>
	
	<button id="btn" oncontextmenu="">우클릭</button>
	<script>
		
		$(document).ready(function(){
			
		$("#btn").contextmenu(function(e){
				//window width
			/* if(event.button==2 || event.which == 3){ */
				
				var width = $(document).width();
				var height = $(document).height();
				//pointer position
				var poX = e.pageX;
				var poY = e.pageY;
				//contextmenu size
				var menuWidth = $(".contextmenu").width();
				var menuHeight = $(".contextmenu").height();
				//security margin
				var secMargin = 10;
				
				if(poX + menuWidth + secMargin >= width && 
				   poY + menuHeight + secMargin >= height){
					//case1 : right-bottom overflow
					
					poLeft = poX - menuWidth - secMargin + "px";
					poTop = poY - menuHeight - secMargin + "px";
				}
				else if(poX + menuWidth + secMargin >=width){
					
					poLeft = poX - menuWidth - secMargin + "px";
					poTop = poY + secMargin + "px";
				}
				else if(poY + menuHeight + secMargin >=height){
					
					poLeft = poX + secMargin + "px";
					poTop = poY - menuHeight - secMargin + "px";
				}
				else{
					poLeft = poX + secMargin + "px";
					poTop = poY + secMargin + "px";
				}
				
				$(".contextmenu").css({
					"left": poLeft,
					"top" : poTop
				}).show();
				
			/* } */
				
			//Prevent browser default contextmenu
			
			return false;
	
			});
			
		
			$(document).click(function(){
				$(".contextmenu").hide();
			});
			
			
			
		});
	
		

		
		
	</script>
	
	
</body>
</html>