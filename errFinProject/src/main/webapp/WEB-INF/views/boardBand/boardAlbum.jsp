<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <% ArrayList<HashMap<String,Object>> list 
   = (ArrayList<HashMap<String,Object>>)request.getAttribute("list"); %>
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
.
</style>
<body
   class="home page page-id-4 page-template page-template-template_home-php">
   <jsp:include page="../common/menubar.jsp" />
   
   <div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6;">
                  <ul class="nav nav-justified nav-tabs" style="width:610px;margin-left:auto;margin-right:auto;">
                    <li class="active" style="width:150px; min-width:150px;" id="tab1">
                    <a href="#tab1" data-toggle="tab" style="width:150px; min-width:150px;">전체글</a></li>
                    <li style="width:150px; min-width:150px;" id="tab2">
                    <a href="#tab2" data-toggle="tab" style="width:150px; min-width:150px;">사진첩</a></li>
                    <li style="width:150px; min-width:150px;" id="tab3">
                    <a href="#tab3" data-toggle="tab" style="width:150px; min-width:150px;">일정</a></li>
                    <li style="width:150px; min-width:150px;" id="tab4">
                    <a href="#tab4" data-toggle="tab" style="width:150px; min-width:150px;">멤버</a></li>
                  </ul>
                </div>

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
                     <a href="#"
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
               <h3 id="reply-title" class="comment-reply-title">사진첩<small>  
                  <button  id="btnSave">만들기</button>
              <a rel="nofollow"
                     id="cancel-comment-reply-link" href="" style="display: none;">Cancel
                        reply</a></small>
               </h3>
               
              
              <div class="outer">
		<br>

		
	 	<div class="thumbnailArea">
		<% for(int i = 0; i < list.size(); i++){ 
				HashMap<String,Object> hmap = list.get(i);
		%>
			<div class="thumb-list" align="center">
				<div>
					<input type="hidden" value="<%=hmap.get("bid")%>">
					<img src="/jsp/thumbnail_uploadFiles/<%=hmap.get("changeName")%>" width="200px" height="150px">
				</div>
				<p>No. <%=hmap.get("bno") %> <%= hmap.get("btitle") %><br>
				조회수 : <%= hmap.get("bcount") %></p>
			</div>
		
		<% } %>
		</div> 
		<script>
			$(function(){
				$(".thumb-list").click(function(){
					var num = $(this).children().children().eq(0).val();
					//console.log(num);
					location.href="<%=request.getContextPath()%>/selectOne.tn?num=" + num;
				});
			});
		</script>
		
		
		
		<div class="searchArea">
			<select id="searchCondition" name="searchCondition">
				<option>---</option>
				<option value="writer">작성자</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="search">
			<button type="submit">검색하기</button>
		<%-- 	<% if(loginUser != null){ %>
				<button onclick="location.href='/jsp/views/thumbnail/thumbnailInsertForm.jsp'">작성하기</button>
			<% } %> --%>
		</div>
	</div>
              
              
              
              
              
              
              
              
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

   <jsp:include page="../common/footer.jsp" />
   <script src="${ contextPath }/resources/js/jquery.min.js"></script>
   <script src="${ contextPath }/resources/js/bootstrap.min.js"></script>
   <script src="${ contextPath }/resources/js/jquery.bxslider.min.js"></script>
   <script src="${ contextPath }/resources/js/custom.js"></script>
</body>
</html>