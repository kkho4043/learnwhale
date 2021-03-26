<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="left-area" class="col-xs-2">
	<div id="profile-area">
		<div id="profile-img">
			<img src="/learnwhale/assets/image/profile.jpg" class="img-thumbnail">
		</div>
		<p id="teacherName" class="text-center">
			<span>정우성</span><span>(abcde)</span> 강사님
		</p>
		<p class="profile-text">이메일:abced@gmail.com</p>
		<p class="profile-text last">연락처:010-9999-9999</p>

		<button type="button" class="btn btn-primary btn-sm btn-block">가입신청</button>
	</div>

	<div id="menu-area">
		<ul>
			<li><span class="glyphicon glyphicon-stop"></span>시험관리</li>
			<li><span class="glyphicon glyphicon-stop"></span>학생관리</li>
			<li><span class="glyphicon glyphicon-stop"></span>성적관리</li>
			<li class="last"><span class="glyphicon glyphicon-stop"></span><a href="${pageContext.request.contextPath}/notice/list">공지사항</a></li>
		</ul>
	</div>
</div>