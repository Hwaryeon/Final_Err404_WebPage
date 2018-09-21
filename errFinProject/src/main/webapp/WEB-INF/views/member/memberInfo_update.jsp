<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content=" width=device-width, initial-scale=1">
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>Weekend Magazine</title>
    <!-- CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
    <link href="resources/css/sss.css" rel="stylesheet">
    <!-- Skin -->
    <link href="resources/css/light-pink-blue.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="home page page-id-4 page-template page-template-template_home-php">
    <!-- TOP NAV -->
    <div class="navbar navbar-default top-nav-bar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".topmenu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
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
                    <h1><a href="index.html" title="Weekend Magazine">Weekend Magazine</a></h1>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div id="ads120_60-widget-2" class="ads120-60 ads-one">
                    <div class="ad-cell">
                        <a href="#" target="_blank">
                            <img src="img/ad-468x60-2.png " alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MAIN NAV -->
    <div class="fullwidth navbar navbar-default main-nav-bar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".mainmenu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse mainmenu">
                <div class="menu-primary-navigation-container">
                    <ul id="menu-primary-navigation" class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Home <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="index2.html">Home 2</a></li>
                                <li><a href="index3.html">Home Dark 1</a></li>
                                <li><a href="index4.html">Home Dark 2</a></li>
                                <li><a href="index5.html">Home Light 1</a></li>
                                <li><a href="index6.html">Home Light 2</a></li>
                            </ul>
                        </li>
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
        <!-- Main Content -->
        <div class="main col-md-9 col-md-push-3 col-xs-12">

            <div class="widget fullwidth post-single">
                <h2>회원 정보 수정</h2><br>
                <div class="widget-content">
                    <ul>
                        <li>
                         
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                                <tr>
                                    <td style="vertical-align: middle;">
                                        <h5>프로필 이미지</h5>
                                    </td>
                                    <c:if test = "${ memberProfile.editName eq 'user.png' }">
                                    	<td width="200px" style="vertical-align: middle; ">
                                    	<img id = "contentImg1" src="resources/upload_images/user.png" alt="" style = "width : 64px; height : 64px;"></td>
                                    	<input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)"></td>
                                    </c:if>
                                    <c:if test = "${ memberProfile.editName ne 'user.png' }">
                                    	<td width="200px" style="vertical-align: middle;">
                                    	<img id = "contentImg1" src="resources/upload_images/${ memberProfile.editName }" alt="" style = "width : 64px; height : 64px;">
                                    	<input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)"></td>
                                    </c:if>
                                    <td width="500px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" onclick = "changeProfile()">이미지 수정하기</a></td>
                                </tr>

                            </table>
                            <br>
                            <hr>
                            <br>
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                                <tr>
                                    <td style="vertical-align: middle;" rowspan = "3">
                                        <h5>개인정보</h5>
                                    </td>
                                    <td width="100px" style="vertical-align: middle;">이메일</td>
                                    <td width="120px" style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mEmail }</td>
                                    <td width="510px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link">이메일 수정하기</a></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">닉네임</td>
                                    <td style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mName }</td>
                                    <td style="vertical-align: middle; text-align: right"><a class="button-blue button-link">닉네임 수정하기</a></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">연락처</td>
                                    <td style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mPhone }</td>
                                    <td style="vertical-align: middle; text-align: right"><a class="button-blue button-link">연락처 수정하기</a></td>
                                </tr>

                            </table>
                            <br>
                            
                            
                            
                        </li>


                    </ul>
                </div>
            </div>

        </div>
        <!-- Left Sidebar Content -->
        <div class="left-sidebar col-md-pull-9 col-md-3" role="complementary">

            <div class="recent-widget widget padding-0" id="tabbed-widget">
                <h4 class="widget-title">마이페이지</h4><br>
                <hr>
                <div class="widget-content">
                   <ul>
                        <li>
                            <h4 class="list-title"><a href = '<c:url value = "showMemberInfo_update.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					</c:url>'>회원 정보 수정</a></h4>
                            <hr>
                        </li>
                        <li>

                            <h4 class="list-title"><a href="showMemberInfo_write.me">내가 쓴 글</a></h4>
                            <hr>
                        </li>
                        <li>

                            <h4 class="list-title"><a href="showMemberInfo_bandlist.me">가입 신청 중인 밴드</a></h4>
                            <hr>
                        </li>

                    </ul>
                </div>
            </div>




        </div>

        <!-- Right Sidebar Content -->

        <!--<div class="right-sidebar col-md-3" role="complementary">

        <div id="search-3" class="widget fullwidth widget_search">
                <form class="search" role="search" method="get" action="#">
                    <input type="search" placeholder="Search &hellip;" value="" name="s" title="Search for:">
                </form>
            </div>

            <div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title">TV SHOWS </h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <span class="comment-count">11</span>
                            <img src="http://placehold.it/209x128" alt="">
                        </a>
                        <h4><a href="#">See no changes all saw is faces mis placed hate makes disgrace</a></h4>
                    </li>
                    <li>
                        <a href="#">
                            <span class="comment-count">76</span>
                            <img src="http://placehold.it/209x128" alt="">
                        </a>
                        <h4><a href="#">How to find water in the desert?</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>

            <div class="widget featured-side">
                <div class="widget-content">
                    <a href="#"><img src="http://placehold.it/239x208"alt=" "></a>
                    <div class="featured-side-content">
                        <span class="featured-side-title">Interview</span>
                        <p class="featured-side-desc">Black eyed beans rolling on the list of Billsoard 100</p>
                    </div>
                </div>
                <div class="clear"></div>
            </div>

            <div id="tag_cloud-2" class="widget fullwidth widget_tag_cloud">
                <h1 class="widget-title">Tags</h1>
                <div class="tagcloud">
                    <a href="#">Portfolio</a>
                    <a href="#">Typography</a>
                    <a href="#">Type</a>
                    <a href="#">Compaign</a>
                    <a href="#">Illustration</a>
                    <a href="#">Face</a>
                    <a href="#">UI</a>
                    <a href="#">Experience</a>
                    <a href="#">Brand</a>
                    <a href="#">Portfolio</a>
                    <a href="#">Typography</a>
                    <a href="#">Type</a>
                    <a href="#">Compaign</a>
                    <a href="#">Illustration</a>
                    <a href="#">Face</a>
                    <a href="#">UI</a>
                    <a href="#">Experience</a>
                    <a href="#">Brand</a>
                </div>
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

            <div id="widget-feedburner-2" class="widget fullwidth widget-feedburner">
                <h1 class="widget-title">Subscribe</h1>
                <div class="widget-feedburner-counter subscribe">
                    <p>Subscribe to our RSS feed, be in touch with our articles, news, videos, freebies.</p>
                    <form action="#" method="post">
                        <input class="feedburner-email input-subscribe" type="text" name="email"
                               value="Enter your e-mail address"
                               onfocus="if (this.value == 'Enter your e-mail address') {this.value = '';}"
                               onblur="if (this.value == '') {this.value = 'Enter your e-mail address';}">
                        <input class="feedburner-subscribe input-button" type="submit" name="submit" value="Add">
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

        </div>-->
				<c:url value = "insertChangedProfile.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
				</c:url>
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
    <script>
    	$(function(){
    		$("#userImage").hide();
    	})
    	
    	function changeProfile(){
    		$("#userImage").click();
    	}
    	
    	function loadImg(value){
    		var form = $("#userImage")[0].files[0];
    		var formData = new FormData();
    		 formData.append("uploadFile", form);
    		 
    		 <c:url var = "icp" value = "insertChangedProfile.me">
				<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
			</c:url>
    		 
    		console.log(formData);
    		$.ajax({
				url : "${icp}",
				type : "post",
				data : formData,
				enctype: 'multipart/form-data',
				processData: false,
                contentType: false,
				success : function(data) {
					alert(data.photo);
					
				},
				error : function() {
					console.log('실패');
				}
			})
    		
			
			
		}
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/sss.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>

</html>