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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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

    <div class="container" style = "min-height : 700px;">
        <!-- Main Content -->
        <div class="main col-md-9 col-md-push-3 col-xs-12">

            <div class="widget fullwidth post-single">
                <h2 class="post-title">내 밴드 모아보기</h2><br>
                <div class="widget-content">
                    <ul>
                        <li>
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                            <c:if test = "${ !empty list }">
                            <c:forEach var = "list" items = "${ list }" varStatus = "status">
                                <tr id = "tr${ status.index }">
                                    <td width="150px" style="vertical-align: middle;"><img src="resources/upload_images/${ list.editName }" alt=""></td>
                                    <td width="600px" style="vertical-align: middle; text-align: left">
                                        <p class="bold">${ list.bName }</p>
                                        
                                    </td>
                                    <c:if test = "${ list.iStatus eq 'Y' }">
                                    <td width="200px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" data-toggle="modal" data-target="#bandOutModal">밴드 탈퇴하기</a></td>
                                    <div class="modal fade" id="bandOutModal" role="dialog">
										<div class="modal-dialog modal-sm" >
											<div class="modal-content" style = "width : 500px; margin-left : -70px;">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">밴드 탈퇴</h4>
												</div>
												<div class="modal-body">
													<p><font size ="12">
													이 밴드에 내가 등록한 글, 사진, 댓글 등을 수정/삭제할 수 없게 됩니다.<br>
													필요한 경우 탈퇴 전에 수정하거나 삭제하시기 바랍니다.</font></p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary" id="ckBtn"
														onclick="bandOut(${ list.mid}, ${ list.bid }, ${ status.index })">확인</button>
													<button type="button" class="btn btn-default" id="cancelBtn"
														data-dismiss="modal">취소</button>
												</div>
											</div>
										</div>
									</div>
                                    </c:if>
                                    <c:if test = "${ list.iStatus eq 'S' }">
                                    <td width="200px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" data-toggle="modal" data-target="#bandCancelModal">가입신청 취소하기</a></td>
                                   	<div class="modal fade" id="bandCancelModal" role="dialog">
										<div class="modal-dialog modal-sm" >
											<div class="modal-content" style = "width : 500px; margin-left : -70px;">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">밴드 신청 취소</h4>
												</div>
												<div class="modal-body">
													<p>선택하신 밴드의 가입을 취소하시겠습니까?</p>
												</div>
												<div class="modal-footer">
												<button type="button" class="btn btn-primary" id="ckBtn"
													onclick="bandCancel(${ list.mid}, ${ list.bid }, ${ status.index })">확인</button>
												<button type="button" class="btn btn-default" id="cancelBtn1"
													data-dismiss="modal">취소</button>
												</div>
											</div>
										</div>
									</div>
                                    </c:if>
                                </tr>
                            </c:forEach>
                            </c:if>
                            <c:if test = "${ empty list }">
                            <tr>
                            	<td width = "820px" style="vertical-align: middle; text-align: center;">
                            		가입한 밴드가 없습니다
                            	</td>
                            </tr>
                            </c:if>
                            </table>
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

                            <h4 class="list-title"><a href = '<c:url value = "showMemberInfo_write.mb">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					<c:param name="requestCurrentPage" value = "1"/>
					</c:url>'>내가 쓴 글</a></h4>
                            <hr>
                        </li>
                        <li>

                            <h4 class="list-title">
								<a href='<c:url value = "showMemberInfo_bandlist.mb">
									<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
									</c:url>'>내 밴드 모아보기</a>
							</h4>
							<hr>
                        </li>

                    </ul>
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
    <script>
    	function bandOut(mid, bid, index){
    		console.log(mid);
    		console.log(bid);
    		console.log(index);
    		
    		$.ajax({
    			url : "updateiStatus.mb",
    			data : {mid : mid, bid : bid},
    			type : "post",
    			success:function(data){
					$("#cancelBtn").click();
					alert("밴드를 탈퇴했습니다.");
					$("#tr" + index).remove();
    			},
    			error:function(){
    				console.log("실패");
    			}
    		})  
    	}
    	
    	function bandCancel(mid, bid, index){
    		console.log(mid);
    		console.log(bid);
    		console.log(index);
    		
    		$.ajax({
    			url : "updateiStatus.mb",
    			data : {mid : mid, bid : bid},
    			type : "post",
    			success:function(data){
					alert("가입신청이 취소되었습니다.");
					$("#tr" + index).remove();
					$("#cancelBtn1").click();
    			},
    			error:function(){
    				console.log("실패");
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