<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content=" width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Weekend Magazine</title>
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
	<!-- TOP NAV -->
	<div class="navbar navbar-default top-nav-bar" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".topmenu">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse topmenu">
				<div class="menu-header-templates-menu-container">
					<ul class="nav navbar-nav">
						<li><a href="about.html">About</a></li>
						<li><a href="article.html">Article</a></li>
						<li><a href="article-review.html">Article Review</a></li>
						<li><a href="archives.html">Archives</a></li>
						<li><a href="category.html">Category</a></li>
						<li><a href="fullwidth.html">Full Width</a></li>
						<li><a href="shortcodes.html">Shortcodes</a></li>
						<li><a href="404.html">404</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- LOGO AREA -->
	<div class="fullwidth bg-pink">
		<div class="container">
			<div class="col-md-6 col-xs-12">
				<div class="logo">
					<h1>
						<a href="index.html" title="Weekend Magazine">Weekend Magazine</a>
					</h1>
				</div>
			</div>
			<div class="col-md-6 col-xs-12">
				<div id="ads120_60-widget-2" class="ads120-60 ads-one">
					<div class="ad-cell">
						<a href="#" target="_blank"> <img src="img/ad-468x60.png "
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- MAIN NAV -->
	<div class="fullwidth navbar navbar-default main-nav-bar"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".mainmenu">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse mainmenu">
				<div class="menu-primary-navigation-container">
					<ul id="menu-primary-navigation" class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">Home
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="index.html">Home</a></li>
								<li><a href="index2.html">Home 2</a></li>
								<li><a href="index3.html">Home Dark 1</a></li>
								<li><a href="index4.html">Home Dark 2</a></li>
								<li><a href="index5.html">Home Light 1</a></li>
								<li><a href="index6.html">Home Light 2</a></li>
							</ul></li>
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
		</div>
	</div>

	<div class="container">

		<div class="left-sidebar col-md-3" role="complementary">

			<div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title"></h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <!-- <img src="http://placehold.it/209x128" alt=""> -->
                             <img src="${ contextPath }/resources/upload_images/${pf.editName }" alt="">
                        </a>
                        <h2 style="color:#222; font-size:21px; margin-bottom:15px;font-weight:600;margin-top:20px;">${bname }</h2>
                        <h4 style="display:inline-block;font-size: 13px;font-weight: 400;color: #333;">
                        			멤버 ${memberCount}<a href="#" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
                        			초대코드 </a></h4>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="bandLeader.bd?bid=1" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">* 밴드 설정</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

		<div class="main col-md-6 col-xs-12">

			<div class="widget fullwidth post-single" style="margin-bottom:1px;">
				<h4 class="widget-title" style="font-size:20px;">멤버</h4>
			</div>
			
			<div class="recent-widget" id="tabbed-widget">
               <!--    <ul class="nav nav-justified nav-tabs">
                    <li class="active"><a href="#tab1" data-toggle="tab">멤버 목록</a></li>

                  </ul> -->
                  <div class="tab-content padding-10" style="padding:0.1px;">
                    <div class="tab-pane fade in active" id="tab1">
                    
                    <div id="search-3" class="widget fullwidth widget_search" style="margin-bottom:1px;">
                <form class="search" role="search" method="get" action="searchBanMemberSearch.bd">
                    <input type="search" placeholder="Search &hellip;" value="" name="s" title="Search for:">
                </form>
            </div>
			
           
           <c:forEach var="b" items="${list}">
            	
            	<c:if test="${b.mlevel != 1}" >
		            
		            <div class="author-bar widget" style="margin-bottom:1px;">
              <div class="author-content">
                <img alt="" src="http://placehold.it/89x89" class="avatar avatar-75 photo avatar-default" height="75" width="75">        
                <h4> <span><a href="#">
					
					<c:if test="${b.mlevel == 2}" >
					공동리더
					</c:if>
					<c:if test="${b.mlevel == 3}" >
					일반 회원
					</c:if>

				</a></span> </h4>
                <h4><a href="" title="Posts by admin" rel="author">${b.mname}</a>
                <span style="float:right;">
                	<input type="hidden" value="${b.mbid }" >
                	<input type="hidden" value="${b.mid }" >
                 <div style="float: right" class="menu-primary-navigation-container">
                  <ul id="menu-primary-navigation" class="nav navbar-nav">
                     <li class="dropdown"><a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-expanded="false">
                        <img alt="" src="${ contextPath }/resources/images/chat.png"
                        class="avatar avatar-75 photo avatar-default" >
                        
                     </a>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="index2.html">   <img alt="" src="${ contextPath }/resources/images/chat2.png?id=${row.boardId}"
                        class="avatar avatar-75 photo avatar-default" >채팅하기</a></li>
                        
                           <li><a href="index2.html">   <img alt="" src="${ contextPath }/resources/images/chatInvite.png?id=${row.boardId}"
                        class="avatar avatar-75 photo avatar-default" >채팅초대</a></li>
                          
                        </ul></li>
                  </ul>
               </div>
                
                </span>
                </h4>
                <div class="clear"></div>
              </div>
            </div>
				
				</c:if>
				
			</c:forEach>
            
                    
                    
                    
                    </div>
                    <div class="tab-pane fade" id="tab2">
                    <div id="search-3" class="widget fullwidth widget_search" style="margin-bottom:1px;">
                <form class="search" role="search" method="get" action="#">
                    <input type="search" placeholder="Search &hellip;" value="" name="s" title="Search for:">
                </form>
            </div>
            
         <c:forEach var="c" items="${banList}">
            	
		            
		            <div class="author-bar widget" style="margin-bottom:1px;">
              <div class="author-content">
                <img alt="" src="http://placehold.it/89x89" class="avatar avatar-75 photo avatar-default" height="75" width="75">        
               <h4> <span><a href="#">
					
					차단된 회원

				</a></span> </h4>
                <h4><a href="" title="Posts by admin" rel="author">${c.mname}</a>
                <span style="float:right;">
                	<input type="hidden" value="${c.banid }" >
                <a style="border:1px solid red; padding:7px; color:red; cursor:pointer;" class="deleteBanMember">
                	차단 해제</a></span>
                </h4>
                <div class="clear"></div>
              </div>
            </div>
				
				
			</c:forEach>
            
                    
                    
                    
                    </div>
                  </div>
                </div>
			
			

		</div>
		
		  <script>
			$('.deleteBanMember').click(function(){
				
				document.getElementById('banid').value = $(this).parents().children("input").eq(0).val();
				
				 location.href="#modal";
				
			});
			
			$('.deleteBandMember').click(function(){
				
				document.getElementById('mbid').value = $(this).parents().children("input").eq(0).val();
				document.getElementById('mid').value = $(this).parents().children("input").eq(1).val();
				 location.href="#modal2";
				
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
	<script src="${ contextPath }/resources/js/jquery.min.js"></script>
	<script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
	<%--
		<script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
	<script src="${ contextPath }/resources/js/custom.js"></script> --%>
	
	<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div>
    <h2 id="modal1Title">멤버 차단 해제</h2>
    <p id="modal1Desc">
       	해당 멤버 차단 상태를 해제하시겠습니까 ?
    </p>
  </div>
  <br>
  <input type="hidden" id="banid" value=""/> 
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="deleteBanMember" data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<div class="remodal" data-remodal-id="modal2" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div class="widget-content">
						<ul>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									회원 강제 탈퇴
									<label style="float:right"> 
										<input name="remember" value="1" type="radio" checked=checked>
								</label>
								</h4>
							</li>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									회원 강제 탈퇴 후 차단
									<label style="float:right">
										<input name="remember" value="2" type="radio" >
									</label>
								</h4>
							</li>
						</ul>


					</div>
  <br>
  <input type="hidden" id="mbid" value=""/> 
  <input type="hidden" id="mid" value=""/> 
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="deleteBandMember" data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<script>

$('#deleteBanMember').click(function(){
	
	var banid = document.getElementById('banid').value;
	
	location.href="deleteBanMember.bd?banid=" + banid;
	
});

$('#deleteBandMember').click(function(){
	
	var mbid = document.getElementById('mbid').value;
	
	var radioVal = $('input[name="remember"]:checked').val();
	var mid = document.getElementById('mid').value;
	
	location.href="deleteBandMember.bd?mbid=" + mbid + "&mid=" + mid + "&radioVal=" + radioVal;
	
});

</script>


<script>window.jQuery || document.write('<script src="../../../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.js"></script>

<!-- Events -->
<script>
  $(document).on('opening', '.remodal', function () {
    /* console.log('opening'); */
  });

  $(document).on('opened', '.remodal', function () {
    /* console.log('opened'); */
  });

  $(document).on('closing', '.remodal', function (e) {
    /* console.log('closing' + (e.reason ? ', reason: ' + e.reason : '')); */
  });

  $(document).on('closed', '.remodal', function (e) {
    /* console.log('closed' + (e.reason ? ', reason: ' + e.reason : '')); */
  });

  $(document).on('confirmation', '.remodal', function () {
    /* console.log('confirmation'); */
  });

  $(document).on('cancellation', '.remodal', function () {
    /* console.log('cancellation'); */
  });
  
  $('[data-remodal-id=modal2]').remodal({
    /* modifier: 'with-red-theme' */
  });
</script>
	
</body>
</html>