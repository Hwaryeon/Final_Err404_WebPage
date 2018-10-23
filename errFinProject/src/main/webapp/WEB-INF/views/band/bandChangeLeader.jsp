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
<title>ERROR404</title>
 <jsp:include page="../common/menubar.jsp" />
<link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
</head>
<style>
.comment-reply-title, .page .page-title{
	    margin: 5px 0 11px;

}
.categort-posts,  .sh{

	box-shadow: 0px 0px 6px #4d4a4a;

}
.vote {
	-moz-box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	-webkit-box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #86b8eb) );
	background:-moz-linear-gradient( center top, #79bbff 5%, #86b8eb 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#86b8eb');
	background-color:#79bbff;
	-webkit-border-top-left-radius:0px;
	-moz-border-radius-topleft:0px;
	border-top-left-radius:0px;
	-webkit-border-top-right-radius:0px;
	-moz-border-radius-topright:0px;
	border-top-right-radius:0px;
	-webkit-border-bottom-right-radius:0px;
	-moz-border-radius-bottomright:0px;
	border-bottom-right-radius:0px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height:36px;
	line-height:36px;
	width:159px;
	text-decoration:none;
	text-align:center;
}
.vote:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #86b8eb), color-stop(1, #79bbff) );
	background:-moz-linear-gradient( center top, #86b8eb 5%, #79bbff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#86b8eb', endColorstr='#79bbff');
	background-color:#86b8eb;
}.vote:active {
	position:relative;
	top:1px;
}

</style>
<body
	class="home page page-id-4 page-template page-template-template_home-php">

<div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6; margin-top:-30px;">
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

	<div class="container" style="min-height:600px;">

		<div class="left-sidebar col-md-3" role="complementary">

			 <div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title"></h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <!-- <img src="http://placehold.it/209x128" alt=""> -->
                             <%-- <img src="${ contextPath }/resources/upload_images/${pf.editName }" alt=""> --%>
                             <c:if test="${ pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg' }">
								
										<img style="border-radius: 10px;" src="${ contextPath }/resources/images/cover/${ pf.editName }">
									</c:if>
									
									<c:if test="${ !(pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg') }">
								
										<img style="border-radius: 10px;" src="${ contextPath }/resources/upload_images/${ pf.editName }">
									</c:if>
                             
                             
                             
                        </a>
                        <h2 style="color:#222; font-size:21px; margin-bottom:15px;font-weight:600;margin-top:20px;">${bname }</h2>
                        <c:set var="loop" value="false"/>
                        <c:set var="mid" value = "${ sessionScope.loginUser.mid }"/>
                        <c:forEach var="list" items="${list }" >
                        	<c:if test="${ not loop }">
                        	
	                        	<c:if test="${list.mid == mid }">
	                        	
	                        		<c:set var="loop" value="true"/>
	                        
	                        	</c:if>
                        	
                        	</c:if>
                        
                        </c:forEach>
                         
                        <h4 style="display:inline-block;font-size: 13px;font-weight: 400;color: #333;">
                        			멤버 ${memberCount}
                        			
                        			 <c:if test="${ loop }">
                        			
	                        			<a href="boardMemberInvite.do?bid=${bid}" style="position:relative;padding-left: 12px;color:#00b994!important;font-size: 13px;">
	                        			+ 초대코드 </a>
                        			</c:if>
                        			
                        			</h4>
                        			
                        <div style="margin-left: 19px;"> 
                        
                        <c:if test="${ not loop }">
	                        <form action="Member_BandInsert.bd" method="post" class="mrgn-bottom-0">
	                        
	                        	<input type="hidden" name="bid" value="${ bid }">
	                        
	                        	<button class="button vote" >가입하기</button>
	                        </form>
                        </c:if>
                        
                        
                        
                        </div>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="bandLeader.bd?bid=${ bid }" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">
                        <c:if test="${ mlevel != 0 }">
                        	* 밴드 설정
                        </c:if>
                        </a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

		<div class="main col-md-6 col-xs-12 sh">

			<div class="widget fullwidth post-single" style="margin-bottom:1px;">
				<h4 class="widget-title" style="font-size:20px;">리더 위임 </h4>
			</div>
			
			<div id="search-3" class="widget fullwidth widget_search" style="margin-bottom:1px;">
                <form class="search" role="search" method="get" action="searchBandLeader.bd">
                	<input type="hidden" name="bid" value="${bid }">
                    <input type="search" placeholder="Search &hellip;" value="" name="s" title="Search for:">
                </form>
            </div>
			
            <c:forEach var="b" items="${mbList}">
            
	            <c:if test="${b.mlevel != 1}" >
						<div class="author-bar widget" style="margin-bottom:1px;">
			              <div class="author-content">
			                <img alt="" src="http://placehold.it/89x89" class="avatar avatar-75 photo avatar-default" height="75" width="75">        
			                <h4> <span><a href="#">
			                		
			                		<c:if test="${b.mlevel == 2}" >
			                		공동 리더
			                		</c:if>
			                		<c:if test="${b.mlevel == 3}" >
			                		일반 회원
			                		</c:if>
			                </a></span> </h4>
			                <h4>
			                <a href="" title="Posts by admin" rel="author">${b.mname}</a>
			                <span style="float:right;">
			               		<input type="hidden" value="${b.mbid }" >
			                	<a style="border:1px solid lightgray; padding:7px; cursor:pointer;" class="changeBandLeader">
			                	리더 위임</a>
			                </span>
			                </h4>
			                <div class="clear"></div>
			              </div>
			            </div>
				</c:if>	
			</c:forEach>
		</div>
		
		<script>
			$('.changeBandLeader').click(function(){
				
				document.getElementById('mbid').value = $(this).parents().children("input").eq(0).val();
				
				 location.href="#modal";
				
			});
		
		</script>
		
		

		<div class="right-sidebar col-md-3" role="complementary">


			<div id="categort-posts-widget-2"
            class="widget fullwidth categort-posts" style = "background : white;">
            <h1 class="widget-title">최근 사진</h1>
            <ul class="tvshows">
            <c:forEach var = "sidePhoto" items = "${ rightAlbum }" varStatus = "idx">
            <c:if test = "${idx.count mod 2 == 1 }">
               <li>
              </c:if>
              <a href="#"> <img
                     style="min-height: 100px; height: 100px; width: 100px;"
                     src="${contextPath }/resources/upload_images/${sidePhoto.edit_name}" alt="">
               </a>
               <c:if test = "${idx.count mod 2 != 1 }">
               	</li>
               </c:if>
               </c:forEach>
            </ul>
            <div class="clear"></div>
         </div>

			


			
		</div>

	</div>

	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="pull-left">
					<div id="text-6">
						<div class="textwidget">
							<a href="#">ERROR404</a> &copy; 2015 All rights reserved
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
	
	<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div>
    <h2 id="modal1Title">리더 위임</h2>
    <p id="modal1Desc">
       	해당 멤버를 리더로 위임하시겠습니까 ?
       	기존 리더는 일반 회원으로 전환됩니다.
    </p>
  </div>
  <br>
  <input type="hidden" id="mbid" value=""/> 
  <input type="hidden" id="bid" name="bid" value="${ bid }" >
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="changeBandLeaderBu" data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<script>

$('#changeBandLeaderBu').click(function(){
	console.log("id : " + document.getElementById('mbid').value);
	
	var mbid = document.getElementById('mbid').value;
	var bid = document.getElementById('bid').value;
	
	location.href="changeBandLeader.bd?mbid=" + mbid + '&bid=' + bid;
	
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