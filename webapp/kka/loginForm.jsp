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
				<div id="loginForm">
					<form action="" method="">

						<h2>로그인</h2>
						
						<!-- 아이디 -->
						<div class="form-group">
							<label class="form-text" for="input-uid">아이디</label> 
							<input type="text" id="input-pass" name="" value="" placeholder="아이디를 입력하세요">
						</div>
						
						<!-- 비밀번호 -->
						<div class="form-group">
							<label class="form-text" for="input-pass">비밀번호</label> 
							<input type="text" id="input-pass" name="" value="" placeholder="비밀번호를 입력하세요">
						</div>

						<!-- 버튼영역 -->
		                <div class="button-area">
		                    <button type="submit" id="btn-submit">로그인</button>
		                    <button type="submit" id="btn-submit">회원가입</button>
		                </div>
						
					</form>
				
				</div>
				<!-- //loginForm -->
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