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
<jsp:include page="../common/menubar.jsp" />
<link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
    <script src="resources/js/MemberChattingFn.js"></script>
</head>
<body
	class="home page page-id-4 page-template page-template-template_home-php">

	<!-- TOP NAV -->
	<jsp:include page="../common/menubar.jsp" />
	
	<div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6;">
                  <ul class="nav nav-justified nav-tabs" style="width:610px;margin-left:auto;margin-right:auto;">
                    <li class="active" style="width:150px; min-width:150px;" id="tab1">

                    <a href="#tab1" data-toggle="tab" style="width:150px; min-width:150px;">전체글</a></li>
                    <li style="width:150px; min-width:150px;" id="tab2">
                    <a href="goboardAlbum.do?bid=${ bid }" data-toggle="tab" style="width:150px; min-width:150px;">사진첩</a></li>
                    <li style="width:150px; min-width:150px;" id="tab3">

                    <!-- <a href="#tab3" data-toggle="tab" style="width:150px; min-width:150px;">일정</a> -->
                    <a href="bandCalendarList.bd?bid=${ bid }" data-toggle="tab" style="width:150px; min-width:150px;">일정</a>
                    </li>
                    <li class="active" style="width:150px; min-width:150px;" id="tab4">
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
				});
				
				$("#tab4").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab4클릭됨");
					location.href="boardMember.do?bid=${ bid }";
				});
				
				
			});		
		</script>


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
                            <!-- <img src="http://placehold.it/209x128" alt=""> -->
                             <%-- <img src="${ contextPath }/resources/upload_images/${pf.editName }" alt=""> --%>
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
                        			
	                        			<a href="#" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
	                        			초대코드 </a>
                        			</c:if>
                        			
                        			</h4>
                        			
                        <div> 
                        
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
                    
			
           
           <c:forEach var="b" items="${list}">
            	
		            
		            <div class="author-bar widget" style="margin-bottom:1px;">
              <div class="author-content">
              <c:if test = "${b.mType ne 'LOCAL' }">
                <img alt="" src="${b.fileSrc }${b.editName}" height="75" width="75">        
              </c:if>
              <c:if test = "${ b.mType eq 'LOCAL' }">
              	<img alt="" src="${contextPath }/resources/upload_images/${b.editName}" height="75" width="75">
              </c:if>
                <h4> <span><a href="#">
					
					<c:if test="${b.mlevel == 1}" >
					밴드리더
					</c:if>
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
                           <li><a onclick = "doChatting(${b.mid});">   <img alt="" src="${ contextPath }/resources/images/chat2.png?id=${row.boardId}"
                        class="avatar avatar-75 photo avatar-default" >채팅하기</a></li>
                        
                           <li><a onclick = "inviteChatting(${b.mid});">   <img alt="" src="${ contextPath }/resources/images/chatInvite.png?id=${row.boardId}"
                        class="avatar avatar-75 photo avatar-default" >채팅초대</a></li>
                          
                        </ul></li>
                  </ul>
               </div>
                
                </span>
                </h4>
                <div class="clear"></div>
              </div>
            </div>
				
				
			</c:forEach>
            
                    
                    
                    
                    </div>
                    <div class="tab-pane fade" id="tab2">
                    <div id="search-3" class="widget fullwidth widget_search" style="margin-bottom:1px;">
            </div>
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

	<jsp:include page="../common/footer.jsp" />
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

function doChatting(mid){
	$.ajax({
		url : 'http://127.0.0.1:3000/startChat',
		data : {mid : ${sessionScope.loginUser.mid}, target : mid},
		type : 'post',
		success : function(data){
			var link = "http://127.0.0.1:3000/chat/" + ${sessionScope.loginUser.mid} + "/room/" + data;
	    	/* var url = "http://192.168.20.248:3000/" + ${sessionScope.loginUser.mid}; */

			var settings = "width=400, height=622, toolbar=no, menubar=no, scrollbars=no, resizable=no";
			
			window.open(link, 'test window', settings);
	    }
		
	})
}

function inviteChatting(mid){
			var link = "http://127.0.0.1:3000/inviteChat/${sessionScope.loginUser.mid}/" + mid;
	    	/* var url = "http://192.168.20.248:3000/" + ${sessionScope.loginUser.mid}; */

			var settings = "width=400, height=622, toolbar=no, menubar=no, scrollbars=no, resizable=no";
			
			window.open(link, 'test window', settings);
}

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