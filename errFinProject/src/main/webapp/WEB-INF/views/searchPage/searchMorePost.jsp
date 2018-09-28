<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var='search' value='${result}' scope='request'/>
<c:set var='contents' value='${contents}' scope='request'/>
<!-- 테스트용 변수들 -->

<c:set var='content' value='"Hello, World!" 프로그램은 "Hello, world!"를 화면에 출력하는 컴퓨터 프로그램이다. 이 프로그램은 프로그래밍 언어를 연습하는 데에 많이 쓰이고, 많은 프로그래밍 언어 서적에서 가장 처음 만들어보는 기본 예제로 나온다.
"Hello, World!" 프로그램은 프로그래밍 언어로 할 수 있는 간단한 것 중 하나이다. 그러나, GUI를 사용할 때를 비롯하여, 어떤 경우에는 코드가 대단히 복잡해질 수 있다. 또 다른 경우에는 프로그램 자체는 간단하지만 CLI 셸에서 입력해야 하는 파라미터가 많아 복잡한 경우도 있다. 또 임베디드 시스템에서는 글자들이 한정된 한두 줄의 LCD에 표시될 것이다. 더욱 심한 경우에는 글자를 표시할 수 없어 "Hello world!" 대신에 간단하게 LED 점 등을 할 수도 있다.
또한, "Hello, World!" 프로그램은 언어의 컴파일러, 통합 개발 환경, 런타임 환경이 정상적으로 작동하는지를 확인하는 새너티 테스트로써 쓸모가 있다. 개발환경 구축에 필요한 툴체인을 바닥부터 구축하여 가장 간단한 프로그램을 컴파일하고 실행하기까지에는 상당한 작업이 필요하다. 따라서 새로운 툴체인을 테스트할 때에는 될 수 있는 한 간단한 프로그램을 쓴다.
프로그래밍 할 수 있는 컴퓨터 개발에 있어서 작고 간단한 테스트용 프로그램이 이전에도 존재했으나, "Hello world!"가 사용된 것은 1978년에 출판된 브라이언 커니핸과 데니스 리치가 쓴 책 "The C Programming Language"에서 비롯한다. 이 책에서 첫 번째 예제 프로그램으로 hello, world 라는 문장을 출력했다. 모두 소문자이고, 느낌표도 없었다. 이 프로그램은 1974년에 벨 연구소에서 커니핸이 써서 연구소 내에서 사용한 작은 매뉴얼인 〈Programming in C: A Tutorial〉의 것을 물려받았다.'/>
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