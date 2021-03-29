<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<div id="header-Area" class="container-fluid">
	<div class="row">
		<div id="header" class="container navbar-brand">
			<div class="col-xs-3">
				<a href="${pageContext.request.contextPath}/"><img id="logo-img" src="/learnwhale/assets/image/Logo.png"></a>
			</div>

			<div class="col-xs-7">
				<ul class="navbar">
					<li class="nav"><a href="">OVERVIEW</a></li>
					<li class="nav"><a href="">FEATURES</a></li>
					<li class="nav"><a href="">SERVICE</a></li>
					<c:if test="${authUser != null }">
						<li class="nav"><a id="myclass" href="${pageContext.request.contextPath}/myclass/list">마이클래스</a></li>
					</c:if>	
				</ul>
			</div>
			<c:choose>
				<c:when test="${authUser == null }">
					<div class="col-xs-2 text-right">
						<button id="btnLogin" type="button" class="btn btn-default btn-xs">
							<a href="${pageContext.request.contextPath}/user/loginForm">로그인</a>
						</button>
						<button id="btnJoin" type="button" class="btn btn-default btn-xs">
							<a href="${pageContext.request.contextPath}/user/joinForm">회원가입</a>
						</button>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-xs-2 text-right">
						<span style="font-size:13px; padding-right: 7px;">
							${authUser.name}님
						</span>
						<button id="btnJoin" type="button" class="btn btn-default btn-xs">
							<a href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
						</button>
					</div>
				</c:otherwise>
			</c:choose>




		</div>
		<!-- //header container-->

	</div>
	<!-- //row -->
</div>
<!-- //header -->
