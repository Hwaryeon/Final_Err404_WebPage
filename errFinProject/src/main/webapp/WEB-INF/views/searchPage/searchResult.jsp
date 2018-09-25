<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 테스트용 변수들 -->
<c:set var='search' value='${result}' scope='request'/>
<c:set var='content' value='' scope='request'/>
<c:set var='content2' value='먼저 책에는 머신러닝과 딥러닝의 개념이 나오고 있습니다. 머신 러닝 하면 먼저 생각나는 게 컴퓨터 체스 게임이고, 딥러닝 하면 생각나는 게 바둑게임입니다. 이 두 가지에 댕한 구체적인 묘사보다는 20년전 컴퓨터와 인간의 대결이 펼쳐지던 그 때의 모습을 떠올리면 됩니다. 물론 바둑 게임을 딥러닝으로 구현했던 이유는 바로 머신러닝이 가지고 있는 한계입니다. 딥러닝은 인간이 가지고 있는 뇌기능을 컴퓨터에 최적화 시켰으며, 만약 이세돌과 머신러닝으로 구현된 컴퓨터의 대결이었다면 이세돌의 승으로 끝났을 겁니다. 하지만 인간에 사물을 인식하는 패턴에 기반한 딥러닝 기술을 구현하였고, 그 안에 학습기능을 더했기 때문에 컴퓨터는 이세돌 뿐 아니라 커제까지 무너트릴 수 있게 되었습니다.물론 그로 인해서 우리는 인공지능이 도래하는 미래가 우리 코 앞에 놓여져 있다는 사실을 피부로 느낄 수 있게 된 것이며, 이 책이 올 수 있었던 또다른 이유입니다.' />
<c:set var='content3' value='컴퓨터 전문 저서를 꾸준히 출간하고 있는 영진출판사에서 나온 IT 입문서입니다. 이 책을 쓴 저자는 외국어고를 나와 연세대 일어일문학과를 졸업하고 난 뒤 IT 계열회사에 일하게 됩니다.'/>
<c:set var='array' value='${content}|${content2}|${content3}|${content}|'/>
<c:set var="contentArray" value="${fn:split(array,'|')}" />
<c:set var='writer' value='욥욥이|이순신|이성계|을지문덕'/>
<c:set var="writerArray" value="${fn:split(writer,'|')}" />

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
  <!-- JavaScript -->
  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
  <script src="${contextPath}/resources/js/sss.min.js"></script>
  <script src="${contextPath}/resources/js/custom.js"></script>
  <script src="${contextPath}/resources/js/search/jquery.jscroll.js"></script>
</head>

<style>
	.search-title{
		color:black;
	}
	.contentImg{
		width:200px;
		height:200px;
	}
	
	.contents-list{
		transition: box-shadow .3s;
	}
	
	.contents-list:hover{
		box-shadow: 0px 0px 5px rgb(0, 0, 0, .8);
		cursor:pointer;
	}
	
	.band-list{
		transition: box-shadow .3s;
	}
	
	.band-list:hover{
		box-shadow: -5px 0px 3px rgb(0, 0, 0, .5);
		cursor:pointer;
	}
	
	.clear {clear:both; height:0; overflow:hidden;}
	
	.band-title{
		/* background: linear-gradient(to left,  #e6e6e6, #ffffff); */
	    border-bottom: solid;
	    height: 60px;
	    margin-left: auto;
	    margin-right: auto;
	    text-align:left;
	    display: table-cell;
  		vertical-align: middle;
	}
	.band-name{
		font-size:12px;
	  	display: table-cell; 
	  	vertical-align: middle;
	  	padding-left: 10px;
	  	line-height: 1;
	}
	.band-img{
		margin-left:8px;
		height:30px;
		border-radius: 3px;
		display: table-cell; 
	  	vertical-align: middle;
	}
	
	.empty_contents{
		height:200px;
		text-align:center;
	}
	
	.empty_band{
		height:200px;
		text-align:center;
		margin-bottom:10px;
	}
</style>

