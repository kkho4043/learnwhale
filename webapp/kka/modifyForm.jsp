<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 스타일시트 자리 -->
<style>
	.form-text{font-size: 20px; font-weight: 300; color: #008B8B;, line-height: 100px}
	#profile-img {border-radius: 10px;}

</style>

<link href="/learnwhale/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">

		<!-- //header -->

		<div id="content">
			
			
			<div class="container">
				<div id="modifyForm">
					<form action="" method="">

						<h3>내 정보 수정</h3>
						
						<!-- 사진틀 -->
						<img id="profile-img" src="..." alt="..." class="img-rounded">
						
						<!-- 아이디 -->
						<div class="form-group">
							<label class="form-text" for="input-uid">아이디</label> 
							<span class="form-value">userid</span>
						</div>

						<!-- 이름 -->
						<div class="form-group">
							<label class="form-text" for="input-name">이름</label> 
							<span class="form-value">홍길동</span>
						</div>
						
						<!-- 이메일 -->
						<div class="form-group">
							<label class="form-text" for="input-email">이메일</label> 
							<span class="form-value">abc@naver.com</span>
						</div>
						
						<!-- 비밀번호 -->
						<div class="form-group">
							<label class="form-text" for="input-password">비밀번호</label> 
							<span class="form-value">abc@naver.com</span>
						</div>

						<!-- 전화번호 -->
						<div class="form-group">
							<label class="form-text" for="input-phone">전화</label> 
							<input type="text" id="input-phone" name="" value="" placeholder="전화번호를 입력하세요">
						</div>

						<br>
						<!-- 버튼영역 -->
		                <div class="button-area">
		                    <button type="submit" id="btn-submit">수정하기</button>
		                    <button type="submit" id="btn-submit">취소</button>
		                </div>
						
					</form>
				
				
				</div>
				<!-- //modifyForm -->
			</div>
			<!-- //user -->
		</div>
		<!-- //content  -->
		<div class="clear"></div>
		
		<!-- //footer -->
		
	</div>
	<!-- //wrap -->

</body>

</html>