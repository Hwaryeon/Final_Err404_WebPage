<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>ERR404</title>
 <jsp:include page="../common/menubar.jsp" />
<!-- CSS -->
<%-- <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${ contextPath }/resources/style.css" rel="stylesheet">
<link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
<link href="${ contextPath }/resources/css/sss.css" rel="stylesheet">
<!-- Skin -->
<link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
</head> --%>
<link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
</head>
<style>
#categort-posts-widget-2 {
	background-color: transparent;
}
</style>
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

		 <div class="left-sidebar col-md-3" role="complementary" >

         <div id="categort-posts-widget-2" class="widget fullwidth categort-posts" style = "background : white;">
            <ul class="tvshows">
               <li><a href="#">
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
                  <h2
                     style="color: #222; font-size: 21px; margin-bottom: 15px; font-weight: 600; margin-top: 20px;">${ Band.bname }</h2>
                  <h4
                     style="display: inline-block; font-size: 13px; font-weight: 400; color: #333;">
                     멤버 ${memberCount }
                     <a href="boardMemberInvite.do?bid=${bid }"
                        style="position: relative; padding-left: 12px; color: #fdb00d !important; font-size: 13px;">
                        초대코드 </a>
                  </h4>
                  <h4
                     style="margin-top: 14px; padding-top: 13px; border-top: 1px solid #e1e1e1;">
                     <a href="bandLeader.bd?bid=${ Band.bid }"
                        style="font-size: 12px; font-weight: 400; color: #666; text-decoration: none;">*
                        밴드 설정</a>
                        
                  </h4></li>
            </ul>
         </div>

      </div>
      
      <input type="hidden" id="bid" value="${bid }">

		<div class="main col-md-6 col-xs-12">


			<div class="widget clearfix">
				<div id="respond" class="comment-respond">
					<h3 id="reply-title" class="comment-reply-title">
						멤버초대<small><a rel="nofollow"
							id="cancel-comment-reply-link" href="" style="display: none;">Cancel
								reply</a></small>

					</h3>
					<br> 
					
					 <p class="comment-notes">초대할 멤버와 가까이 있다면,<br>아래의 코드를 멤버에게 보여주세요.<span class="required">*</span></p>
					<br>
					<div class="post-content">
						<img
							style="margin-left: auto; margin-right: auto; display: block;"
							height=150x; width=150px; src="${ contextPath }/resources/images/chodae.png" alt="">
					</div>

					<br>
					<br>
					
					<script type="text/javascript">
						    function btnChodae()
						    {
						      // 번호를 저장할 배열
						        var code = new Array(6);
						        var count = 0;
						        var mFlag = true;
						        while(count < 6)
						        {
						           var number;
						           // 랜덤번호 추출
						           number = parseInt(Math.random()*45)+1
						           for(var i=0; i<count; i++)
						              if(code[i] == number) mFlag = false;
						           if(mFlag)
						           {
						        	   code[count] = number;
						                count++;
						           }
						           mFlag = true;
						       } 
						        
						        var code = code[0]+' '+code[1]+' '+code[2]+' '+code[3]+' '+code[4]+' '+code[5];
				
						        var bid = $('#bid').val();
						   	    
						   	    $.ajax({
						   			url:"updateInvite.do",
						   			type:"post",
						   			data:{code:code,
						   				bid:bid
						   			},
						   			
						   			success:function(data){
						   				console.log('코드 변경 성공');
						   				console.log(data.code);
						   				
						   				document.getElementById('contactName').value = data.code;
						   				
						   				/* return(data.code); */
						   				
						   			},error:function(){
						   				console.log('코드 변경 실패');
						   			}
						   		});
						        
						        
						    /* return(code); */
						    }
						    
						
						</script>
											
					
					
					<!-- 초대코드입력 -->
					<form id="contactForm">
						<p class="name clearfix">
						
							<c:if test="${ code != null }">
								<input type="text" name="code" id="contactName" 
								class="required requiredField" value="${code }">
							</c:if>
							
							<c:if test="${ code == null }">
								<input type="text" name="code" id="contactName" 
								class="required requiredField"">
							</c:if>
							
							<!-- <input type="text" name="code" id="contactName" 
								class="required requiredField"> -->
						</p>
						<input style ="width:118px; height : 35px" onclick="code.value=btnChodae()" type="button" value="코드생성" height="50" width="200">
						
						<p class="textarea clearfix">
							<br>
							<br>
						<h1 class="author-title pull-left">
							<br>
							<br>TIP
						</h1>
						<br>
						<br>
						<br>
						<br>
						<p>
							멤버들은 어디에서 코드를 입력하나요?<br>더보기 메뉴에서 '초대코드 입력'을 누르면<br>코드
							입력 화면이 나타납니다.
						</p>
					</form>

 				 <img align="center"  width="469px" height="291px" alt="" src="${ contextPath }/resources/images/chodaeImg.png">
 				 




				</div>
				<!-- #respond -->
			</div>
		</div>
		
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
	<script src="${ contextPath }/resources/js/jquery.min.js"></script>
	<script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
	<script src="${ contextPath }/resources/js/custom.js"></script>
</body>
</html>