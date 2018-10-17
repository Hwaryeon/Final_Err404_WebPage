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

      <div class="left-sidebar col-md-3" role="complementary">

         <div id="categort-posts-widget-2"
            class="widget fullwidth categort-posts">
            <h1 class="widget-title"></h1>
            <ul class="tvshows">
               <li><a href="#"> <!-- <span class="comment-count">11</span> -->
                     <img src="http://placehold.it/209x128" alt="">
               </a>
                  <h2
                     style="color: #222; font-size: 21px; margin-bottom: 15px; font-weight: 600; margin-top: 20px;">${ Band.bname }</h2>
                  <h4
                     style="display: inline-block; font-size: 13px; font-weight: 400; color: #333;">
                     멤버 4<a href="#"
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
            <div class="clear"></div>
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
               <form name="form1" action="insert.do" method="post" >
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
									<input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
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
         
         
         
         <c:forEach items="${boardMain }" var="row">


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
               		
               		location.href="updatePage.do?mId=" + mId + "&boardId=" + bo +"&bContent=" + bcontent;
               		
               	});
               	
               </script>
               
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
                            
                             <c:forEach var="mName" items="${ mList }">
                            
                               <c:if test="${ mName.mId == row.mId }" >
                            
                                  <span class="author">${ mName.mName }</span> 
                               </c:if>
                            </c:forEach>
                            <span class="date">
                                <a href="#">${row.bDate }</a>
                            </span>
                            
                  
                            
                            <%-- <span class="author">작성자 이름</span> 
                            
                            <span class="date">
                                <a href="#">${row.bDate }</a>
                            </span> --%>
                            
                           <!--  <span class="reply">
                                <a class="comment-reply-link" href="#">신고</a>
                            </span> -->
            	
            
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
            <div class="box-content widget fullwidth" id="comments">
               <h4 class="comment-title">2 Comments</h4>
               <ol class="commentlist">

                  <ul class="children">
                     <li class="comment">
                        <div class="comment-body">

                           <div class="line"></div>
                           <div class="comment-vcard">
                              <img width="60" height="60" alt=""
                                 src="http://placehold.it/70x70" class="avatar"> <span
                                 class="author-tag"></span>
                           </div>

                           <div class="comment_detail">

                              <div class="comment-header">

                                 <span class="author">이름임</span> <span class="date"> <a
                                    href="#">2:14 AM 22 feb 2013</a>
                                 </span>


                              </div>
                              <!--comment-header-->
                              <p>댓그으ㅡ으으으으ㅡ으으으으으으으으을</p>
                           </div>
                           <!--.comment_detail-->

                        </div>
                        <!--.comment-body-->
                     </li>
                  </ul>

               </ol>
            </div>




            <div id="widget-feedburner-2"
               class="widget fullwidth widget-feedburner">
               <h1 class="widget-title">댓글쓰기</h1>
               <div class="widget-feedburner-counter subscribe">
                  <form action="#" method="post">
                     <input class="feedburner-email input-subscribe" type="text"
                        name="comment" value="댓글을 남겨주세요."
                        onfocus="if (this.value == '댓글을 남겨주세요.') {this.value = '';}"
                        onblur="if (this.value == '') {this.value = '댓글을 남겨주세요.';}">
                     <input class="feedburner-subscribe input-button" type="submit"
                        name="submit" value="보내기">
                  </form>
               </div>




            </div>
               
            </div>
         
         
         
         </c:forEach>
         
         <%-- 
         <div class="post widget">s
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
                           <li><a href="index.html">    <img alt="" src="${ contextPath }/resources/images/dropEdit.png"
                        class="avatar avatar-75 photo avatar-default" >&nbsp&nbsp&nbsp&nbsp&nbsp글 수정</a></li>
                           <li><a href="index2.html">   <img alt="" src="${ contextPath }/resources/images/dropDelete.png"
                        class="avatar avatar-75 photo avatar-default" >&nbsp&nbsp&nbsp&nbsp&nbsp삭제하기</a></li>
                           <li><a href="index3.html">   <img alt="" src="${ contextPath }/resources/images/dropPolice.png"
                        class="avatar avatar-75 photo avatar-default" >&nbsp&nbsp&nbsp&nbsp&nbsp신고하기</a></li>
                        </ul></li>
                  </ul>
               </div>

               <div class="author-content">
                  <h4>
                     <img alt="" src="http://placehold.it/89x89"
                        class="avatar avatar-75 photo avatar-default" height="45"
                        width="45"> <a href="" title="Posts by admin" rel="author">이름</a>
                     <span><a href="#"></a></span> <span> June 22, 2014 7:33 pm
                     </span>

                  </h4>



               </div>
            </div>
            <div class="post-content">
               <img class="post-image img-beresponsive"
                  src="http://placehold.it/469x291" alt="">
               <p class="content">${np.bcontent }</p>

            </div>

            <!-- 댓글창 -->
            <div class="box-content widget fullwidth" id="comments">
               <h4 class="comment-title">2 Comments</h4>
               <ol class="commentlist">

                  <ul class="children">
                     <li class="comment">
                        <div class="comment-body">

                           <div class="line"></div>
                           <div class="comment-vcard">
                              <img width="60" height="60" alt=""
                                 src="http://placehold.it/70x70" class="avatar"> <span
                                 class="author-tag"></span>
                           </div>

                           <div class="comment_detail">

                              <div class="comment-header">

                                 <span class="author">이름임</span> <span class="date"> <a
                                    href="#">2:14 AM 22 feb 2013</a>
                                 </span>


                              </div>
                              <!--comment-header-->
                              <p>댓그으ㅡ으으으으ㅡ으으으으으으으으을</p>
                           </div>
                           <!--.comment_detail-->

                        </div>
                        <!--.comment-body-->
                     </li>
                  </ul>

               </ol>
            </div>




            <div id="widget-feedburner-2"
               class="widget fullwidth widget-feedburner">
               <h1 class="widget-title">댓글쓰기</h1>
               <div class="widget-feedburner-counter subscribe">
                  <form action="#" method="post">
                     <input class="feedburner-email input-subscribe" type="text"
                        name="comment" value="댓글을 남겨주세요."
                        onfocus="if (this.value == '댓글을 남겨주세요.') {this.value = '';}"
                        onblur="if (this.value == '') {this.value = '댓글을 남겨주세요.';}">
                     <input class="feedburner-subscribe input-button" type="submit"
                        name="submit" value="보내기">
                  </form>
               </div>




            </div>

         </div>
</c:forEach> --%>






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

   <jsp:include page="../common/footer.jsp" />
   
	<script>
	
	$(function() {
		$("#userImage").hide(); 
		nameResult = -99;
		emailResult = -99;
		ck = -99;
		
	});

	function changeImage(){
		$("#userImage").click();
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
		
	</script>
   <script src="${ contextPath }/resources/js/jquery.min.js"></script>
   <script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
   <script src="${ contextPath }/resources/js/custom.js"></script>
</body>
</html>