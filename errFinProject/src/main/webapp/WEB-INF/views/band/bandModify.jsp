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
  <title>Weekend Magazine</title>
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
    background-image: url(../../../resources/images/addImg.png);
    background-size: contain;
    background-repeat:no-repeat;
}  
  </style>
</head>
<body class="home page page-id-4 page-template page-template-template_home-php">
    <!-- TOP NAV -->
    <!-- LOGO AREA -->
    <div class="fullwidth bg-pink">
      <div class="container">
        <div class="col-md-6 col-xs-12">
          <div class="logo">
            <h1><a href="index.html" title="Weekend Magazine">Weekend Magazine</a></h1>
          </div>
        </div>
        <div class="col-md-6 col-xs-12">
            <div id="ads120_60-widget-2" class="ads120-60 ads-one">
                        <div class="ad-cell">
                      <a href="#" target="_blank" >                 
                <img src="img/ad-468x60.png " alt="">
              </a>  
            </div>
                    </div>
          </div>
      </div>
    </div>

    <div class="container">
      
      
      
      
      <div class="main col-md-6 col-xs-12" style="width:93%;">
        <div id="respond" class="widget clearfix">
          <form id="bandModify" action="updateBandModify.bd" method="post" id="bandModify" encType = "multipart/form-data">
            <p class="textarea clearfix">
              <label for="commentsText"><small style="font-size: 14px;font-weight: 600;margin-bottom: 11px;color: #444;">
           		   밴드 이름
              <span class="star"></span></small></label>
              <input type="text" name="contactName" id="contactName" value="이곳에 밴드 이름을 입력해주세요" class="required requiredField"
              style="line-height: 54px;border-bottom: 1px solid #ccc;font-size: 30px;font-weight: 400;color: #c5c0c0;background: white;">
            </p>
               <div class="box-content widget fullwidth">
                <h4 class="widget-title"></h4>
                <div class="widget-content">
                    <ul class="category-posts">
                        <li>
                            <a href="#">
                                <img id = "contentImg1" src="http://placehold.it/225x128" width="270" alt="" style="width:300px;height:225px;">
                            </a>
                        </li>
                        <li>
                        
						<!-- <table
							style="display: table-cell; vertical-align: middle; text-align: center;">
							<tr>
								<td width="270px" style="vertical-align: middle; text-align: left;">
									<img id = "contentImg1" src="resources/images/user.png" alt="" style = "width : 64px; height : 64px;">
									<input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
								</td>
								<td style="vertical-align: middle;"><a class="button-navy button-link" onclick = "changeImage()">이미지 변경</a></td>
							</tr>
						</table> -->
                        </li>
                        <li>
                            <span class="changeCover _coverImageUploader js-fileapi-wrapper" style="float:left;margin-right:3px;"><span></span> 
                            <!-- <input type="file" class="imageUpload" title="추가" accept="image/*"  id="userImage" name="userImage" style="width:120px;height:90px;"> -->
                            <input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
                            <td style="vertical-align: middle;"><a class="button-navy button-link" onclick = "changeImage()">이미지 변경</a></td>
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
                        </li>
                        
                        <li>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                            <a href="#">
                                <img src="http://placehold.it/225x128" width="270" alt="" style="width:120px;height:90px;">
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <div id="contact_response"></div>
            <p class="buttons clearfix" style="width:200px;margin-left:auto;margin-right:auto;">
              <button type="submit" id="conSub" style="width:70px;margin-right:30px;background:#eef0f3;color:#666;">취소</button>
              <button type="submit" id="conSub" style="width:70px;background:#474e60;">완료</button>
            </p>
          </form>
        </div>
      </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/custom.js"></script>
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
  </body>
</html>