<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="left-area" class="col-xs-2">
	<div id="profile-area">
		<div id="profile-img">
			<img src="${pageContext.request.contextPath}/upload/${classInfo.cuVo.proFile}"
			onerror="this.src='${pageContext.request.contextPath}/assets/image/profile.jpg' " class="img-thumbnail">
		</div>
		<p id="teacherName" class="text-center">
		
			<span>${classInfo.cuVo.name}</span><span>(${classInfo.cuVo.id})</span> 선생님
		</p>
		<p class="profile-text">이메일:${classInfo.cuVo.email}</p>
		<p class="profile-text last">연락처:${classInfo.cuVo.phoneNum}</p>
		<c:if test="${classInfo.joinVo.type == null}">
			<button type="button" class="btn btn-primary btn-sm btn-block" id = "classjoinbtn">가입신청</button>
		</c:if>
		
	</div>

	<div id="menu-area">
		<ul>

			<li><span class="glyphicon glyphicon-stop"></span><a href="${pageContext.request.contextPath}/${url}/">시험관리</a></li>
			<li><span class="glyph glyphicon glyphicon-stop"></span><a href="${pageContext.request.contextPath}/${url}/student/list">학생관리</a></li>
			<li><span class="glyphicon glyphicon-stop"></span><a href="${pageContext.request.contextPath}/${url}/report/list">성적관리</a></li>
			<li class="last"><span class="glyphicon glyphicon-stop"></span><a href="${pageContext.request.contextPath}/${url}/notice/list">공지사항</a></li>

		</ul>
	</div>
</div>
<script type="text/javascript">
$("#classjoinbtn").on("click", function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/${url}/exam/classjoin",
		type : "post",
		//contentType : "application/json",
		data : {},
		success : function(flag) {
			if(flag){
				alert('가입신청이 완료 되었습니다.');
			}
			
			/* location.href = "http://www.example.com/ThankYou.html" */
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}

	});

	
	
});
</script>