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
<body class="home page page-id-4 page-template page-template-template_home-php">

	<c:set var="comCount" value="0"/>

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
                             	   <h4 style="margin-top:14px;"><a href="list.do">${b.bname }</a></h4>
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


		<c:set var="userId" value="1"/>

		<c:forEach var="np" items="${newPostList }">
		
		
		<%-- boardid : ${ np.boardid }
		bid : ${np.bid }
		mid : ${np.mid } --%>
		
		
		<div class="post widget" style="margin-bottom:0px;">
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
                 <!--  <a href="" class="print" title="Print"><i class="fa fa-print"></i></a> -->
              </div>
              <div class="box-content widget fullwidth" id="comments" style="margin-bottom:0px;">
              <h4 class="comment-title"></h4>
              <ol class="commentlist">
                <li class="comment parent">
                
                    <div class="comment-body">
            
                    <div class="line"></div>
                    <div class="comment-vcard">
                    
                    	<c:set var="profileLoop" value="false"/>
                            <c:forEach var="mName" items="${ mList }">
                            <c:if test="${not profileLoop }">
	                            	<c:if test="${ mName.mid == np.mid }" >
	                            
	                          		  <img width="60" height="60" alt="" src="${ contextPath }/resources/upload_images/${mName.edit_name }" class="avatar"> 
	                          		  <c:set var="profileLoop" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                    </div>
                    
                    <div class="comment_detail" style="width: 423px;">
                        
                        <div class="comment-header">
                            
                            <c:set var="doneLoop2" value="false"/>
                            <c:forEach var="mName" items="${ mList }">
                            <c:if test="${not doneLoop2 }">
	                            	<c:if test="${ mName.mid == np.mid }" >
	                            
	                          		  <span class="author">${ mName.mname }</span>
	                          		  <c:set var="doneLoop2" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                            <span class="date">
                                <a href="#">${np.bdate }</a>
                            </span>
                            
                            <span class="reply">
                            	<!-- 신고글 번호 -->
                            	<input type="hidden" value="${ np.boardid }">
                            	
                            	<!-- 신고글 밴드 번호 -->
                            	<input type="hidden" value="${np.bid }">
                            	
                            	<!-- 신고글 유저 번호 -->
                            	<input type="hidden" value="${np.mid }">
                            	
                            	<!-- 신고글 유저 이름 -->
                            	<c:forEach var="m" items="${ mList }">
                            
	                            	<c:if test="${ m.mid == np.mid }" >
	                            		<input type="hidden" value="${ m.mname }">
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고글 내용 -->                            	
                            	<input type="hidden" value="${np.bcontent }">
                            	
                                <a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
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
            
            <div class="box-content widget fullwidth" id="comments" style="margin-bottom:10px;">
              <h4 class="comment-title">
						
						<c:set var="count" value="0"/>
						<c:forEach var="commentList" items="${commentList}">
						
							<c:if test="${ commentList.ref_bid eq np.boardid  }">
						
								<c:set var="count" value="${count + 1 }"/>
							
							</c:if>
						</c:forEach>
					댓글 ${count }
				</h4>
              
              
              <ol class="commentlist">
                <c:forEach var="commentList" items="${commentList}">
                
                
                	<c:if test="${ commentList.ref_bid eq np.boardid  }">
                	 <c:set var="comCount" value="${comCount + 1 }"/>
                	 <li class="comment parent">
                    <div class="comment-body">
            
                    <div class="line"></div>
                    <div class="comment-vcard">
                    
                    	<c:set var="profileLoop" value="false"/>
                         <c:forEach var="mName2" items="${ mList2 }">
                            <c:if test="${not profileLoop }">
	                            	<c:if test="${ mName2.mid == commentList.mid }" >
	                            
	                          		  <img width="60" height="60" alt="" src="${ contextPath }/resources/upload_images/${mName2.edit_name }" class="avatar"> 
	                          		  <c:set var="profileLoop" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                    </div>
                    
                    <div class="comment_detail">
                        
                        <div class="comment-header">
                            
                            <span class="author">
                            
                            	<c:set var="doneLoop" value="false"/>
                            	<c:forEach var="mName2" items="${ mList2 }">
                            
                            	<c:if test="${not doneLoop }">
	                            	<c:if test="${ mName2.mid == commentList.mid }" >
	                            
		                          		  <span class="author">${ mName2.mname }</span> 
		                          		  <c:set var="doneLoop" value="true"/>
		                          	  </c:if>
	                          	  </c:if>
	                            </c:forEach>
                            
                           </span> 
                            
                            <span class="date">
                                <a href="#">${ commentList.bdate }</a>
                            </span>
                            
                            <span class="reply">
                            	<!-- 신고댓글 번호 -->
                            	<input type="hidden" value="${ commentList.boardid }">
                            	
                            	<!-- 신고댓글 밴드 번호 -->
                            	<input type="hidden" value="${commentList.bid }">
                            	
                            	<!-- 신고댓글 유저 번호 -->
                            	<input type="hidden" value="${commentList.mid }">
                            	
                            	<!-- 신고댓글 유저 이름 -->
                            	<c:set var="doneLoop" value="false"/>
                            	<c:forEach var="m" items="${ mList2 }">
                            
                            		<c:if test="${not doneLoop }">
		                            	<c:if test="${ m.mid == commentList.mid }" >
		                            		<input type="hidden" value="${ m.mname }">
		                            		<c:set var="doneLoop" value="true"/>
		                          	  	</c:if>
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고댓글 내용 -->                            	
                            	<input type="hidden" value="${commentList.bcontent }">
                            
                          		 <input type="hidden" value="${comCount}">
                            
                                <a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
                                
                                <c:if test="${commentList.mid == userId}">
                                
	                                <a class="comment-reply-link updateBoard" style="cursor:pointer; margin-right:5px; margin-left:5px;">수정</a>
	                                <a class="comment-reply-link deleteBoard" style="cursor:pointer;">삭제</a>
                               </c:if>
                            </span>
            
                        </div><!--comment-header-->
                        
                        <p>${commentList.bcontent }</p>
                        
                    </div><!--.comment_detail-->
                    
                    </div><!--.comment-body-->
                </li><!--Parent li-->
                <%-- <div class="widget clearfix" id="updateBoardArea${commentList.boardid}"> --%>
                <div class="widget clearfix" id="updateBoardArea${comCount}" style="display:none;">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title" style="border-bottom:0px; float:left; margin-right:20px;">댓글 수정 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="updateBoard.np" method="post" id="commentform" class="comment-form" style="float:left;">
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment" style="float:left; width:93%; margin-right: 10px;">
                            	
                  <input name="boardid" type="hidden" value="${ commentList.boardid }">
                  
                  <textarea id="comment" name="comment" cols="45" rows="1" aria-required="true" style="min-height:1px; resize: none;" onclick="this.value=''">${commentList.bcontent }</textarea></p>       
                  <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr>
                  tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></p>
                  <p class="form-submit" style="float:left; width:10px;">
                  <input name="submit" type="submit" id="submit" value="Post Comment">
                  <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                  </p>
                </form>
              </div><!-- #respond -->
            </div>
                </c:if>
                </c:forEach>
                
                
              </ol>
              <div class="widget clearfix">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title" style="border-bottom:0px; float:left; margin-right:20px;">댓글쓰기 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="insertNewPost.np" method="post" id="commentform" class="comment-form" style="float:left;">
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment" style="float:left; width:93%; margin-right: 10px;">
                            	
                  <input name="boardid" type="hidden" value="${ np.boardid }">
                            	
                  <input name="bid" type="hidden" value="${np.bid }">


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
            </div>
            
            
            
            

		</c:forEach>
		
		<script>
		$('.reportBoard').click(function(){
			 
			 /* var str = ($(this).parents().children("input").eq(4).val()).substr(0, 25); */
			 
			/*  str += '...'; */
			
			var str = ($(this).parents().children("input").eq(4).val());	
			
			
			if(str.length > 24){
				str = str.substr(0, 25);
				str += '...';
			}
			
			 document.getElementById('boardid').value = $(this).parents().children("input").eq(0).val();  
			 document.getElementById('bid').value = $(this).parents().children("input").eq(1).val();
			 document.getElementById('mid').value = $(this).parents().children("input").eq(2).val();
			 
			 document.getElementById('modal1Desc').innerHTML = $(this).parents().children("input").eq(3).val();
			 document.getElementById('modal1Desc2').innerHTML = str;
			 
			 location.href="#modal";
		});
		
		$('.deleteBoard').click(function(){
			 
			 document.getElementById('boardid2').value = $(this).parents().children("input").eq(0).val();
			
			 location.href="#modal2";
		});
		
		
		$('.updateBoard').click(function(){
			 
			var count = $(this).parents().children("input").eq(5).val();
			 
			var str = 'updateBoardArea' + count;
			 
			var con = document.getElementById(str);
			 
			if(con.style.display=='none'){
		        con.style.display = 'block';
		    }else{
		        con.style.display = 'none';
		    }


			 
			 
		});
		
		</script>




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
    
    
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div>
    <h2 id="modal1Title" style="border: 1px solid black;padding: 10px;">신고하기</h2>
    <p id="modal1Desc" style="margin-top:30px; font-size:20px;">
       	신고 이름
    </p> 
    <p id="modal1Desc2" style="font-size:20px;">
       	신고 내용
    </p>
    
    <ul>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									음란 또는 청소년에게 부적합한 내용
									<label style="float:right"> 
										<input name="remember" value="음란 또는 청소년에게 부적합한 내용" type="radio">
								</label>
								</h4>
							</li>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									부적절한 홍보
									<label style="float:right">
										<input name="remember" value="부적절한 홍보" type="radio" >
									</label>
								</h4>
							</li>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									개인정보 노출
									<label style="float:right"> 
										<input name="remember" value="개인정보 노출" type="radio">
									
									</label>
								</h4>
							</li>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									저작권 및 명예훼손/기타권리 침해
									<label style="float:right"> 
										<input name="remember" value="저작권 및 명예훼손/기타권리 침해" type="radio">
									
									</label>
								</h4>
							</li>
						</ul>
    
    
    
  </div>
  <br>
  <input type="hidden" id="boardid" value=""/>
  <input type="hidden" id="bid" value=""/> 
  <input type="hidden" id="mid" value=""/>  
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="reportNewPost" data-remodal-action="confirm" class="remodal-confirm">신고하기</button>
</div>

