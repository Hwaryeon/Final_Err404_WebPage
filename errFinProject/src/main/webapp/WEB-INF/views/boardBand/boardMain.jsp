<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>ERR404</title>
<!-- CSS -->
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet"> <link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/sss.css" rel="stylesheet">
<!-- Skin -->
<link href="${ contextPath }/resources/skins/light-pink-blue.css" rel="stylesheet">

<script>
   $(document).ready(function(){
	   
	  /*  $("#btnUpdate").click(function(){
		  location.href="updatePage.do"; 
	   }); */
	   
	   
      $("#btnSave").click(function(){
         var bContent = $("#bContent").val();
         if(bContent==""){
            alert("내용을 입력하세요");
            document.form1.bContent.focus();
            return;
         }
         
         document.form1.submit();
      });
   });
   
</script>

</head>
<style>
#categort-posts-widget-2 {
   background-color: transparent;
}

  	#btns:hover{
  		cursor : pointer;
  	}



</style>
<body
   class="home page page-id-4 page-template page-template-template_home-php">
   <jsp:include page="../common/menubar.jsp" />
   
   <div class="container">

      <div class="left-sidebar col-md-3" role="complementary" >

         <div id="categort-posts-widget-2" class="widget fullwidth categort-posts" style = "background : white;">
            <ul class="tvshows">
               <li><a href="#"> <!-- <span class="comment-count">11</span> -->
                     <img src="${ contextPath }/resources/upload_images/${pf.editName }" alt="">
               </a>
                  <h2
                     style="color: #222; font-size: 21px; margin-bottom: 15px; font-weight: 600; margin-top: 20px;">${ Band.bname }</h2>
                  <h4
                     style="display: inline-block; font-size: 13px; font-weight: 400; color: #333;">
                     멤버 ${memberCount }<a href="boardMemberInvite.do?bid=${band.bid }"
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

      <div class="main col-md-6 col-xs-12">



         <div id="search-3" class="widget fullwidth widget_search">
            <form class="search" role="search" method="get" action="#">
               <input type="search" placeholder="Search &hellip;" value=""
                  name="s" title="Search for:">
            </form>
         </div>

         <div class="widget clearfix">
            <div id="respond" class="comment-respond">
               <h3 id="reply-title" class="comment-reply-title">
                  글 작성<small><a rel="nofollow"
                     id="cancel-comment-reply-link" href="" style="display: none;">Cancel
                        reply</a></small>
               </h3>
               <form name="form1" action="insert.do" method="post"encType = "multipart/form-data" >
                  <input type = 'hidden' name = 'mId' value = "${ sessionScope.loginUser.mid }">
                  <input type = 'hidden' name = 'bId' value = "${ Band.bid }">
                  <p class="comment-notes">
                     멤버들에게 전할 소식을 남겨주세요~ <span class="required">*</span>
                  </p>
                  <p class="comment-form-comment">
                     <label for="comment"></label>
                     <textarea name="bContent" id="bContent" cols="45" rows="8"
                        aria-required="true"></textarea>
                  </p>
                  <%-- <p class="form-allowed-tags">
                     You may use these <abbr title="HyperText Markup Language">HTML</abbr>
                     tags and attributes:
                     <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt;
                        &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt;
                        &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt;
                        &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code>
                  </p> --%>
                  <table
							style="display: table-cell; vertical-align: middle; text-align: center;">
							<tr>
								<td width="270px" style="vertical-align: middle; text-align: left;">
									<img id = "contentImg1" src="resources/images/fileImg.png" alt="" style = "width : 64px; height : 64px;">
									 <input type="file" id="uploadImage" name="uploadImage" multiple onchange="loadImg(this)">
								</td>
								<td style="vertical-align: middle;"><a class="button-navy button-link" onclick = "changeImage()">사진 첨부</a> 
								</td>
							</tr>
						</table>

                  
                  <p class="form-submit">
                     <span style="float: right">
                      <button id="btnSave">게시</button>
                      </span> 
                        <!-- <input type="hidden" name="comment_parent" id="comment_parent"
                        value="0"> -->
                  </p>
               </form>
            </div>
            <!-- #respond -->
         </div>
         
         <c:set var="userId" value="${ sessionScope.loginUser.mid }"/>
         
         <%-- <c:forEach items="${boardMain }" var="row"> --%>
	 <c:forEach items="${boardList }" var="row">

      <div class="post widget" style="margin-bottom:34px;">
      
      
              <div class="post-social" style="border-top: 0px solid #EAEAEA; padding-top: 10px;">
                <div class="share-container" style="width:100%;">
                
               <%--  <c:forEach var="b2" items="${bList }">
                   <c:if test="${b2.bid == do.bid }"> --%>
                   
                     <%--     <span class="share-title">${b2.bname }</span> --%>
                      
                 
                  </div>
              </div>
              
               <div class="post-meta">

               <!-- 게시글 드롭다운 -->
               <div style="float: right" class="menu-primary-navigation-container">
                  <ul id="menu-primary-navigation" class="nav navbar-nav">
                     <li class="dropdown"><a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-expanded="false">
                        <img alt="" src="${ contextPath }/resources/images/dropBar.png"
                        class="avatar avatar-75 photo avatar-default" >
                        
                     </a>
                        <ul class="dropdown-menu" role="menu">
                           <li>
                           <input type="hidden" id="boardid" name="boardid" value="${row.boardId}">
                           <input type="hidden" id="bcontent" name="bcontent" value="${row.bContent}">
                           <input type="hidden" id="mid" name="mid" value="${row.mId}">
                           <input type="hidden" id ="bid" name ="bid" value ="${row.bId}">
                           <a>
                              <img alt="" src="${ contextPath }/resources/images/dropEdit.png?id=${row.boardId}"
                        class="avatar avatar-75 photo avatar-default" >
                        <button type="button" id="btnUpdate" class="btnUpdate" onclick=update()>수정</button></a></li>
                        
                           <li><a href="index2.html">   <img alt="" src="${ contextPath }/resources/images/dropDelete.png"
                        class="avatar avatar-75 photo avatar-default" >&nbsp&nbsp&nbsp&nbsp&nbsp삭제하기</a></li>
                           <li><a href="index3.html">   <img alt="" src="${ contextPath }/resources/images/dropPolice.png"
                        class="avatar avatar-75 photo avatar-default" >&nbsp&nbsp&nbsp&nbsp&nbsp신고하기</a></li>
                        </ul></li>
                  </ul>
               </div>
               </div>
               
               <script>
               	function update(){
               		/*
               		var mId = "${row.mId}"
               		var boardId = "${row.boardId}"
               		var bContent = "${row.bContent}"
               		
               		console.log(mId);
               		console.log(boardId);
               		console.log(bContent);
               		*/
               		
               		
               		/*location.href="updatePage.do?mId=" + mId + "&boardId=" + boardId +"&bContent=" + bContent;
               		*/
               	}
               	
               	$('.btnUpdate').click(function(){
					console.log('클릭2');
               		
               		var bo = $(this).parent().parent().children("input").eq(0).val();
               		console.log('bo : ' + bo);
               		var bcontent = $(this).parent().parent().children("input").eq(1).val();
               		
               		console.log('bcontent : ' + bcontent);
               		
               		var mId = $(this).parent().parent().children("input").eq(2).val();
               		
               		var bId = $(this).parent().parent().children("input").eq(3).val();
               		console.log(bId);
               		location.href="updatePage.do?mId=" + mId + "&boardId=" + bo +"&bContent=" + bcontent + "&bId=" + bId;
               		
               	});
               	
               </script>
               
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
	                            	<c:if test="${ mName.mid == row.mId }" >
	                            
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
	                            	<c:if test="${ mName.mid == row.mId }" >
	                            
	                          		  <span class="author">${ mName.mname }</span>
	                          		  <c:set var="doneLoop2" value="true"/> 
	                          	  </c:if>
                          	  </c:if>
                            </c:forEach>
                            <span class="date">
                                <a href="#">${row.bDate }</a>
                            </span>
                            
                            
            				  <span class="reply">
                            	<!-- 신고글 번호 -->
                            	<input type="hidden" value="${row.boardId }">
                            	
                            	<!-- 신고글 밴드 번호 -->
                            	<input type="hidden" value="${row.bId }">
                            	
                            	<!-- 신고글 유저 번호 -->
                            	<input type="hidden" value="${row.mId}">
                            	
                            	<!-- 신고글 유저 이름 -->
                            	<c:forEach var="m" items="${ mList }">
                            
	                            	<c:if test="${ m.mid == row.mId }" >
	                            		<input type="hidden" value="${ m.mname }">
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고글 내용 -->                            	
                            	<input type="hidden" value="${row.bContent }">
                            	
                            	<c:if test="${row.mId != userId}">
                                	<a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
                                </c:if>
                            </span>
            
                        </div><!--comment-header-->
                        
                        
                        
                    </div><!--.comment_detail-->
                    
                    </div><!--.comment-body-->
                </li><!--Parent li-->
                
                
              </ol>
            </div>
              <div class="post-content" style="margin-top:60px;border-top:2px solid #EAEAEA; padding-top:15px;">
              
                <p>${row.bContent }</p>
             
            	
              </div>
              
            
               
            <!-- 댓글창 -->
               
            <div class="box-content widget fullwidth" id="comments" style="margin-bottom:10px;">
              <h4 class="comment-title">
						
						<c:set var="count" value="0"/>
						<c:forEach var="commentList" items="${commentList}">
						
							<c:if test="${ commentList.refBId eq row.boardId  }">
						
								<c:set var="count" value="${count + 1 }"/>
							
							</c:if>
						</c:forEach>
					댓글 ${count }
				</h4>
              
              
              <ol class="commentlist">
                <c:forEach var="commentList" items="${commentList}">
                
                
                	<c:if test="${ commentList.refBId eq row.boardId  }">
                	 <c:set var="comCount" value="${comCount + 1 }"/>
                	 <li class="comment parent">
                    <div class="comment-body">
            
                    <div class="line"></div>
                    
                     <div class="comment-vcard">
                    
                    	<c:set var="profileLoop" value="false"/>
                         <c:forEach var="mName2" items="${ mList2 }">
                            <c:if test="${not profileLoop }">
	                            	<c:if test="${ mName2.mid == commentList.mId }" >
	                            
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
	                            	<c:if test="${ mName2.mid == commentList.mId }" >
	                            
		                          		  <span class="author">${ mName2.mname }</span> 
		                          		  <c:set var="doneLoop" value="true"/>
		                          	  </c:if>
	                          	  </c:if>
	                            </c:forEach>
                            
                           </span> 
                            
                            <span class="date">
                                <a href="#">${ commentList.bDate }</a>
                            </span>
                            
                             <span class="reply">
                            	<!-- 신고댓글 번호 -->
                            	<input type="hidden" value="${ commentList.boardId }">
                            	
                            	<!-- 신고댓글 밴드 번호 -->
                            	<input type="hidden" value="${commentList.bId }">
                            	
                            	<!-- 신고댓글 유저 번호 -->
                            	<input type="hidden" value="${commentList.mId }">
                            	
                            	<!-- 신고댓글 유저 이름 -->
                            	<c:set var="doneLoop" value="false"/>
                            	<c:forEach var="m" items="${ mList2 }">
                            
                            		<c:if test="${not doneLoop }">
		                            	<c:if test="${ m.mid == commentList.mId }" >
		                            		<input type="hidden" value="${ m.mname }">
		                            		<c:set var="doneLoop" value="true"/>
		                          	  	</c:if>
	                          	  	</c:if>
                          	  	</c:forEach>
                            	
								<!-- 신고댓글 내용 -->                            	
                            	<input type="hidden" value="${commentList.bContent }">
                            
                          		 <input type="hidden" value="${comCount}">
                            
	                            <c:if test="${commentList.mId != userId}">
	                                <a class="comment-reply-link reportBoard" style="cursor:pointer;">신고</a>
	                              </c:if>
                                <c:if test="${commentList.mId == userId}">
               
	                                <a class="comment-reply-link updateBoard" style="cursor:pointer; margin-right:5px; margin-left:5px;">수정</a>
	                                <a class="comment-reply-link deleteBoard" style="cursor:pointer;">삭제</a>
                               </c:if>
                            </span> 
            
                        </div><!--comment-header-->
                        
                        <p>${commentList.bContent }</p>
                        
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
                            	
                  <input name="boardid" type="hidden" value="${ commentList.boardId }">
                  
                  <textarea id="comment" name="comment" cols="45" rows="1" aria-required="true" style="min-height:1px; resize: none;" onclick="this.value=''">${commentList.bContent }</textarea></p>       
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
                <form action="insertComment.do" method="post" id="commentform" class="comment-form" style="float:left;">
                  <p class="comment-form-url"><label for="url">Website</label> <input id="url" name="url" type="text" value="" size="30"></p>
                  <p class="comment-form-comment" style="float:left; width:93%; margin-right: 10px;">
                            	
                  <input name="boardid" type="hidden" value="${ row.boardId }">
                            	
                  <input name="bid" type="hidden" value="${row.bId }">


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
            
            
               
            </div>
         
         
         
         </c:forEach>
         
