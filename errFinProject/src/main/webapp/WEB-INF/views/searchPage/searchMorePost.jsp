<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var='search' value='${result}' scope='request'/>
<c:set var='contents' value='${contents}' scope='request'/>
<!-- 테스트용 변수들 -->

<%-- <c:set var="color" value="${fn:split('cornflowerblue|red|blue|yellow|orangered|green|','|')}" />
<fmt:parseNumber var='random' value='${Math.random()*10}' integerOnly='true'/> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
  <title>Search Result</title>
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <!-- CSS -->
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/responsive.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sss.css" rel="stylesheet">
  <!-- Skin -->
  <link href="${contextPath}/resources/skins/light-pink-blue.css" rel="stylesheet">
  <!-- JavaScript -->
  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
  <script src="${contextPath}/resources/js/sss.min.js"></script>
  <script src="${contextPath}/resources/js/custom.js"></script>
</head>

<style>
	.search-title{
		color:black;
	}
	.contentImg{
		width:200px;
		height:200px;
	}
	
	.band-list{
		height: 230px;
		transition: box-shadow .3s;
	}
	
	.band-list:hover{
		box-shadow: -5px 0px 3px rgb(0, 0, 0, .5);
		cursor:pointer;
	}
	
	.clear {clear:both; height:0; overflow:hidden;}
	
	.band-title{
	    margin-left: auto;
	    margin-right: auto;
	    text-align:left;
	    display: table-cell;
  		vertical-align: middle;
	}
	.media-object{
		width: 150px;
		height: 150px;
    	margin: 7px;
	}
	
	.media-body{
		font-size: 14px;
	}
	
	.media-title{
		font-weight: bold;
	    padding: 10px;
	    padding-bottom: 20px;
	}
	
	.band-name{
		font-size:12px;
	  	display: table-cell; 
	  	vertical-align: middle;
	  	padding-left: 10px;
	}
	.band-img{
		margin-left:8px;
		width:25px;
		height:25px;
		border-radius: 3px;
		display: table-cell; 
	  	vertical-align: middle;
	}
	
	.empty_contents{
		height:200px;
		text-align:center;
		margin-bottom:10px;
	}
</style>

<body class="home page page-id-4 page-template page-template-template_home-php">
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"/>

    <div class="container">
    
      <div class="main col-md-12 col-xs-12" style='display:table; margin-bottom:30px'>
      <div class="widget" style='padding:20px; margin-top:30px;'>
	      	<div class='band-title'>
	       		<label style='font-size:30px; float:left;'>"<font color='black'>${search}</font>" 게시글 검색 결과 - ${fn:length(contents)}건</label>
	      	</div>
      	</div>
      </div>
    
      <div class="main col-md-12 col-xs-12">
          <div class="widget-content">
          	<div id='contents_list' class="row team-row" style='margin-right: auto; margin-left: auto; width:80%'>
	          	<c:forEach var='i' begin='0' end='4' step='1'>
	          	<a href='${contents[i].boardId}'>
		      	  <div class="col-md-12 col-xs-12">
		            <div class="widget band-list">
		              <div class="media">
		                <div class="media-left media-middle">
		                    <img class="media-object" src="${contextPath}/resources/upload_images/${contents[i].a_edit_Name}" alt="...">
		                </div>
		                <div class="media-body">
		                  <h4 class="media-title" style='font-size:20px; color:#00b3f9;'>${fn:substring(contents[i].bContent,0,40)}</h4>
		                  	<c:choose>
					           <c:when test="${fn:length(contents[i].bContent) > 300}">
					           		${fn:substring(contents[i].bContent,0,300)}....
					           </c:when>
					           <c:otherwise>
				        	    	${contents[i].bContent}
					           </c:otherwise> 
				        	</c:choose>
		                </div>
	                	<hr style='margin:6px'>
		                <div class='band-box' style='display:table'>
		                	<img class='band-img' src='${contextPath}/resources/upload_images/${contents[i].p_edit_Name}'/>
		                	<label class='band-name'>${contents[i].bName}</label>
		                </div>
		              </div>
		            </div>
		          </div>
		         </a>
	          </c:forEach>
     	   </div>
          </div>
      </div>
    </div>

	<script>
      // 무한스크롤 인식
      var page = 5;
	  var value = '${search}';
	  var lastScroll = true;
	  
      $(window).scroll(function() {
    	  var scrollHeight = $(window).scrollTop() + $(window).height();
          var documentHeight = $(document).height()-1;
          if(scrollHeight >= documentHeight){
        	  if(lastScroll)
        	  	newContentsScroll();
          }
      });
      
      function newContentsScroll(){
    	  $.ajax({
              Type:'get',
              url: "newContentsList.search",
              async: false,
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                 'page':page,
                 'value':value
              },
              success: function(data){		//가져온 데이터 json으로 파싱
              	var dataValue = JSON.parse(data);
              	if(dataValue.length == 0){
              		$("#contents_list").append("<div class='col-md-12 col-xs-12 empty_contents'>"+
	                         "<h1>더 이상  검색 결과가 없습니다.</h1></div>");
              		lastScroll = false;
              		return false;
              	}
               	page+=5;
               	$.each(dataValue, function(key, value){
	               	var bcontent = value.bContent;
	               	var titleContent ;
	               	if(bcontent.length > 70){		//문자열 길이 70이상이면 자르기
	               		bcontent = bcontent.substr(0,300);
	               		titleContent = bcontent.substr(0,40);
	               	}
	               	$("#contents_list").append("<a href="+value.boardId+"><div class='col-md-12 col-xs-12'>"+
	    		            "<div class='widget band-list'>"+
		              "<div class='media'>"+
		                "<div class='media-left media-middle'>"+
		                    "<img class='media-object' src='${contextPath}/resources/upload_images/"+value.A_edit_Name+"' alt='...'></div>"+
		                "<div class='media-body'>"+
		                  "<h4 class='media-title' style='font-size:20px; color:#00b3f9;'>"+titleContent+"</h4>"+
		                  		bcontent+"...."+
		                "</div><hr style='margin:6px'>"+
		                "<div class='band-box' style='display:table'>"+
		                	"<img class='band-img' src='${contextPath}/resources/upload_images/"+value.P_edit_Name+"'/>"+
		                	"<label class='band-name'>"+value.bName+"</label>"+
		                "</div></div></div></div></a>");
               	});
               },
               error: function(){
                  console.log('에러');
               }
           });
      }
   </script>

</body>
</html>