<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="left_menu" class="col-xs-2">
	<div id="left_menu_title" class="text-center">마이클래스</div>
	<div class="left_menu_se">
		<ul>
			<li><a href="${pageContext.request.contextPath}/myclass/list">반관리</a>
			<li><a href="${pageContext.request.contextPath}/myclass/category/problemList">문제관리</a></li>
			<li class="last"><a href="">개인정보관리</a></li>
		</ul>
	</div>
</div>
<!-- //header -->