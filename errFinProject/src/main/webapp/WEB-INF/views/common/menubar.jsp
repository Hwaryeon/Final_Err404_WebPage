<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <title>Weekend Magazine</title>
  <!-- CSS -->
  <link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/sss.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
  
  <!-- JavaScript -->
  
</head>
<body>
<div class="fullwidth bg-pink" style="min-height:84px; height:84px;">
      <div class="container">
        <div class="col-md-6 col-xs-12" style="min-width:600px;">
          <div class="logo" style="width:120px; min-width:120px; float:left;">
            <h1><a href="index.html" title="Weekend Magazine">ERR404</a></h1>
          </div>
          <div id="search-3" class="widget fullwidth widget_search" style="width:300px; min-width:300px; float:left; border:1px solid lightgray; border-radius:11px; height:20px;margin-top:10px;">
          		<!-- 검색 -->
               	<div class="search"  style="color:black;margin:-12px;">
                   <input type="search" id='searchBox' value="" name="searchBox"  placeholder="Search &hellip;" title="Search for:">
               	</div>
               	<!-- /검색 -->
            </div>
        </div>
        <div class="col-md-6 col-xs-12" style="width:525px;">
                     <div class="post widget" style="float:unset; padding-left:138px;">
              <div class="post-social" style="border-top:0px; padding-top:0px;">
                <div class="share-container" style="width:75px;">
                      <span class="share-title" style="color:#25afe5;">새글 피드   |</span>
                  </div>
                  <div class="share-container"style="width:75px;">
                      <span class="share-title" style="color:#25afe5;">밴드 찾기</span>
                  </div>
                  <ul class="share-social">
                     <li><a target="_blank" href="" style="border:0px;"><img src="${ contextPath }/resources/images/al.png " alt="" width=25px; height=25px;></a></li>
                     <li><a target="_blank" href="" style="border:0px;"><img src="${ contextPath }/resources/images/message.png " alt="" width=25px; height=25px;></a></li>
                     <li><a target="_blank" href="" style="border:0px;"><img src="${ contextPath }/resources/images/profile.png " alt="" width=25px; height=25px;></a></li>
                  </ul>
              </div>
            </div>
          </div>
      </div>
    </div>
    <h1 style="font-size:0.001px;">.</h1>
    <script>
    $(document).ready(function(){
    	
        $("#searchBox").keypress(function (e) {
        	if (window.event.keyCode == 13) {	//엔터를 눌렀을때
        		
	         if($('#searchBox').val() != ''){	//비어있지 않으면
	        	 location.href='searchResult.search?value='+$('#searchBox').val();
	         }else{								//검색란이 비어있으면 무반응
	         }
           }

	    });
        
	});
    </script>
</body>
</html>

