<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <title>ERROR404</title>
   <jsp:include page="../common/menubar.jsp" />
<link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
<link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
  <style>
  .imageUpload {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 10;
    height: 100%;
    cursor: pointer;
    opacity: 0;
}
.changeCover {
    overflow: hidden;
    display: block;
    position: relative;
    width: 120px;
    height: 90px;
    padding-top: 21px;
    text-align: center;
    background-color: #ebebeb;
    border-radius: 2px;
    background-image: url(img/addImzg.png);
    background-size: contain;
    background-repeat:no-repeat;
}  
.comment-reply-title, .page .page-title{
	    margin: 5px 0 11px;

}
.categort-posts,  .sh{

	box-shadow: 0px 0px 6px #4d4a4a;

}
.vote {
	-moz-box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	-webkit-box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	box-shadow:inset 0px 0px 0px 0px #bbdaf7;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #86b8eb) );
	background:-moz-linear-gradient( center top, #79bbff 5%, #86b8eb 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#86b8eb');
	background-color:#79bbff;
	-webkit-border-top-left-radius:0px;
	-moz-border-radius-topleft:0px;
	border-top-left-radius:0px;
	-webkit-border-top-right-radius:0px;
	-moz-border-radius-topright:0px;
	border-top-right-radius:0px;
	-webkit-border-bottom-right-radius:0px;
	-moz-border-radius-bottomright:0px;
	border-bottom-right-radius:0px;
	-webkit-border-bottom-left-radius:0px;
	-moz-border-radius-bottomleft:0px;
	border-bottom-left-radius:0px;
	text-indent:0px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	font-style:normal;
	height:36px;
	line-height:36px;
	width:159px;
	text-decoration:none;
	text-align:center;
}
.vote:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #86b8eb), color-stop(1, #79bbff) );
	background:-moz-linear-gradient( center top, #86b8eb 5%, #79bbff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#86b8eb', endColorstr='#79bbff');
	background-color:#86b8eb;
}.vote:active {
	position:relative;
	top:1px;
}
  </style>
</head>
<body class="home page page-id-4 page-template page-template-template_home-php">


<div class="recent-widget" id="tabbed-widget" style="background:#f6f6f6; margin-top:-30px;">
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
    <div class="container">
      
      
      
      
      <div class="main col-md-6 col-xs-12" style="width:93%;">
        <div id="respond" class="widget clearfix sh">
          <form id="contactForm" action="updateBandModify.bd" method="post" id="bandModify" encType = "multipart/form-data">
            <p class="textarea clearfix">
              <label for="commentsText">
              <small style="font-size: 14px;font-weight: 600;margin-bottom: 11px;color:#25afe5;">
           		   밴드 이름
              <span class="star"></span></small></label>
              <input type="text" name="bandName" id="bandName" value="${bname}" class="required requiredField"
              style="line-height: 54px;border-bottom: 1px solid #ccc;font-size: 30px;font-weight: 400;color: #c5c0c0;background: white;">
              <input type="hidden" id="bid" name="bid" value="${ bid }">
              
              <c:if test="${ pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg' }">
										<input type="hidden" id="coverType" name="coverType" value="${pf.editName }" >
									</c:if>
									
									<c:if test="${ !(pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg') }">
								
										<input type="hidden" id="coverType" name="coverType" value="Y" >
									</c:if>
              
              
              <input type="hidden" id="changePhoto" name="changePhoto" value="N" >
              
            </p>
               <div class="box-content widget fullwidth">
                <h4 class="widget-title"></h4>
                <div class="widget-content">
                    <ul class="category-posts">
                        <li>
                            <a href="#">
                               <c:if test="${empty pf.editName  }" >
                               		<img id="ProfileImg" src="http://placehold.it/225x128" width="270" alt="" style="width:300px;height:225px;">
                            	</c:if>
                            	
                            	<c:if test="${!empty pf.editName  }" >
                            		<%-- <img id="ProfileImg" src="${ contextPath }/resources/upload_images/${pf.editName }" width="270" alt="" style="width:300px;height:225px;"> --%>
                            	
                            	
                            		<c:if test="${ pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg' }">
										<img id="ProfileImg" src="${ contextPath }/resources/images/cover/${pf.editName }" width="270" alt="" style="width:300px;height:225px;">
									</c:if>
									
									<c:if test="${ !(pf.editName == 'cover1.jpg' || pf.editName == 'cover2.jpg'
									|| pf.editName == 'cover3.jpg' || pf.editName == 'cover4.jpg'
									|| pf.editName == 'cover5.jpg' || pf.editName == 'cover6.jpg'
									|| pf.editName == 'cover7.jpg') }">
								
										<img id="ProfileImg" src="${ contextPath }/resources/upload_images/${pf.editName }" width="270" alt="" style="width:300px;height:225px;">
									</c:if>
                            	
                            	
                            	
                            	</c:if>
                            </a>
                            
                            	
                            
                        </li>
                        <li>
                        
                        </li>
                            <input type="file" id="bandProfile" name="bandProfile" multiple onchange="loadImg(this)">
                       <!--  <li>
                            <span class="changeCover _coverImageUploader js-fileapi-wrapper" style="float:left;margin-right:3px;"><span></span> 
                            <input type="file" class="imageUpload" title="추가" accept="image/*" name="attachment" style="width:120px;height:90px;">
                            <td style="vertical-align: middle;"><a class="button-navy button-link" onclick = "changeImage()">추가</a></td>
                            </span>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                        </li> -->
                        
                        
                        <li>
									<span id="changeCover"  class="changeCover _coverImageUploader js-fileapi-wrapper" style="float: left; margin-right: 3px;">
										<span>
											
										</span>
										<img id = "contentImg" src="${ contextPath }/resources/images/addImg.png" alt="" style="width:120px; height:90px; margin-top:-20px;"
										onclick="changeImage()"> <!-- width="270"  -->
										<input type="file" id="bandImage" name="bandImage" class="imageUpload" multiple onchange="loadImg(this)" style="width: 120px; height: 90px;">
									</span>
										<img src="${ contextPath }/resources/images/cover/cover1.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover1" onclick="damaY('cover1')" 
										>
										<img src="${ contextPath }/resources/images/cover/cover2.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover2" onclick="damaY('cover2')"
										
										>
										<img src="${ contextPath }/resources/images/cover/cover3.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover3" onclick="damaY('cover3')"
										>
								</li>
                        
                        
                        <li>
										<img src="${ contextPath }/resources/images/cover/cover4.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover4" onclick="damaY('cover4')"
										>
										<img src="${ contextPath }/resources/images/cover/cover5.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover5" onclick="damaY('cover5')"
										>
										<img src="${ contextPath }/resources/images/cover/cover6.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover6" onclick="damaY('cover6')"
										>
										<img src="${ contextPath }/resources/images/cover/cover7.jpg" width="270" alt="" style="width: 120px; height: 90px;"
										id="cover7" onclick="damaY('cover7')"
										>
								</li>
                        
                    </ul>
                </div>
            </div>
            
            <script>
            $(function() {
        		$("#bandImage").hide();
        		$("#bandStatus").hide();
        	});
            
            $(function() {
    			$("#bandProfile").hide(); 
    			nameResult = -99;
    			emailResult = -99;
    			ck = -99;
    			
    		});

    		function changeImage(){
    			$("#bandProfile").click();
    		}
    		
    		function loadImg(value){
    			if(value.files && value.files[0]){
    				var reader = new FileReader();
    				reader.onload = function(e){
    					$("#ProfileImg").attr("src", e.target.result);
    				}
    				reader.readAsDataURL(value.files[0])
    				document.getElementById('coverType').value = 'Y';
    				document.getElementById('changePhoto').value = 'Y';
    			}
    			
    		}
            
    		function damaY(value){
    			
    			console.log("value : " + value);
    			
    			document.getElementById('changePhoto').value = 'Y';
    			
    			document.getElementById('coverType').value = value;
    			
    			 for(var i=1; i<8; i++){
    				var str = 'cover';
    				str += i;
    				var dama = document.getElementById(str);
    				dama.src="/efp/resources/images/cover/" + str + ".jpg";
    				
    			}
    			
    			
    			var dama = document.getElementById(value);
    				
    			var test = document.getElementById('ProfileImg');
    				
    			if(dama.src.match(value + ".jpg")){
    				dama.src="/efp/resources/images/cover/check.jpg";
    				test.src="/efp/resources/images/cover/" + value + ".jpg";
    			}else{
    				dama.src="/efp/resources/images/cover/" + value + ".jpg";
    				test.src="/efp/resources/images/cover/cover1.jpg";
    			}
    		}
            
            </script>
            
            <div id="contact_response"></div>
            <p class="buttons clearfix" style="width:200px;margin-left:auto;margin-right:auto;">
              <button type="submit" id="conSub" style="width:70px;margin-right:30px;background:#eef0f3;color:#666;" "><a style="backgroud:blue;" href="bandLeader.bd">취소</a></button>
              <button type="submit" id="conSub" style="width:70px;background:#474e60;">완료</button>
            </p>
          </form>
        </div>
      </div>
    </div>

    <!-- <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/custom.js"></script> -->
  </body>
</html>