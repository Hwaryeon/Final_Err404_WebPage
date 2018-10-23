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
<jsp:include page="../common/menubar.jsp" />
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
	
	<c:set var="comCount" value="0"/>
	

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
                        			
	                        			<a href="boardMemberInvite.do?bid=${bid}" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
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


            <div class="post widget">
              <div class="post-meta">
                  ${ boards.bdate }    
                  
                  
                  <span class="reply" style="float:right;">
                  
                				  <!-- 신고글 번호 -->
                            	<input type="hidden" value="${ boards.boardid }">
                            	
                            	<!-- 신고글 밴드 번호 -->
                            	<input type="hidden" value="${boards.bid }">
                            	
                            	<!-- 신고글 유저 번호 -->
                            	<input type="hidden" value="${boards.mid }">
                            	
                            	<!-- 신고글 유저 이름 -->
                            	<c:forEach var="m" items="${ mList }">
                            
	                            	<c:if test="${ m.mid == boards.mid }" >
	                            		<input type="hidden" value="${ m.mname }">
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고글 내용 -->                            	
                            	<input type="hidden" value="${boards.bcontent }">
                            	
                            	<!-- 신고 타입 -->
                            	<input type="hidden" value="C">
                  
                  
                  
                  <c:if test="${  sessionScope.loginUser.mid == boards.mid  }">  
                  <a class="comment-reply-link updateBoard" style="cursor:pointer; margin-right:5px; margin-left:5px;">수정</a>
	              <a class="comment-reply-link deleteContent" style="cursor:pointer;">삭제</a>
                  
                  </c:if>
                  <a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
             	
             	
             	</span>
             
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
              
               <c:set var="comCount" value="${comCount + 1 }"/>
              
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
                               
                               <!-- 신고댓글 번호 -->
                            	<input type="hidden" value="${ commentList.boardid }">
                            	
                            	<!-- 신고댓글 밴드 번호 -->
                            	<input type="hidden" value="${commentList.bid }">
                            	
                            	<!-- 신고댓글 유저 번호 -->
                            	<input type="hidden" value="${commentList.mid }">
                            	
                            	<!-- 신고댓글 유저 이름 -->
                            	<c:set var="doneLoop" value="false"/>
                            	<c:forEach var="m" items="${ mList }">
                            
                            		<c:if test="${not doneLoop }">
		                            	<c:if test="${ m.mid == commentList.mid }" >
		                            		<input type="hidden" value="${ m.mname }">
		                            		<c:set var="doneLoop" value="true"/>
		                          	  	</c:if>
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고댓글 내용 -->                            	
                            	<input type="hidden" value="${commentList.bcontent }">
                            
                          		 
                          		 <!-- 신고 타입 -->
                            	<input type="hidden" value="M">
                               
                          		 <input type="hidden" value="${comCount}">
                          		 
                          		<input type="hidden" value="${ commentList.ref_bid }"> 
                          		 
                                
                                <c:if test="${commentList.mid != sessionScope.loginUser.mid}">
	                                    <a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
                                </c:if>
                                <c:if test="${commentList.mid == sessionScope.loginUser.mid}">
	                                <a class="comment-reply-link updateBoard" style="cursor:pointer; margin-right:5px; margin-left:5px;">수정</a>
	                                <a class="comment-reply-link deleteBoard" style="cursor:pointer;">삭제</a>
                               </c:if>
                               
                               
                               </span>
                                
                            </div><!--comment-header-->
                            
                            <p>${ commentList.bcontent }</p>
                            
                        </div><!--.comment_detail-->
                        
                    </div><!--.comment-body-->
                    
                </li><!--Parent li-->
                
                <div class="widget clearfix" id="updateBoardArea${comCount}" style="display:none;">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title" style="border-bottom:0px; float:left; margin-right:20px;">댓글 수정 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="updateComment.bd" method="post" id="commentform" class="comment-form" style="float:left;">
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
                
                
                </c:forEach>
                
                
              </ol>
            </div>

            <div class="widget clearfix">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title" style="border-bottom:0px; float:left; margin-right:20px;">댓글쓰기 <small><a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">Cancel reply</a></small></h3>
                <form action="insertComment.bd" method="post" id="commentform" class="comment-form" style="float:left;">
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment" style="float:left; width:93%; margin-right: 10px;">
                            	
                  <input name="boardid" type="hidden" value="${boards.boardid }">
                            	
                  <input id="bid" name="bid" type="hidden" value="${ bid }">


                  <textarea id="comment" name="comment" cols="55" rows="1" aria-required="true" style="min-height:1px; resize: none;" onclick="this.value=''">댓글을 입력해주세요</textarea></p>       
                  <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr>
                  tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></p>
                  <p class="form-submit" style="float:left; width:10px;">
                  <input name="submit" type="submit" id="submit" value="댓글 등록" style="background-color: #5497e7;">
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
            class="widget fullwidth categort-posts" style = "background : white;">
            <h1 class="widget-title">최근 사진</h1>
            <ul class="tvshows">
            <c:forEach var = "sidePhoto" items = "${ rightAlbum }" varStatus = "idx">
            <c:if test = "${idx.count mod 2 == 1 }">
               <li>
              </c:if>
              <a href="#"> <img
                     style="min-height: 100px; height: 100px; width: 100px;"
                     src="${contextPath }/resources/upload_images/${sidePhoto.edit_name}" alt="">
               </a>
               <c:if test = "${idx.count mod 2 != 1 }">
               	</li>
               </c:if>
               </c:forEach>
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
  <input type="hidden" id="rType" value=""/> 
  <input type="hidden" id="ref_bid" value=""/>
  
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="reportNewPost" data-remodal-action="confirm" class="remodal-confirm">신고하기</button>
</div>

