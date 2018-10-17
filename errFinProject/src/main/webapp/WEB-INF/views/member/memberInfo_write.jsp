<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content=" width=device-width, initial-scale=1">
    <title>ERR404 l 마이페이지</title>
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
   <jsp:include page="../common/menubar.jsp" />
    <div class="container" style = "min-height : 700px;">
        <!-- Main Content -->
        <div class="main col-md-9 col-md-push-3 col-xs-12">

            <div class="widget fullwidth post-single">
                <h2 class="post-title">내가 쓴 글</h2><br>
                <div class="widget-content">
                    <ul>
                        <li>

                            <table style="display: table-cell;">
                                <tr style="border-bottom: 1px solid lightgray;">
                                    <td height="50px" width="150px" style="vertical-align: middle; text-align: center;">밴드이름</td>
                                    <td width="600px" style="vertical-align: middle; text-align: center;">작성 글</td>
                                    <td width="150px" style="vertical-align: middle; text-align: center;">작성일자</td>
                                </tr>
                                <c:forEach var = "board" items = "${ list }">
                                <c:set var = "content" value = "${ board.bContent }"/>
                                <tr>
                                    <td height="50px" style="vertical-align: middle; text-align: center;">${ board.bName }</td>
                                    <td style="vertical-align: middle; text-align: center;">${ fn:substring(content, 0, 40) }...</td>
                                    <td style="vertical-align: middle; text-align: center;">${ board.bDate }</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="border: 1px solid lightgray"></td>
                                </tr>
                                </c:forEach>
                            </table>
                            <br>
                            <div align="center">
                                <c:if test = "${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test = "${ pi.currentPage > 1 }">
				<c:url var='bListBack' value = "showMemberInfo_write.mb">
					<c:param name = "requestCurrentPage" value="${ pi.currentPage - 1 }"/>
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
				</c:url>
				<a href = "${ bListBack }">[이전]</a> &nbsp;
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test = "${ p eq pi.currentPage }">
					<font color = "red" size = "4"><b>${ p }</b></font>
				</c:if>
				<c:if test = "${ p ne pi.currentPage }">
					<c:url var="bListCheck" value = "showMemberInfo_write.mb">
						<c:param name="requestCurrentPage" value = "${ p }"/>
						<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					</c:url>
					<a href = "${ bListCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			<c:if test = "${ pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test = "${ pi.currentPage < pi.maxPage }">
				<c:url var= "bListNext" value = "showMemberInfo_write.mb">
					<c:param name = "requestCurrentPage" value = "${ pi.currentPage + 1 }"/>
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
				</c:url>
				<a href = "${ bListNext }"> [다음]</a>
			</c:if>
                            </div>
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

    </div>
	
	<jsp:include page="../common/footer.jsp" />
    
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/sss.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>

</html>
