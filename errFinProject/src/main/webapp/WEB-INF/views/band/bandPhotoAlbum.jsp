<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <title>ERROR404</title>
   <jsp:include page="../common/menubar.jsp" />
  <!-- CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="style.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">
  <!-- Skin -->
  <link href="skins/light-pink-blue.css" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
	  .category-posts2 li {
	    float: left;
	    padding: 1px;
	    overflow: hidden;
	}
	  
  </style>
</head>
<body class="home page page-id-4 page-template page-template-template_home-php">
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
                            <!-- <span class="comment-count">11</span> -->
                            <img src="http://placehold.it/209x128" alt="">
                        </a>
                        <h2 style="color:#222; font-size:21px; margin-bottom:15px;font-weight:600;margin-top:20px;">밴드명</h2>
                        <h4 style="display:inline-block;font-size: 13px;font-weight: 400;color: #333;">
                        			멤버 4<a href="#" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
                        			초대코드 </a></h4>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="#" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">* 밴드 설정</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

        <div class="main col-md-6 col-xs-12">
		 <div class="box-content widget fullwidth">
                <h4 class="widget-title">사진첩</h4>
                <div class="widget-content">
                    <ul class="category-posts2">
                        <li>
                            <a href="#">
                               <!--  <span class="comment-count">13</span> -->
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                            <!-- <h4 class="news-title"><a href="#">Alboroza ft Kymanus Marli Natural</a></h4>
                            <p>Nunc faucibus, nisi non sagittis hendrerit, leo turpis interdum sem, non tincidunt pur us justo id ipsum some other word.</p> -->
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="164" height="164" alt="">
                            </a>
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
              <div class="textwidget"><a href="#">ERROR404</a> &copy; 2015 All rights reserved</div>
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