<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="category" value="${['JAVA','C','C++','C#','RUBY','nodejs','PYTHON','SCALA','GO','RUST']}"/>
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
  <link href="resources/css/lightslider.css" rel="stylesheet">
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
	.title{
		padding:5px;
		font-size:40px;
		float: center;
	}
	
	.drop_category{
		font-size:40px;
		float: right;
	}
	
	.band_box:hover{
		box-shadow: 0px 0px 5px rgb(0, 0, 0, .8);
	}
	
	.drop_category:hover{
		cursor: pointer;
	}
	
	/* 카테고리 목록*/
	ul{
		list-style: none outside none;
	    padding-left: 0;
	          margin: 0;
	}
	.content-slider li{
	    text-align: center;
	    color:black;
	}
	.content-slider img {
		width:100px;
		height:100px;
	    margin: 0;
	    transition: all 0.4s ease-out;
	}
	
	.content-slider img:hover{
		box-shadow: 5px 10px 18px #888888;
		transition: all 0.4s ease-out;
	}	
	
</style>

<body class="home page page-id-4 page-template page-template-template_home-php">
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"/>
    <script src="resources/js/lightslider.js"></script>
    <div class="container">
    
	<div class="widget">
		<div class="item">
           <ul id="content-slider" class="content-slider">
           	<c:forEach var='c' items='${category}'>
           	<c:choose>
           		<c:when test="${c eq kind}"></c:when>
           		<c:when test="${c eq 'C++'}">
               		<li><a href='categoryDetail.category?kind=cpp'><img src='${contextPath}/resources/images/category/cpp.png'></a></li>
           		</c:when>
           		<c:when test="${c eq 'C#'}">
           			<li><a href='categoryDetail.category?kind=csharp'><img src='${contextPath}/resources/images/category/Csharp.png'></a></li>
           		</c:when>
           		<c:otherwise>
           			<li><a href='categoryDetail.category?kind=${c}'><img src='${contextPath}/resources/images/category/${c}.png'></a></li>
           		</c:otherwise>
           	</c:choose>
            </c:forEach>
               <%-- <li>
                   <a href='categoryDetail.category?kind=cpp'><img src='${contextPath}/resources/images/category/cpp.png'></a>
               </li>
               <li>
                   <a href='categoryDetail.category?kind=csharp'><img src='${contextPath}/resources/images/category/Csharp.png'></a>
               </li> --%>
           </ul>
    	</div>
	</div>
    
      <div class="main col-md-12 col-xs-12" style='display:table; margin-bottom:30px'>
      <div class="widget" style='padding:20px; margin-top:30px;'>
	      	<div class='band-title'>
	      		<label class='title'>${kind} </label>
	      	</div>
      	</div>
      </div>
    <!-- 밴드 리스트 -->
       <div id='' class="row team-row" style='margin-right:auto; margin-left:auto;'>
	 	<c:forEach var='b' items='${list}' >
	          <div class="col-md-6 col-xs-6">
			 	<a href='${b.bid}'>
		            <div class="widget band_box" style=''>
		              <div class="media">
		                <div class="media-left media-middle">
	                    	<img class="media-object" src="${contextPath}/resources/upload_images/${b.p_editName}" style='width:100px; height:70px' alt="...">
		                </div>
		                <div class="media-body">
		                  <h4 class="media-heading" style='color:#25afe5;'>${b.bName}</h4>
		                   <p class='band_category' style='margin-bottom: 0px;'>${b.bIntro}</p>
		                   <label>인원 수 : ${b.countMember}</label>
		                </div>
		              </div>
		            </div>
		       	</a>
	          </div>
       	</c:forEach>
       </div>   
    
    
    </div>

	<script>
	 $(document).ready(function() {
		$("#content-slider").lightSlider({
			item:5,
            loop:true,
         	auto:true,
            prevHtml: '<img src="https://t1.daumcdn.net/cfile/tistory/18718E3D5083FDF705"/ style="width:40px; height:40px; transform: rotate(180deg)">',
            nextHtml: '<img src="https://t1.daumcdn.net/cfile/tistory/18718E3D5083FDF705"/ style="width:40px; height:40px">'
       });
	});
	</script>

</body>
</html>