<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Weekend Magazine</title>
 <jsp:include page="../common/menubar.jsp" />
<link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
</head>
<body
	class="home page page-id-4 page-template page-template-template_home-php">
<div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6;">
                  <ul class="nav nav-justified nav-tabs" style="width:610px;margin-left:auto;margin-right:auto;">
                    <li style="width:150px; min-width:150px;" id="tab1">
                    <a href="#tab1" data-toggle="tab" style="width:150px; min-width:150px;">전체글</a></li>
                    <li style="width:150px; min-width:150px;" id="tab2">
                    <a href="goboardAlbum.do?bid=${ bid }" data-toggle="tab" style="width:150px; min-width:150px;">사진첩</a></li>
                    <li style="width:150px; min-width:150px;" id="tab3">
                    <!-- <a href="#tab3" data-toggle="tab" style="width:150px; min-width:150px;">일정</a> -->
                    <a href="bandCalendarList.bd?bid=${ bid }" data-toggle="tab" style="width:150px; min-width:150px;">일정</a>
                    </li>
                    <li style="width:150px; min-width:150px;" id="tab4">
                    <a href="boardMember.do?bid=${ bid }" data-toggle="tab" style="width:150px; min-width:150px;">멤버</a></li>
                  </ul>
                </div>
   
   <script>
			$(function(){
				
				$("#tab1").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab1클릭됨");
					location.href="list.do?bid=${bid}";
				});
				
				$("#tab2").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab2클릭됨");
					location.href="goboardAlbum.do?bid=${ bid }";

				});
				
				$("#tab3").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab3클릭됨");
					location.href="bandCalendarList.bd?bid=${ bid }";
				});
				
				$("#tab4").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab4클릭됨");
					location.href="boardMember.do?bid=${ bid }";
				});
				
				
			});		
		</script>
	<div class="container">

		<div class="left-sidebar col-md-3" role="complementary">

			<div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title"></h1>
                <ul class="tvshows">
                    <li>
                         <a href="#">
                            
                             <c:if test="${ pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg' }">
								
										<img src="${ contextPath }/resources/images/cover/${ pf.editName }">
									</c:if>
									
									<c:if test="${ !(pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg') }">
								
										<img src="${ contextPath }/resources/upload_images/${ pf.editName }">
									</c:if>
                        </a>
                        <h2 style="color:#222; font-size:21px; margin-bottom:15px;font-weight:600;margin-top:20px;">${bname }</h2>
                        <h4 style="display:inline-block;font-size: 13px;font-weight: 400;color: #333;">
                        			멤버 ${memberCount}<a href="#" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
                        			초대코드 </a></h4>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="bandLeader.bd?bid=${ bid }" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">* 밴드 설정</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

		<div class="main col-md-6 col-xs-12">

			<div class="widget fullwidth post-single" style="margin-bottom:1px;">
				<h4 class="widget-title" style="font-size:20px;">밴드 탈퇴 </h4>
			</div>
            <div class="widget team-member">
              <h4 class="page-title">밴드 탈퇴전에 꼭 확인하세요</h4>
              <h6>밴드를 탈퇴하면,</h4>
              <p>이 밴드에 내가 등록한 글, 사진, 댓글 등을 수정/삭제할 수
				없게 됩니다. 필요한 경우 탈퇴 전에 수정하거나
				삭제하시기 바랍니다.</p>
				<div class="row survey" style="margin-top:20px;">
							<div class="col-md-6">
								<button class="button vote" id="bandSecession">탈퇴하기</button>
							</div>
							<div class="col-md-6">
								<button class="button" id="cancle">취소</button>
							</div>
						</div>
            </div>
		</div>
		
		<input type="hidden" id="bid" name="bid" value="${ bid }" >
							
		<script>
			$('#bandSecession').click(function(){
				
				var bid = document.getElementById('bid').value;
				
				location.href="secessionBand.bd?bid=" + bid;
			});
			
			$('#cancle').click(function(){
				
				var bid = document.getElementById('bid').value;
				
				location.href="bandLeader.bd?bid=" + bid;
			});
		
		
		</script>
		
		

		<div class="right-sidebar col-md-3" role="complementary">


			<div id="categort-posts-widget-2"
				class="widget fullwidth categort-posts">
				<h1 class="widget-title">최근 사진</h1>
				<ul class="tvshows">
					<li><a href="#"> <img
							style="min-height: 100px; height: 100px; width: 100px;"
							src="http://placehold.it/209x128" alt="">
					</a> <a href="#"> <img
							style="min-height: 100px; height: 100px; width: 100px;"
							src="http://placehold.it/209x128" alt="">
					</a></li>
					<li><a href="#"> <img
							style="min-height: 100px; height: 100px; width: 100px;"
							src="http://placehold.it/209x128" alt="">
					</a> <a href="#"> <img
							style="min-height: 100px; height: 100px; width: 100px;"
							src="http://placehold.it/209x128" alt="">
					</a></li>



				</ul>



				<div class="clear"></div>




			</div>

			<div id="widget-survey" class="widget fullwidth widget-survey">
				<h1 class="widget-title">Survey</h1>
				<div class="widget-content">
					<p>What was the last time you slept on bed in your house?</p>
					<form action="#" method="post" class="mrgn-bottom-0">
						<div class="form-group mrgn-bottom-0">
							<div class="checkbox">
								<label> <input name="remember" value="1" type="checkbox">
									Today
								</label>
							</div>
						</div>
						<div class="form-group mrgn-bottom-0">
							<div class="checkbox">
								<label> <input name="remember" value="1" type="checkbox">
									Yesterday
								</label>
							</div>
						</div>
						<div class="form-group mrgn-bottom-0">
							<div class="checkbox">
								<label> <input name="remember" value="1" type="checkbox">
									The day after tomorrow
								</label>
							</div>
						</div>
						<div class="form-group mrgn-bottom-0">
							<div class="checkbox">
								<label> <input name="remember" value="1" type="checkbox">
									Tomorrow
								</label>
							</div>
						</div>
						<div class="row survey">
							<div class="col-md-6">
								<button class="button vote">Vote</button>
							</div>
							<div class="col-md-6">
								<button class="button">Results</button>
							</div>
						</div>
					</form>
				</div>
			</div>


			<div id="ads250_250-widget-2"
				class="widget fullwidth ads250_250-widget">
				<h1 class="widget-title">Advertisement</h1>
				<div class="ads250-250">
					<div class="ad-cell">
						<a href="#"><img src="img/ad-210x190.png" class="fullwidth"
							alt=""></a>
					</div>
				</div>
			</div>

		</div>

	</div>

	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="pull-left">
					<div id="text-6">
						<div class="textwidget">
							<a href="#">Weekend Magazine</a> &copy; 2015 All rights reserved
						</div>
					</div>
				</div>
				<div class="pull-right hidden-xs">
					<div id="text-7">
						<div class="textwidget">
							Theme by <a title="Email me now" href="#">JKthemes</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom hidden-xs">
			<div class="container">
				<div id="nav_menu-2">
					<div class="menu-footer-menu-container">
						<ul id="menu-footer-menu" class="menu">
							<li><a href="#">Home</a></li>
							<li><a href="#">News</a></li>
							<li><a href="#">Economy</a></li>
							<li><a href="#">Sports</a></li>
							<li><a href="#">Shows</a></li>
							<li><a href="#">Culture &#038; Art</a></li>
							<li><a href="#">Gossips</a></li>
							<li><a href="#">Fashion</a></li>
							<li><a href="#">Health &#038; Body</a></li>
							<li><a href="#">Technology</a></li>
							<li><a href="#">Science</a></li>
						</ul>
					</div>
				</div>
				<a class="footer-nav-scroll pull-right"></a>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>