<script>
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
  <input type="hidden" id="boardId" value=""/>
  <input type="hidden" id="bId" value=""/> 
  <input type="hidden" id="mId" value=""/>  
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
   
   

   <jsp:include page="../common/footer.jsp" />
   
   <script>window.jQuery || document.write('<script src="../../../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.js"></script>
   
	<script>

	$('.updateComment').click(function(){
		 
		var count = $(this).parents().children("input").eq(5).val();
		 
		var str = 'updateBoardArea' + count;
		 
		var con = document.getElementById(str);
		 
		if(con.style.display=='none'){
	        con.style.display = 'block';
	    }else{
	        con.style.display = 'none';
	    }

		$('#deleteBoardBu').click(function(){
			
			var boardid = document.getElementById('boardid2').value;
			
			
			console.log("boardid : " + boardid);
			
			location.href="deleteBoard.np?boardid=" + boardid; 
			
		});
		 
		 
	});
	
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
	
	$(function() {
		$("#uploadImage").hide(); 
		nameResult = -99;
		emailResult = -99;
		ck = -99;
		
	});

	function changeImage(){
		$("#uploadImage").click();
	}
	
	function loadImg(value){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#contentImg1").attr("src", e.target.result);
			}
			reader.readAsDataURL(value.files[0])
		}
	}
	
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
   <script src="${ contextPath }/resources/js/jquery.min.js"></script>
   <script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
   <script src="${ contextPath }/resources/js/custom.js"></script>
</body>
</html>