<body class="home page page-id-4 page-template page-template-template_home-php">
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"/>

    <div class="container">
    
      <div class="main col-md-12 col-xs-12">
      	<div class="widget" style='padding:20px; margin-top:30px;'>
	      		<h4 class="" style='font-size: 28px; color:black;'>"<label class='search-title'>${search}</label>" 검색 결과</h4>
      		<div class='clear'></div>
      	</div>
      </div>
    
      <div class="main col-md-12 col-xs-12" style='display:table; margin-bottom:30px'>
      	<div class='band-title'>
       		<label style='font-size:40px; float:left;'>게시글 - ${fn:length(contents)}건</label>
       		<c:if test='${fn:length(contents) >= 4}'>
       			<a href='${contextPath}/searchMorePost.search' style='font-size: 20px; float:right;'>더 많은 게시글 보기  <i class='glyphicon glyphicon-chevron-right'></i></a>
       		</c:if>
	        <div class='clear'></div>
      	</div>
      </div>
    
      <div class="main col-md-12 col-xs-12">
        <div class="widget" style='background:#e6e6e6'>
          <div class="widget-content">
          	<!-- 게시물 내용  -->
          	<div class="row team-row" style='margin-right:auto; margin-left:auto;'>
	          	<c:forEach var='i' begin='0' end='3' step='1' >
	          		<c:if test='${empty contents[i]}'>
	          			<div class="col-md-3 col-xs-3">
	          			</div>
	          		</c:if>
	          		<c:if test='${!empty contents[i]}'>
			          <div class="col-md-3 col-xs-3">
			            <div class="widget team-member contents-list" style='height: 360px;'>
			              <img class='contentImg' src="${contextPath}/resources/upload_images/${contents[i].a_edit_Name}">
			              <p style='height:60px'>
			              	<c:choose>
					           <c:when test="${fn:length(contents[i].bContent) > 60}">
					           		${fn:substring(contents[i].bContent,0,60)}....
					           </c:when>
					           <c:otherwise>
				        	    	${contents[i].bContent}
					           </c:otherwise> 
					        </c:choose>
			              </p>
			            <hr style='margin:6px'>
		                <div class='band-box' style='display:table'>
		                	<img class='band-img' src='${contextPath}/resources/upload_images/${contents[i].p_edit_Name}' style='width:30px'/>
		                	<label class='band-name'>${contents[i].bName}</label>
		                </div>
			            </div>
			          </div>
	          		</c:if>
	          </c:forEach>
	          <c:if test='${empty contents}'>
	          	<div class='col-md-12 empty_contents'>
	          		<h1 style=''>게시글 검색결과가 없습니다.</h1>
	          	</div>
	          </c:if>
     	   </div>
     	   
     	   <!-- 게시글 내용 여기까지 -->
     	   
          </div>
        </div>
        
        <div class="main col-md-12 col-xs-12" style='display:table; margin-bottom:30px'>
        	<div class='band-title'>
	        	<label style='font-size:40px; '>밴드 - ${fn:length(band)}건</label>
        	</div>
        </div>
        
        <!-- 밴드 리스트 -->
        <div id='band_List' class="row team-row" style='margin-right:auto; margin-left:auto;'>
        <c:if test='${fn:length(band) == 0}'>
        	<div class='col-md-12 col-xs-12 empty_band'>
        		<h1>더 이상 밴드 검색 결과가 없습니다.</h1>
        	</div>
        </c:if>
        <c:if test='${fn:length(band) != 0}'>
		 <c:forEach var='b' begin='0' end='${fn:length(band)>5 ? 5 : fn:length(band)-1}' step='1' >
          <div class="col-md-10 col-xs-10">
            <div class="widget band-list" style='background: linear-gradient(to left, #e6e6e6, #ffffff);'>
              <div class="media">
                <div class="media-left media-middle">
                    <img class="media-object" src="${contextPath}/resources/upload_images/${band[b].p_edit_Name}" style='width:50px;' alt="...">
                </div>
                <div class="media-body">
                  <h4 class="media-heading" style='color:#25afe5;'>${band[b].bName}</h4>
                  	<c:choose>
			           <c:when test="${fn:length(band[b].bIntro) > 70}">
			           		${fn:substring(band[b].bIntro,0,70)}....
			           </c:when>
			           <c:otherwise>
		        	    	${band[b].bIntro}
			           </c:otherwise> 
			        </c:choose>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
        </c:if>
        </div>   
        <!-- 밴드리스트 여기까지 -->
      </div>
    </div>

   <script>
      // 무한스크롤 인식
      var page = 6;
	  var value = '${search}';
	  var lastScroll = true;
	  
	  (function() {
		  if(${fn:length(band)==0}){
			  lastScroll = false;
		  }
		})();
	  
      $(window).scroll(function() {
    	  var scrollHeight = $(window).scrollTop() + $(window).height();
          var documentHeight = $(document).height()-1;
          if(scrollHeight >= documentHeight){
        	  if(lastScroll)
        	  	newBandScroll();
          }
      });
      
      function newBandScroll(){
    	  $.ajax({
              Type:'get',
              url: "newBandList.search",
              async: false,
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                 'page':page,
                 'value':value
              },
              success: function(data){		//가져온 데이터 json으로 파싱
              	var dataValue = JSON.parse(data);
              	if(dataValue.length == 0){
              		$("#band_List").append("<div class='col-md-12 col-xs-12 empty_band'>"+
	                         "<h1>더 이상 밴드 검색 결과가 없습니다.</h1></div>");
              		
              		lastScroll = false;
              		return false;
              	}
               	page+=5;
               	$.each(dataValue, function(key, value){
               	var bIntroCut = value.bIntro;
               	
               	if(bIntroCut.length > 70){		//문자열 길이 70이상이면 자르기
               		bIntroCut = bIntroCut.substr(0,70);
               	}
	               	$("#band_List").append("<div class='col-md-10 col-xs-10'>"+
	                         "<div class='widget band-list' style='background: linear-gradient(to left, #e6e6e6, #ffffff);'>"+
	                        "<div class='media'>"+
	                       "<div class='media-left media-middle'>"+
	                           "<img class='media-object' src='${contextPath}/resources/upload_images/"+value.P_edit_Name+"' style='width:50px;' alt='...'>"+
	                       "</div>"+
	                       "<div class='media-body'>"+
	                         "<h4 class='media-heading' style='color:#25afe5;'>"+value.bName+"</h4>"+
	                         bIntroCut+"...."+
	                   "</div></div></div></div>");
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