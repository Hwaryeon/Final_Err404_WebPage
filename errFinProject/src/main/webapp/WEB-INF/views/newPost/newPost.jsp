<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <title>Weekend Magazine</title>
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
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
                      <a href="#" target="_blank" >                 
                <img src="img/ad-468x60.png " alt="">
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

        <div class="left-sidebar col-md-3" role="complementary">

            <div id="text-html-widget-2" class="widget fullwidth text-html">
                <h1 class="widget-title"></h1>
                <div>
                    <div class="socialize">
                        <h4>밴드 만들기</h4>
                        <ul>
                           <!--  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li> -->
                            <button>+</button>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>

           <div class="recent-widget widget padding-0" id="tabbed-widget">
                <ul class="nav nav-justified nav-tabs">
                    <li class="active"><a href="#popular" data-toggle="tab">내 밴드
                    <em style="color:#2ecc71; margin-left:5px;">${fn:length(bList)}</em> </a></li>
                    <!-- <li><a href="#recent" data-toggle="tab">recent</a></li> -->
                </ul>
                <div class="tab-content padding-10">
                    <div class="tab-pane fade in active" id="popular">
                        <ul class="post-list">
                            
                            <c:set var="num" value="1"/>
                            <c:forEach var="b" items="${bList}">
                            
                            	<li>
                                <div class="thumb">
                                	<input type="hidden" value="${b.bid }">
                                    <a href="#">
                                        <span class="recent-count">${num }</span>
                                        
                                        <c:forEach var="p" items="${bpList }">
                                        	<c:if test="${ b.bid == p.bid  }">
                                        		<img width="60" height="60" src="${ contextPath }/resources/upload_images/${p.editName }" alt="">
                                        	</c:if>
                                        </c:forEach>
                                    </a>
                                </div>
                             	   <h4 style="margin-top:14px;"><a href="#">${b.bname }</a></h4>
	                            </li>
	                   
	                            <c:set var="num" value="${num + 1}"/>

								                            
                            </c:forEach>
                            
                            
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="recent">
                        <ul class="post-list">
                            <li>
                                <div class="thumb">
                                    <a href="#">
                                        <span class="recent-count">6</span>
                                        <img width="60" height="60" src="http://placehold.it/56x56" alt="">
                                    </a>
                                </div>
                                <h4><a href="#">A wonderful serenity has taken possession</a></h4>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="#">
                                        <span class="recent-count">19</span>
                                        <img width="60" height="60" src="http://placehold.it/56x56" alt="">
                                    </a>
                                </div>
                                <h4><a href="#">The Secret is based on the earlier film of the same name</a></h4>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="#">
                                        <span class="recent-count">2</span>
                                        <img width="60" height="60" src="http://placehold.it/56x56" alt="">
                                    </a>
                                </div>
                                <h4><a href="#">The tenet of the film and book is that the universe</a></h4>
                            </li>
                            <li>
                                <div class="thumb">
                                    <a href="#">
                                        <span class="recent-count">34</span>
                                        <img width="60" height="60" src="http://placehold.it/56x56" alt="">
                                    </a>
                                </div>
                                <h4><a href="#">The book is very much influenced by Wallace</a></h4>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            
        </div>

        <div class="main col-md-6 col-xs-12">

          	<!-- <div class="breadcrumbs widget">
              <ul class="clearfix">
                <li><h4 class="title">Path</h4></li>
                <li><a href="#">Weekend</a></li>
                <li><a class="active" href="#">Culture &amp; Art</a></li>
              </ul>            
            </div> -->


		<c:forEach var="np" items="${npList }">

		<div class="post widget" style="margin-bottom:34px;">
              <div class="post-social" style="border-top: 0px solid #EAEAEA; padding-top: 10px;">
                <div class="share-container" style="width:100%;">
                
                <c:forEach var="b2" items="${bList }">
                	<c:if test="${b2.bid == np.bid }">
                	
                     	 <span class="share-title">${b2.bname }</span>
                      </c:if>
                   </c:forEach>
                  </div>
              </div>
              
              <div class="post-meta" style="padding-bottom:10px;">
                  <!-- June 22, 2014 7:33 pm    -->     
                  <a href="" class="print" title="Print"><i class="fa fa-print"></i></a>
              </div>
              <div class="box-content widget fullwidth" id="comments" style="margin-bottom:0px;">
              <h4 class="comment-title"></h4>
              <ol class="commentlist">
                <li class="comment parent">
                
                    <div class="comment-body">
            
                    <div class="line"></div>
                    <div class="comment-vcard">
                        <img width="60" height="60" alt="" src="http://placehold.it/70x70" class="avatar">            
                        <!-- <span class="author-tag">Author</span> -->
                    </div>
                    
                    <div class="comment_detail" style="width: 423px;">
                        
                        <div class="comment-header">
                            
                            <span class="author">작성자 이름</span> 
                            
                            <span class="date">
                                <a href="#">${np.bdate }</a>
                            </span>
                            
                            <span class="reply">
                                <a class="comment-reply-link" href="#">신고</a>
                            </span>
            
                        </div><!--comment-header-->
                        
                    </div><!--.comment_detail-->
                    
                    </div><!--.comment-body-->
                </li><!--Parent li-->
                
                
              </ol>
            </div>
              <div class="post-content" style="margin-top:60px;border-top:2px solid #EAEAEA; padding-top:15px;">
              
                <!-- <h1 class="post-title"><a href="#">Pistorius numb with grief and shock over death of girlfriend, family says the truth</a></h1>
                <p class="bold">Our entire family is devastated, we are in a state of total shock - first about the tragic death of Reeva, who we had all got to know well and care for deeply over the last few months," the statement, from Arnold Pistorius, uncle of the accused. All of us saw at first hand how close she had become to Oscar.</p> -->
                <p>${np.bcontent }</p>
                <!-- <blockquote>Intelligence services, identified energy, finance, information technology, aerospace and automotive companies as the most frequent targets of hacking campaigns that appear state sponsored, according to The Washington Post earlier this week.</blockquote>
                <img class="post-image img-beresponsive" src="http://placehold.it/469x291" alt=""> -->
              </div>
            </div>

		</c:forEach>

		<div class="box-content widget fullwidth" id="comments" style="margin-bottom:0px;">
              <h4 class="comment-title">댓글 3</h4>
              <ol class="commentlist">
                <li class="comment parent">
                
                    <div class="comment-body">
            
                    <div class="line"></div>
                    <div class="comment-vcard">
                        <img width="60" height="60" alt="" src="http://placehold.it/70x70" class="avatar">            
                        <!-- <span class="author-tag">Author</span> -->
                    </div>
                    
                    <div class="comment_detail">
                        
                        <div class="comment-header">
                            
                            <span class="author">john</span> 
                            
                            <span class="date">
                                <a href="#">2:14 AM 22 feb 2013</a>
                            </span>
                            
                            <span class="reply">
                                <a class="comment-reply-link" href="#">신고</a>
                            </span>
            
                        </div><!--comment-header-->
                        
                        <p>Just testing out comments.</p>
                        
                    </div><!--.comment_detail-->
                    
                    </div><!--.comment-body-->
                </li><!--Parent li-->
                
                <li class="comment parent">
                
                    <div class="comment-body">
                        <div class="line"></div>
                        
                        <div class="comment-vcard">
                            <img width="60" height="60" alt="" src="http://placehold.it/70x70" class="avatar">
                            <span class="author-tag"></span>
                        </div>
                        
                        <div class="comment_detail">
                            
                            <div class="comment-header">
                                
                                <span class="author">David</span> 
                                
                                <span class="date">
                                    <a href="#">2:14 AM 22 feb 2013</a>
                                </span>
                                
                                <span class="reply">
                                    <a class="comment-reply-link" href="#">신고</a>
                                </span>
                                
                            </div><!--comment-header-->
                            
                            <p>This is a great post. keep the content going!!!</p>
                            
                        </div><!--.comment_detail-->
                        
                    </div><!--.comment-body-->
                    
                </li><!--Parent li-->
                
                <li class="comment parent">
                
                    <div class="comment-body">
            
                        <div class="line"></div>
                        
                        <div class="comment-vcard">
                            <img width="60" height="60" alt="" src="http://placehold.it/70x70" class="avatar">            
                            <span class="author-tag"></span>
                        </div>
                        
                        <div class="comment_detail">
            
                            <div class="comment-header">
                                
                                <span class="author">badseed</span> 
                                
                                <span class="date">
                                    <a href="#">2:14 AM 22 feb 2013</a>
                                </span>
                                
                                <span class="reply">
                                    <a class="comment-reply-link" href="#">신고</a>
                                </span>
            
                            </div><!--comment-header-->
                            
                            <p>hello</p>
                            
                        </div><!--.comment_detail-->
                        
                    </div><!--.comment-body-->
                
                </li><!--Parent li-->
              </ol>
            </div>

		<div class="widget clearfix">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title" style="border-bottom:0px; float:left; margin-right:20px;">댓글쓰기 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="#" method="post" id="commentform" class="comment-form" style="float:left;">
                  <!-- <p class="comment-form-author"><label for="author">Name <span class="required">*</span></label> <input id="author" name="author" type="text" value="" size="30" aria-required="true"></p>
                  <p class="comment-form-email"><label for="email">Email <span class="required">*</span></label> <input id="email" name="email" type="text" value="" size="30" aria-required="true"></p> -->
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment" style="float:left; width:93%; margin-right: 10px;">
                  <!-- <label for="comment">Comment</label> --> 
                  <textarea id="comment" name="comment" cols="45" rows="1" aria-required="true" style="min-height:1px; resize: none;" onclick="this.value=''">댓글을 입력해주세요</textarea></p>       
                  <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr>
                  tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></p>
                  <p class="form-submit" style="float:left; width:10px;">
                  <input name="submit" type="submit" id="submit" value="Post Comment">
                  <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                  </p>
                </form>
              </div><!-- #respond -->
            </div>





            <div class="widget pagination">
              <div class="wp-pagenavi">
                  <span class="pages">Page 2 of 3</span>
                  <a class="previouspostslink" href="#">Prev</a>
                  <a class="page smaller" href="#">1</a>
                  <span class="current">2</span>
                  <a class="page larger" href="#">3</a>
                  <a class="nextpostslink" href="#">Next</a>
              </div>             
            </div>

        </div>

      <div class="right-sidebar col-md-3" role="complementary">


            <div id="categort-posts-widget-2" class="widget fullwidth categort-posts">
            <h1 class="widget-title">이런 밴드 어떠세요? </h1>
                <ul class="tvshows">
                   <c:set var="num2" value="1"/>
                    <c:forEach var="ran" items="${ranList}">
                    	 <li>
                        <a href="#">
                            <span class="comment-count">${num2 }</span>
                            
                            <c:forEach var="rp" items="${rpList }">
                                        	<c:if test="${ ran.bid == rp.bid  }">
                                        		<img src="${ contextPath }/resources/upload_images/${rp.editName }" />
                                        	</c:if>
                            </c:forEach>
                                        	
                        </a>
                        <h4><a href="#">${ran.bname }</a></h4>
                        
                        <c:forEach var="bmc" items="${bmcList }">
                        	<c:if test="${ ran.bid == bmc.bid  }">
                        		<h5><a href="#">멤버 ${bmc.mcount }</a></h5>
                        	</c:if>
                        </c:forEach>
                        
                    </li>
                    
                    <c:set var="num2" value="${num2 + 1 }"/>
                    </c:forEach>
                    
                </ul>
                <div class="clear"></div>
            </div>

            <div id="tag_cloud-2" class="widget fullwidth widget_tag_cloud">
                <h1 class="widget-title">주제별 밴드 찾기</h1>
                <div class="tagcloud">
                
                	<c:forEach var="b" items="${cList}">
                	
                		<a href="#">${b.cname }</a>
                	
                	</c:forEach>
                
                
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