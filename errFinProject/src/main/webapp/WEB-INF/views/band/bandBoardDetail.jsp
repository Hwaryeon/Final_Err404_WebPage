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


            <div class="post widget">
              <div class="post-meta">
                  ${ boards.bdate }    
                  
                  <c:if test="${  sessionScope.loginUser.mid == boards.mid  }">  
                  <a href="" class="print" title="Print" style="width:70px;"><i class="fa fa-print">수정</i></a>
                  <a href="" class="print" title="Print" style="width:70px;"><i class="fa fa-print">삭제</i></a>
                  
                  </c:if>
                  
                  <a href="" class="print" title="Print" style="width:70px;"><i class="fa fa-print">신고</i></a>
              </div>
              <div class="post-content">
            	
		            ${ boards.bcontent }
            
            
               		 <!-- <img class="post-image img-beresponsive" src="http://placehold.it/469x291" alt=""> -->
               		 <img class="post-image img-beresponsive" src="${ contextPath }/resources/upload_images/${att.edit_name }" alt="">
               		 
               		 
              </div>
            </div>



            <div class="box-content widget fullwidth" id="comments">
              <h4 class="comment-title">댓글 ${ count }</h4>
              <ol class="commentlist">
              
              <c:forEach var="commentList" items="${commentList}">
              
                <li class="comment parent">
                
                    <div class="comment-body">
                        <div class="line"></div>
                        
                        <div class="comment-vcard">
                       
                       		<c:set var="profileLoop" value="false"/>
                            <c:forEach var="m" items="${ mList }">
                            <c:if test="${not profileLoop }">
	                            	<c:if test="${ m.mid == commentList.mid }" >
	                            
	                          		  <img width="60" height="60" alt="" src="${ contextPath }/resources/upload_images/${m.edit_name }" class="avatar"> 
			                            <span class="author-tag"></span>
	                          		  <c:set var="profileLoop" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                       
                       
                       
                        </div>
                        
                        <div class="comment_detail">
                            
                            <div class="comment-header">
                                
                                <span class="author">
                                
                                
                                <c:set var="loop" value="false"/>
                            <c:forEach var="m" items="${ mList }">
                            <c:if test="${not loop }">
	                            	<c:if test="${ m.mid == commentList.mid }" >
	                            
		                                ${ m.mname }
	                          		  <c:set var="loop" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                                
                                
                                </span> 
                                
                                <span class="date">
                                    <a href="#">${ commentList.bdate }</a>
                                </span>
                                
                                <span class="reply">
                                    <a class="comment-reply-link" href="#">신고</a>
                                </span>
                                
                            </div><!--comment-header-->
                            
                            <p>${ commentList.bcontent }</p>
                            
                        </div><!--.comment_detail-->
                        
                    </div><!--.comment-body-->
                    
                </li><!--Parent li-->
                
                </c:forEach>
                
                
              </ol>
            </div>

            <div class="widget clearfix">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="#" method="post" id="commentform" class="comment-form">
                  <p class="comment-notes">Your email address will not be published. Required fields are marked <span class="required">*</span></p>     
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment"><label for="comment">Comment</label> <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea></p>            <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr> tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></p>            <p class="form-submit">
                  <input name="submit" type="submit" id="submit" value="Post Comment">
                  <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                  </p>
                </form>
              </div><!-- #respond -->
            </div>


        </div>
		
		<input type="hidden" id="bid" name="bid" value="${ bid }" >
							
		<script>
			$('#bandSecession').click(function(){
				
				var bid = document.getElementById('bid').value;
				
				location.href="secessionBand.bd?bid=" + bid;
			});
			
			$('#cancle').click(function(){
				
				var bid = document.getElementById('bid').value;
				
				location.href="bandLeader.bd?bid=" + bid;
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
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>