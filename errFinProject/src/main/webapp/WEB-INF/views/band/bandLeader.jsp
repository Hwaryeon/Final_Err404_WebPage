<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <title>Weekend Magazine</title>
<jsp:include page="../common/menubar.jsp" />
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="home page page-id-4 page-template page-template-template_home-php">
    

	

<div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6;">
                  <ul class="nav nav-justified nav-tabs" style="width:610px;margin-left:auto;margin-right:auto;">
                    <li class="active" style="width:150px; min-width:150px;" id="tab1">
                    <a href="#tab1" data-toggle="tab" style="width:150px; min-width:150px;">전체글</a></li>
                    <li style="width:150px; min-width:150px;" id="tab2">
                    <a href="#tab2" data-toggle="tab" style="width:150px; min-width:150px;">사진첩</a></li>
                    <li style="width:150px; min-width:150px;" id="tab3">
                    <a href="#tab3" data-toggle="tab" style="width:150px; min-width:150px;">일정</a></li>
                    <li style="width:150px; min-width:150px;" id="tab4">
                    <a href="#tab4" data-toggle="tab" style="width:150px; min-width:150px;">멤버</a></li>
                  </ul>
                </div>
                
         <script>
			$(function(){
				
				$("#tab1").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab1클릭됨");
				});
				
				$("#tab2").mouseenter(function(){
					
				}).mouseout(function(){
					
				}).click(function(){
					console.log("tab2클릭됨");
					location.href="photoAlbum.jsp";

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
                             
                             <c:if test="${ pf.editName == 'cover1.jpeg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg' }">
								
										<img src="${ contextPath }/resources/images/cover/${ pf.editName }">
									</c:if>
									
									<c:if test="${ !(pf.editName == 'cover1.jpeg' || pf.editName == 'cover2.jpg'
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
                        			
                        <div> 
                        
                        <c:set var="loop" value="false"/>
                        <c:set var="mid" value = "${ sessionScope.loginUser.mid }"/>
                        <c:forEach var="list" items="${list }" >
                        	<c:if test="${ not loop }">
                        	
	                        	<c:if test="${list.mid == mid }">
	                        		<c:set var="loop" value="true"/>
	                        
	                        	</c:if>
                        	
                        	</c:if>
                        
                        </c:forEach>
                        
                        <c:if test="${ not loop }">
	                        <form action="Member_BandInsert.bd" method="post" class="mrgn-bottom-0">
	                        
	                        	<input type="hidden" name="bid" value="${ bid }">
	                        
	                        	<button class="button vote" >가입하기</button>
	                        </form>
                        </c:if>
                        
                        
                        
                        </div>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="bandLeader.bd?bid=${ bid }" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">* 밴드 설정</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

        <div class="main col-md-6 col-xs-12">

             <div class="widget fullwidth post-single">
              <h4 class="widget-title">밴드 정보 관리 </h4>
              <div class="widget-content">
                <ul>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  밴드 이름 및 커버 설정
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandModify.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  밴드 카테고리 변경
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandCategory.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  밴드 공개 설정
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandOpenStatus.bd?bid=${ bid }">변경</a></h4>
                  </li>
                </ul>
              </div>
            </div>
            
             <div class="widget fullwidth post-single">
              <h4 class="widget-title">멤버 활동 관리 </h4>
              <div class="widget-content">
                <ul>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  공동리더 관리
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandMultiLeader.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  리더 위임
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandChangeLeader.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  멤버 탈퇴,차단 설정
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandMemberManagement.bd?bid=${ bid }">변경</a></h4>
                  </li>
                   <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  가입 신청 리스트
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="insertMemberList.bd?bid=${ bid }">변경</a></h4>
                  </li>
                </ul>
              </div>
            </div>
            
            
             <div class="widget fullwidth post-single">
              <h4 class="widget-title">밴드 메뉴 관리 </h4>
              <div class="widget-content">
                <ul>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		 밴드 소개 변경
                  		 <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandIntro.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  밴드 탈퇴
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandSecession.bd?bid=${ bid }">변경</a></h4>
                  </li>
                  <li>
                    <h4 class="list-title" style="display: block;word-wrap: break-word;word-break: break-all;font-size: 14px;font-weight: 400;color: #222;">
                  		  밴드 삭제
                  		  <a style="float:right; background: #fafafa;border: 1px solid #c9c8c8;padding: 3px 8px 3px 8px;" href="bandDelete.bd?bid=${ bid }">변경</a></h4>
                  </li>
                </ul>
              </div>
            </div>


        </div>

      <div class="right-sidebar col-md-3" role="complementary">


            <div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title">최근 사진 </h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                    </li>
                    
               
               
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
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Today
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Yesterday
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> The day after tomorrow
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Tomorrow
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


            <div id="ads250_250-widget-2" class="widget fullwidth ads250_250-widget"><h1 class="widget-title">
                Advertisement</h1>
                <div class="ads250-250">
                    <div class="ad-cell">
                        <a href="#"><img src="img/ad-210x190.png" class="fullwidth" alt=""></a>
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
              <div class="textwidget"><a href="#">Weekend Magazine</a> &copy; 2015 All rights reserved</div>
            </div>          
          </div>
          <div class="pull-right hidden-xs">
            <div id="text-7">     
              <div class="textwidget">Theme by <a title="Email me now" href="#">JKthemes</a></div>
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