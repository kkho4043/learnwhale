<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../../assets/css/mysite.css" rel="stylesheet" type="text/css">
<link href="../../assets/css/user.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">

		<!-- //header -->

		<div id="content">
			
			<div id="content-head">

            	<div id="location">
            		<ul>
            			<li>내가 만든 문제</li>
            			<li>내 반 리스트</li>
            			<li>내 정보 수정</li>
            		</ul>
            	</div>

            </div>
             <!-- //content-head -->

			<div id="user">
				<div id="modifyForm">
					<form action="" method="">

						<h3>내 정보 수정</h3>
						
						<!-- 사진틀 -->
						<div class="img" style="weight:200px; height:200px;">Image</div>
						
						<!-- 아이디 -->
						<div class="form-group">
							<label class="form-text" for="input-uid">아이디</label> 
							<span class="text-large bold">userid</span>
						</div>

						<!-- 이름 -->
						<div class="form-group">
							<label class="form-text" for="input-name">이름</label> 
							<span class="text-large bold">홍길동</span>
							<button type="submit" id="btn-submit">수정하기</button>
						</div>
						
						<!-- 이메일 -->
						<div class="form-group">
							<span class="form-text" for="input-email">이메일</label> 
							<span class="text-large bold">abc@naver.com</span>
							<button type="submit" id="btn-submit">수정하기</button>
						</div>
						
						<!-- 비밀번호 -->
						<div class="form-group">
							<label class="form-text" for="input-password">비밀번호</label> 
							<input type="password" id="" name="" value="" placeholder="">
							<button type="submit" id="btn-submit">수정하기</button>
						</div>

						<!-- 전화번호 -->
						<div class="form-group">
							<label class="form-text" for="input-phone">전화</label> 
							<input type="text" id="input-phone" name="" value="" placeholder="전화번호를 입력하세요">
							<button type="submit" id="btn-submit">저장하기</button>
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