<div class="remodal" data-remodal-id="modal2" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div class="widget-content">
						<ul>
							<li>
								<h4 class="list-title" id="reply-title2" 
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									댓글 삭제
								</h4>
							</li>
							<li>
								<h4 class="list-title" id="reply-content" 
									style="display: block; word-wrap: break-word; word-break: break-all; font-size: 14px; font-weight: 400; color: #222;">
									해당 댓글을 삭제하시겠습니까 ?
								</h4>
							</li>
						</ul>
					</div>
  <br>
  <input type="hidden" id="boardid2" value=""/> 
  <input type="hidden" id="ref_bid2" value=""/>
  <button data-remodal-action="cancel" class="remodal-cancel">취소</button>
  <button id="deleteContentBu" data-remodal-action="confirm" class="remodal-confirm">확인@</button>
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
	
	var rType = document.getElementById('rType').value;
	var ref_bid = document.getElementById('ref_bid').value;
	
	
	/* var mbid = document.getElementById('mbid').value;
	*/
	location.href="reportComment.bd?boardid=" + boardid + "&bid=" + bid + "&mid=" + mid + "&radioVal=" + radioVal + 
			"&rType=" + rType + "&ref_bid=" + ref_bid; 
	
});

$('#deleteBoardBu').click(function(){
	
	var boardid = document.getElementById('boardid2').value;
	var ref_bid = document.getElementById('ref_bid2').value;
	
	location.href="deleteComment.bd?boardid=" + boardid + "&ref_bid=" + ref_bid; 
	
});


</script>
<script>
 $('#deleteContentBu').click(function(){
	
	console.log('deleteContentBu');
	
	var boardid = document.getElementById('boardid2').value;
	
	var bid = document.getElementById('bid').value;
	
	console.log('deleteContentBu');
	
	location.href="deleteBoard.bd?boardid=" + boardid + "&bid=" + bid; 
	
});

</script>
	
	
	<script>
		$('.reportBoard').click(function(){
			 
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
			 
			 document.getElementById('rType').value = ($(this).parents().children("input").eq(5).val());
			 
			 document.getElementById('ref_bid').value = ($(this).parents().children("input").eq(7).val());
			 
			 location.href="#modal";
		});
		
		$('.deleteBoard').click(function(){
			 
			 document.getElementById('boardid2').value = $(this).parents().children("input").eq(0).val();
			 document.getElementById('ref_bid2').value = ($(this).parents().children("input").eq(7).val());
			 
			 document.getElementById('reply-title2').innerHTML = '댓글 삭제';
			 document.getElementById('reply-content').innerHTML = '해당 댓글을 삭제하시겠습니까 ?';
			
			 
			var con = document.getElementById('deleteContentBu');
			 var con2 = document.getElementById('deleteBoardBu');
             
             con.style.display = 'none';
             con2.style.display = '-webkit-inline-box'; 
			 
			 
			 location.href="#modal2";
		});
		
		$('.deleteContent').click(function(){
			 
			 document.getElementById('boardid2').value = $(this).parents().children("input").eq(0).val();
			 
			 document.getElementById('reply-title2').innerHTML = '게시글 삭제';
			 document.getElementById('reply-content').innerHTML = '해당 게시글을 삭제하시겠습니까 ?';
			 
			 var con = document.getElementById('deleteContentBu');
			 var con2 = document.getElementById('deleteBoardBu');
             
             con2.style.display = 'none';
             con.style.display = '-webkit-inline-box';
			 
			 
			 location.href="#modal2";
		});
		
		
		
		
		$('.updateBoard').click(function(){
			
			 
			var count = $(this).parents().children("input").eq(6).val();
			console.log('count : ' + count);
			 
			var str = 'updateBoardArea' + count;
			 
			var con = document.getElementById(str);
			 
			if(con.style.display=='none'){
		        con.style.display = 'block';
		    }else{
		        con.style.display = 'none';
		    }


			 
			 
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