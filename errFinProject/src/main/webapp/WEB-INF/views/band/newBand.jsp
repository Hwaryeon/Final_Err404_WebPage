<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>Weekend Magazine</title>
<!-- CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
<link href="../resources/css/font-awesome.min.css" rel="stylesheet">
<link href="../resources/css/style.css" rel="stylesheet">
<link href="../resources/css/responsive.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
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
	background-image: url(img/addImg.png);
	background-size: contain;
	background-repeat: no-repeat;
}

.opensetting-container {
	float: left;
	background-color: white;
	width:100%;
}

.opensetting {
	float: left;
	width: 33%;
}

.opensetting p {
	font-size:16px;
}
.check {
	float:left;
	width:40px;
	margin-top:30px;
	margin-right:10px;
	height: 40px;
	background-color:gray;
	margin-left:20px;
	border-radius:50%;
}
</style>
</head>
<body
	class="home page page-id-4 page-template page-template-template_home-php">
	<!-- TOP NAV -->
	<!-- LOGO AREA -->
	<div class="fullwidth bg-pink">
		<div class="container">
			<div class="col-md-6 col-xs-12">
				<div class="logo">
					<h1>
						<a href="index.html" title="Weekend Magazine">Weekend Magazine</a>
					</h1>
				</div>
			</div>
			<div class="col-md-6 col-xs-12">
				<div id="ads120_60-widget-2" class="ads120-60 ads-one">
					<div class="ad-cell">
						<a href="#" target="_blank"> <img src="img/ad-468x60.png "
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="main col-md-6 col-xs-12" style="width: 93%;">
			<div id="respond" class="widget clearfix">
				<form id="contactForm">
					<p class="textarea clearfix">
						<label for="commentsText"><small
							style="font-size: 14px; font-weight: 600; margin-bottom: 11px; color: #444;">
								밴드 이름 <span class="star"></span>
						</small></label> <input type="text" name="contactName" id="contactName"
							value="이곳에 밴드 이름을 입력해주세요" class="required requiredField"
							style="line-height: 54px; border-bottom: 1px solid #ccc; font-size: 30px; font-weight: 400; color: #c5c0c0; background: white;">
					</p>
					<div class="box-content widget fullwidth">
						<h4 class="widget-title"></h2>
						<div class="widget-content">
							<ul class="category-posts">
								<li><a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 300px; height: 225px;">
								</a></li>
								<li></li>
								<li><span
									class="changeCover _coverImageUploader js-fileapi-wrapper"
									style="float: left; margin-right: 3px;"><span></span> <input
										type="file" class="imageUpload" title="추가" accept="image/*"
										name="attachment" style="width: 120px; height: 90px;"></span>
									<a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a> <a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a> <a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a></li>

								<li><a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a> <a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a> <a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a> <a href="#"> <img src="http://placehold.it/225x128"
										width="270" alt="" style="width: 120px; height: 90px;">
								</a></li>

							</ul>
						</div>
					</div>
					<div class="opensetting-container">
						<div class="opensetting close">
							<div class="check"></div>
							<h2>비공개 밴드</h2><br>
							<p>밴드와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</p>
							
						</div>
						<div class="opensetting nameopen">
							<div class="check"></div>
							<h2>밴드명 공개 밴드</h2><br>
							<p>누구나 밴드를 검색해 찾을 수 있지만, 게시물은 멤버만 볼 수 있습니다.</p>
						</div>
						<div class="opensetting open">
							<div class="check"></div>
							<h2>공개 밴드</h2><br>
							<p>누구나 밴드를 검색해 찾을 수 있고, 게시물을 볼 수 있습니다.</p>
						</div>
					</div>

					<div id="contact_response"></div>
					<p class="buttons clearfix"
						style="width: 200px; margin-left: auto; margin-right: auto;">
						<button type="submit" id="conSub"
							style="width: 70px; margin-right: 30px; background: #eef0f3; color: #666;">취소</button>
						<button type="submit" id="conSub"
							style="width: 70px; background: #474e60;">완료</button>
					</p>
				</form>
			</div>


		</div>
	</div>

	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery.bxslider.min.js"></script>
	<script src="../resources/js/custom.js"></script>
</body>
</html>