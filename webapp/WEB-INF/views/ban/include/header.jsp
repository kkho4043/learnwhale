<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header-Area" class="container">
	<div class="row">
		<div id="header">
			<div class="col-xs-3">
				<img id="logo-img" src="/learnwhale/assets/image/LogoText.png">
			</div>

			<div class="col-xs-9 text-right">
				<span id="loginUserName">${classInfo.joinVo.username} ${classInfo.joinVo.type}</span>
				<button id="btnJoin" type="button" class="btn btn-default btn-xs">
							<a href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
						</button>
			</div>
		</div>
		<!-- //header container-->
	</div>
	<!-- //row -->
</div>
<!-- //header -->
<div class="container">
	<div class="row">
		<div id="top-banner-area" class="col-xs-12" style="height: 220px; overflow: hidden;">
			<img id="top-banner"  style=" width: 100%;height:100%;object-fit:cover;"
			src="${pageContext.request.contextPath}/upload/${classInfo.cvo.logoFile}"
				onerror="this.src='${pageContext.request.contextPath}/assets/image/top-banner.jpg'">
			<p id="banName" class="text-center">${classInfo.cvo.className}</p>
			<div id="date-area" class="text-center">
				<span class="banDate">${classInfo.cvo.startDate}</span> <span class="banDate"> ~ </span> <span class="banDate">${classInfo.cvo.endDate}</span>
			</div>
		</div>
	</div>
	<!-- //row -->
</div>

<script type="text/javascript">
	var session = '';
	$
			.ajax({
				url : '${pageContext.request.contextPath}/sessioncheck',
				type : 'POST',
				data : {},
				success : function(flag) {

					if (flag == false) {
						alert("세션이 만료되어 로그인 창으로 이동합니다");
						location.href = "${pageContext.request.contextPath}/user/loginForm";
					}

				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
</script>