<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/intro.css" rel="stylesheet" type="text/css">


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/home/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<div>
		<section class="video" id="video">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-head" style="margin-top: 45px;">
							<span class="underline"></span>
							<p class="contents_title">Overview</p>
							<p class="contents_subtitle">learnwhale 소개</p>
						</div>
					</div>
					<div class="col-md-8" style="width: 49.3%;">
						<img src="${pageContext.request.contextPath}/assets/image/intro/ov_img.png" class="ov_img">
					</div>
					<div class="col-md-4" style="width:47%; margin-left: 17px;">
						<div class="content">
	
							<p class="mon ov_p">			
								"Sign Up"
								<span class="sub_span" style="margin-left: 17px;">무료 회원가입으로,</span>
							</p>
	
							<p class="mon ov_p">
								"Create"
								<span class="sub_span" style="margin-left: 17px;">다양한 형태의 퀴즈를 제작하고,</span>
							</p>
							<p class="mon ov_p">
								"Share"
								<span class="sub_span" style="margin-left: 17px;">함께 공유하여</span>
							</p>
							<p class="mon ov_p">
								"Play"
								<span class="sub_span" style="margin-left: 17px;">즐거운 시간을 경험하세요.</span>
							</p>
							<p style="color: #555; margin-top: 20px;">
								"누구든 퀴즈쇼를 제작하고,상호작용하며 게임에 참여할 수 있으며,​​​ 지루했던 수업이나 공간에 몰입감과 성취감을 불어넣을 수 있습니다.
								<br>
								런웨일은 교실수업, 마이크로러닝, 원격교육, 마케팅(이벤트& 프로모션), 취미모임, 각종 초대장 등 게이미피케이션(Gamification)이 필요한 ​다양한 분야에서 활용하실 수 있습니다.​
								"				
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="features" id="">
			 <div class="container" style="padding:0;">
			  	<div class="row">
					<div class="col-md-12">
						<div class="section-head" style="margin-top: 37px;">
							<span class="underline"></span>
							<p class="contents_title">Features</p>
							<p class="contents_subtitle">learnWhale의 주요 기능</p>
						</div>
					</div>
				</div>
		
		
				<!-- feature -->
				<div class="row">
					<div >
						
						<!-- 왼쪽 -->
						<div class="col-md-4" style="margin-left: 158px;">
							<div class="features-left">
								<div class="feature">
									<div class="icon-container">
										<div class="icon">
											<i class="fa">
												<img src="${pageContext.request.contextPath}/assets/image/intro/f_icon01.png">
											</i>
										</div>
									</div>
									<div class="fetaure-details">
										<div style="color: #37b8bf; font-size: 21px; font-weight: 400;">Very Easy</div>
										<p style="margin-top: 8px;">
										몇 분만 투자하면&#8203;
										<br>
										손쉽게 퀴즈를 ​ 출제할 수 있습니다.	
										</p>
									</div>
								</div>
								<div class="feature">
									<div class="icon-container">
										<div class="icon">
											<i class="fa">
												<img src="${pageContext.request.contextPath}/assets/image/intro/f_icon02.png">
											</i>
										</div>
									</div>
									<div class="fetaure-details">
										<div style="color: #37b8bf; font-size: 21px; font-weight: 400;">Easy​ Connect</div>
										<p style="margin-top: 8px;">
										URL 또는 PIN 번호만 있으면 끝!
										<br>
				                      	학생들과 쉽게 소통하세요
										</p>
									</div>
								</div>
							</div>
						</div>
						<!-- //왼쪽 -->
						
						<!-- 중간 -->
						<div class="col-md-1">
							<figure class="image-features">
								<div class="f_bg_wrap">
									<div class="">
										
									</div>
								</div>
							</figure>
						</div> 
						
						<!-- 오른쪽 -->
						<div class="col-md-4">
							<div class="features-left">
								<div class="feature">
									<div class="icon-container">
										<div class="icon">
											<i class="fa">
												<img src="${pageContext.request.contextPath}/assets/image/intro/f_icon03.png">
											</i>
										</div>
									</div>
									<div class="fetaure-details">
										<h4 style="color: #37b8bf; font-size: 21px; font-weight: 400;">Options & Upgrade​</h4>
										<p style="margin-top: 8px;">
										진행방식에 대한 업그레이드가
										<br>
										 지속될 예정입니다.
										</p>
									</div>
								</div>
								<div class="feature">
									<div class="icon-container">
										<div class="icon">
											<i class="fa">
												<img src="${pageContext.request.contextPath}/assets/image/intro/f_icon04.png">
											</i>
										</div>
									</div>
									<div class="fetaure-details">
										<h4 style="color: #37b8bf; font-size: 21px; font-weight: 400;">Competition</h4>
										<p style="margin-top: 8px;">
										참여자들이 랭킹 및 결과확인을 통해 
										<br>
				                      	 재미와 몰입감을 느낄 수 있습니다.
										</p>
									</div>
								</div>
							</div>
						</div>
						<!-- //오른쪽 -->
						
					</div>
					<!-- //feature_content -->
				</div>
				
			</div>
		</section>
		
		<section class="" id="">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="section-head" style="margin-top: 49px;">
							<span class="underline"></span>
							<p class="contents_title">활용 방법</p>
							<p class="contents_subtitle">learnwhale 소개</p>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="tab-content">
						<div class="col-md-12">
							<div class="col-md-5">
								<div>
									<img src="${pageContext.request.contextPath}/assets/image/intro/app_img_school.png" class="img_m" style="">
								</div>
							</div>
							<div class="col-md-7" style="padding-left: 108px;">
								<div>
									<p class="tap_title">
										지루했던 수업이
	                                    <span style="color:#ef6e35;">놀이</span>
	                                                                   가 됩니다!
									</p>
									<p class="tap_subtitle">
										시험지 대신 스마트기기를 꺼내 퀴즈를 풀어보세요.
										<br>​​
										퀴즈 풀이와 함께 참여자들간 실시간 랭킹을 ​비교해볼 수 ​있습니다.
									</p>
									<div style="margin-top: 16px;">
											<div class="col-md-6" style="padding-left: 0px;">
												<div class="extra-features" style="color: #777;">
													<div>
														<div class="icon" style="font-size: 23px; color: #e4e4e4;">
															01
														</div>
														수업 내 활용
													</div>
													<div>
														<div class="icon" style="font-size: 23px; color: #e4e4e4; margin-top: 10px;">
															03
														</div>
														방과 후 과제
													</div>
												</div>
											</div>
											<div class="col-md-6" style="padding-left: 0px;">
												<div class="extra-features" style="color: #777;">
													<div>
														<div class="icon"  style="font-size: 23px; color: #e4e4e4;">
															02
														</div>
														학생의견 수집
													</div>
													<div>
														<div class="icon"  style="font-size: 23px; color: #e4e4e4; margin-top: 10px;">
															04
														</div>
														학습통계 제공
													</div>
												</div>
											</div>
									
									</div>
									
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<!-- //row끝  -->
				
			</div>
		</section>
		<!-- //section 끝 -->
		
		<section class="services">
			<div class="container">
			
				<div class="row">
					<div class="col-md-12">
						<div class="section-head" style="margin-top: 37px;">
							<span class="underline"></span>
							<p class="contents_title">Service</p>
							<p class="contents_subtitle">learnWhale를 즐기는 방법</p>
						</div>
					</div>
				</div>
				
				<div class="row" style="width: 1027px; margin-left: 33px;">
				
					
					<div class="col-md-3">
						<div class="text-center"> 
							<img src="${pageContext.request.contextPath}/assets/image/intro/s_icon01.png" style="height: 38px;">
							<p class="s_title">Sign up</p>
							<p class="s_subp">
								무료로 회원가입 후
								<br>
								로그인하세요.​​
							</p>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="text-center"> 
							<span class="fa">
								<img src="${pageContext.request.contextPath}/assets/image/intro/s_icon02.png" style="height: 38px;">
							</span>
							<p class="s_title">Create</p>
							<p class="s_subp">
								Quiz Show를 생성하고​
								<br>
								Quiz를 출제하세요.​​
							</p>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="text-center"> 
							<span class="fa">
								<img src="${pageContext.request.contextPath}/assets/image/intro/s_icon03.png" style="height: 38px;">
							</span>
							<p class="s_title">Share</p>
							<p class="s_subp">
								URL 공유를 통해
								<br>
								즐거운 경쟁을 경험하세요.​​
							</p>
						</div>
					</div>	
						
					<div class="col-md-3">
						<div class="text-center"> 
							<span class="fa">
								<img src="${pageContext.request.contextPath}/assets/image/intro/s_icon04.png" style="height: 38px;">
							</span>
							<p class="s_title">Play</p>
							<p class="s_subp">
								실시간 Quiz를 통해
								<br>
								즐거운 경쟁을 경험하세요.​​
							</p>
						</div>
					</div>
					
				</div>
				<!-- //row 끝  -->
			</div>
			<!-- //container 끝 -->
		</section>
		<!-- //services section 끝 -->
		
		<div class="" >
			<div class="col-md-12 contact_b" style="background-color: #dddddd; height: 100px;">
				<div class="">
					<div class="col-md-2 contact_title" style="font-size: 42px; color: white; font-weight: 500; margin-left: 216px; padding-top: 19px;">Contact</div>
					<div class="col-md-7 contact_subtitle">
					<br>
						문의 사항이 있으신 경우, 이메일로 문의 주시면 답변 드리겠습니다.
					
						<div class="email_d" style="color: #777;">learnwhale@gmail.com</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<!-- //body 전체 -->
		

</body>
</html>