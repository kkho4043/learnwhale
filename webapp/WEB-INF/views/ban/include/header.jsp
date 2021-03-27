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
			</div>
		</div>
		<!-- //header container-->
	</div>
	<!-- //row -->
</div>
<!-- //header -->
<div class="container">
	<div class="row">
		<div id="top-banner-area" class="col-xs-12">
			<img id="top-banner" <%-- src = "/img/${classInfo.cvo.logoFile}" --%> src="/learnwhale/assets/image/top-banner.jpg">
			<p id="banName" class="text-center">${classInfo.cvo.className}</p>
			<div id="date-area" class="text-center">
				<span class="banDate">${classInfo.cvo.startDate}</span> <span class="banDate"> ~ </span> <span class="banDate">${classInfo.cvo.endDate}</span>
			</div>
		</div>
	</div>
	<!-- //row -->
</div>