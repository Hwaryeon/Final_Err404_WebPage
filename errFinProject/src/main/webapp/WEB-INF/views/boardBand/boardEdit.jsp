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

	   
	   
      $("#btnUpdate").click(function(){
    	  var mId = "${row.mId}"
    	   		var boardId = "${row.boardId}"
    	   		var bContent = "${row.bContent}"
    	   		var bId = "${row.bId}"
    	   		console.log(mId);
    	   		console.log(boardId);
    	   		console.log(bContent);
    	   		
    	   		
    	   		location.href="updateBoard.do?mId=" + mId + "&boardId=" + boardId +"&bContent=" + bContent +"&bId=" + bId;
         

    /*      document.form1.action="updateBoard.do";
         document.form1.submit(); */
      });
   });
   
   
/* 	function update(){
   		var mId = "${row.mId}"
   		var boardId = "${row.boardId}"
   		var bContent = "${row.bContent}"
   		var bId = "${row.bId}"
   		console.log(mId);
   		console.log(boardId);
   		console.log(bContent);
   		alert(bId);
   		
   		
   		location.href="updatePage.do?mId=" + mId + "&boardId=" + boardId +"&bContent=" + bContent +"&bId=" + bId;
   	} */
   
</script>

</head>
<style>
#categort-posts-widget-2 {
   background-color: transparent;
}
.
</style>
<body
   class="home page page-id-4 page-template page-template-template_home-php">
   <!-- TOP NAV -->
   
     <jsp:include page="../common/menubar.jsp" />
      <jsp:include page="../common/footer.jsp" />




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
                     style="color: #222; font-size: 21px; margin-bottom: 15px; font-weight: 600; margin-top: 20px;">밴드명</h2>
                  <h4
                     style="display: inline-block; font-size: 13px; font-weight: 400; color: #333;">
                     멤버 4<a href="#"
                        style="position: relative; padding-left: 12px; color: #fdb00d !important; font-size: 13px;">
                        초대코드 </a>
                  </h4>
                  <h4
                     style="margin-top: 14px; padding-top: 13px; border-top: 1px solid #e1e1e1;">
                     <a href="#"
                        style="font-size: 12px; font-weight: 400; color: #666; text-decoration: none;">*
                        밴드 설정</a>
                  </h4></li>
            </ul>
            <div class="clear"></div>
         </div>

      </div>
      
	
	 
               
		
      <div class="main col-md-6 col-xs-12">

			<input type="hidden" path="boardId"/>

         <div class="widget clearfix">
            <div id="respond" class="comment-respond">
               <h3 id="reply-title" class="comment-reply-title">
                  게시글 수정<small><a rel="nofollow"
                     id="cancel-comment-reply-link" href="" style="display: none;">Cancel
                        reply</a></small>
               </h3>
               <form name="form1" action="updateContent.do" method="post" encType = "multipart/form-data" >
                  <input type="hidden" id="boardId" name="boardId" value="${board.boardId }"> 
                  <input type="hidden" id="bId" name="bId" value="${board.bId }">
                  <p class="comment-notes">
                     수정할 내용을 입력해주세요 <span class="required">*</span>
                  </p>
                  <p class="comment-form-comment">
                     <label for="comment"></label>
                     <textarea  name="bContent" id="bContent" cols="45" rows="8"
                        aria-required="true">${ board.bContent }</textarea>
              
                  </p>
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
                      <button id="btnUpdate">수정</button>
                      </span> 
                  </p>
               </form>
            </div>
            <!-- #respond -->
         </div>
         
         


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
   <script src="${ contextPath }/resources/js/jquery.min.js"></script>
   <script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
   <script src="${ contextPath }/resources/js/custom.js"></script>
</body>
</html>