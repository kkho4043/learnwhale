<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="header-Area" class="container-fluid">
		<div class="row">
			<div id="header" class="container navbar-brand">
				<div class="col-xs-3">
					<img id="logo-img" src="/learnwhale/assets/image/Logo.png">
				</div>

				<div class="col-xs-7">
					<ul class="navbar">
						<li class="nav"><a href="">OVERVIEW</a></li>
						<li class="nav"><a href="">FEATURES</a></li>
						<li class="nav"><a href="">SERVICE</a></li>
						<li class="nav"><a id="myclass" href="">마이클래스</a></li>
					</ul>
				</div>
				
				<div class="col-xs-2 text-right">
					<button id="btnLogin" type="button" class="btn btn-default btn-xs" ><a href="${pageContext.request.contextPath}/loginForm">로그인</a></button>
					<button id="btnJoin" type="button" class="btn btn-default btn-xs" >회원가입</button>
				</div>
			</div>
			<!-- //header container-->
			
		</div>
		<!-- //row -->
	</div>
<!-- //header -->