<div class="remodal" data-remodal-id="modal2" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div class="widget-content">
						<ul>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									댓글 삭제
								</h4>
							</li>
							<li>
								<h4 class="list-title"
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									해당 댓글을 삭제하시겠습니까 ?
								</h4>
							</li>
						</ul>


					</div>
  <br>
  <input type="hidden" id="boardid2" value=""/> 
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="deleteBoardBu" data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<script>

$('#reportNewPost').click(function(){
	
	
	/* console.log("id : " + document.getElementById('boardid').value);
	console.log("id : " + document.getElementById('bid').value);
	console.log("id : " + document.getElementById('mid').value); */
	
	var boardid = document.getElementById('boardid').value;
	var bid = document.getElementById('bid').value;
	var mid = document.getElementById('mid').value;
	
	var radioVal = $('input[name="remember"]:checked').val();
	
	console.log("radio : " + radioVal);
	
	/* var mbid = document.getElementById('mbid').value;
	*/
	location.href="reportPost.np?boardid=" + boardid + "&bid=" + bid + "&mid=" + mid + "&radioVal=" + radioVal; 
	
});

$('#deleteBoardBu').click(function(){
	
	var boardid = document.getElementById('boardid2').value;
	
	
	console.log("boardid : " + boardid);
	
	location.href="deleteBoard.np?boardid=" + boardid; 
	
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