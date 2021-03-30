<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="left_menu" class="col-xs-2">
	<div id="left_menu_title" class="text-center">마이클래스</div>
	<div class="left_menu_se">
		<ul>
			<li><a href="${pageContext.request.contextPath}/myclass/problem/problemList">문제관리</a></li>
			<li><a href="${pageContext.request.contextPath}/myclass/list">반관리</a>
			<li class="last"><a href="">개인정보관리</a></li>
		</ul>
	</div>
</div>
<!-- //header -->

<script type="text/javascript">

$("document").ready(function(){
	fetchList();
			
});
function fetchList(){
	
	$(".child-folder a").on("click", function(e){
		e.preventDefault();
		
		var html = $("#problemList").html();	

		if(html != null){
			
			$("#problemList").empty();
		}
					
		let cateNo = $(this).data("cate");
		history.pushState(null, null, 'problemList?cateNo='+cateNo);
		document.getElementById("cateNosave").value = cateNo;
		console.log("카테로리 클릭");
		$.ajax({
			url: "${pageContext.request.contextPath}/myclass/problem/cateproblem",
			type: "get",
			dataType : "json",
			data : {"cateNo" : cateNo},
			
			success : function(proList){
				
				for(var i=0; i<proList.length; i++){
					
					render(proList[i]);
				}
			},
			
			error: function(XHR, status, error){
				console.log(status+ ":" + error);
	
			}
		});
			
		
	});
	
};


function render(proVo){
		
	let html = 		"<tr id='tr-center'>";
	html += 			"<th>"+proVo.problemNo+"</th>";
	html += 			"<th><a href='${pageContext.request.contextPath}/myclass/problem/creating-ViewForm?proNo="+proVo.problemNo+"'>"+proVo.problemTitle;
	html +=				"</a></th>";
	html += 			"<th>"+proVo.type+"</th>";
	html += 			"<th>"+proVo.regDate+"</th>";
	html += 			"<td>";
	html +=					"<button class='btn btn-primary btn-xs delete-Btn' data-title='"+proVo.problemTitle+"'>이동</button>";	
	html +=					"<button class='btn btn-danger btn-xs move-Btn'>삭제</button>";
	html += 			"</td>";
	html += 		"</tr>";

	$("#problemList").append(html);
}

</script>