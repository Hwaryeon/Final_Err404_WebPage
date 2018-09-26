<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>밴드 홈 | 밴드</title>
<!-- CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<style>
	.myband{
		margin-left:auto;
		margin-right:auto;
	}
	
	.myband-container{
		width:100%;
		height:300px;
		display:inline-block;
		align:center;
	}
	
	.myband-container > ul {
		display:inline-block;
		width:100%;
	}
	
	.myband-list {
		background-color:lightgray;
		width:180px;
		height:200px;
		margin-left:20px;
		margin-right:20px;
		margin-top:2.5%;
		float:left;
		align:center;
	}
	.band-profile{
		width:180px;
		height:115px;
		padding-top:0px;
	}
	
	.band-profile > img{
		width:100%;
		height:100%;
	}
	
	.band-nametxt{
		font-size:25px;
		margin-top:1em;
		text-align:center;
	}
	
	.band-membertxt{
		font-size:15px;
	}
	
	#plus-icon{
		margin-left:auto;
		margin-right:auto;
		border-radius:50%;
		align:center;
		width:50px;
		height:50px;
		background:white;
	}
	#plus-icon > p{
		padding-top:20px;
		text-align:center;
		font-size:24px;
	}
	
	#plus-icon:hover {
		cursor:pointer;
	}
	.poppost-container{
		width:100%;
		height:300px;
		display:inline-block;
		align:center;
	}
	
	.poppost-container > ul {
		display:inline-block;
		width:100%;
	}
	
	.poppost-list {
		background-color:lightgray;
		width:490px;
		height:200px;
		margin-left:30px;
		margin-right:30px;
		margin-top:2.5%;
		float:left;
		align:center;
	}
	
	.poppost-name {
		width:490px;
		height:40px;
	}
	
	.poppost-name > p {
		margin-left:10px;
		font-size:20px;
		margin-top:10px;
	}
	
	.poppost-content {
		width:490px;
		height:160px;
	}
	
	.poppost-content > p {
		font-size: 15px;
		margin-left:10px;
	}
	
	.recommend-container{
		width:100%;
		height:300px;
		display:inline-block;
		align:center;
	}
	
	.recommend-container > ul {
		display:inline-block;
		width:100%;
	}
	
	.recommend-list {
		background-color:lightgray;
		width:500px;
		height:100px;
		margin-right:25px;
		margin-left:25px;
		margin-bottom: 20px;
		float:left;
		align:center;
	}
	
	.recommend-profile {
		width:100px;
		height:100px;
		background-color:gray;
		float:left;
		display:inline-block;
	}
	
	.recommend-content {
		width:400px;
		height:100px;
		margin-left:100px;
	}
	
	.recommend-content > .title {
		font-size:15px;
		padding-top:5px;
		margin-bottom:0px;
		margin-left:10px;
	}
	
	.recommend-content > .introduction {
		font-size:10px;
		margin-bottom:0px;
		margin-left:10px;
	}
	
	.recommend-content > button {
		/* margin-top:4px; */
		margin-left:250px;
		background-color:white;
		border:0.5px solid black;
		height:30px;
		font-size:15px;
		
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
					<h1>
						<a href="#" title="Weekend Magazine">상단바위치</a>
					</h1>
					<a href = '<c:url value = "showMemberInfo_update.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					</c:url>'>이동</a>
					<a href = "logout.me">로그아웃</a>
				</div>
			</div>
			<div class="col-md-6 col-xs-12">
				<div id="ads120_60-widget-2" class="ads120-60 ads-one">
					<div class="ad-cell">
						<a href="#" target="_blank"> <img src="../resources/img/ad-468x60.png "
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- MAIN NAV -->
	<div class="container">
		<div class="main col-md-12 col-xs-12">
			<div class="widget">
				<h4 class="page-title">내 밴드</h4>
				<div class="myband-container">
					<ul>
						<li class="myband-list">
							<div class="band-profile">
								<div style="height:65px">
								</div>
								<div id="plus-icon" onclick="location.href='newBand.jsp'">
									<p>+</p>
								</div>
							</div>
							<div class="band-name">
								<p class="band-nametxt">밴드만들기</p>
								<span class="band-membertxt"></span>
							</div>
						</li>
						<li class="myband-list">
							<div class="band-profile">
								<img src="../resources/img/profile.jpg" >
							</div>
							<div class="band-name">
								<p class="band-nametxt">밴드명1</p>
								<span class="band-membertxt">멤버 n</span>
							</div>
						</li>
						<li class="myband-list">
							<div class="band-profile">
								<img src="../resources/img/profile.jpg" >
							</div>
							<div class="band-name">
								<p class="band-nametxt">밴드명2</p>
								<span class="band-membertxt">멤버 n</span>
							</div>
						</li>
						<li class="myband-list">
							<div class="band-profile">
								<img src="../resources/img/profile.jpg" >
							</div>
							<div class="band-name">
								<p class="band-nametxt">밴드명3</p>
								<span class="band-membertxt">멤버 n</span>
							</div>
						</li>
						
						<li class="myband-list">
							<div class="band-profile">
								<img src="../resources/img/profile.jpg" >
							</div>
							<div class="band-name">
								<p class="band-nametxt">밴드명4</p>
								<span class="band-membertxt">멤버 n</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="widget">
				<h4 class="page-title">공개밴드 인기글</h4>
				<div class="poppost-container">
					<ul>
						<li class="poppost-list">
							<div class="poppost-name">
								<p>게시글 제목 1</p>
							</div>
							<div class="poppost-content">
								<p>글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.</p>
							</div>
						</li>
						<li class="poppost-list">
							<div class="poppost-name">
								<p>게시글 제목 2</p>
							</div>
							<div class="poppost-content">
								<p>글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.<br>
								글 내용입니다.</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="widget">
				<h4 class="page-title">이런 밴드는 어때요?</h4>
				<div class="recommend-container">
					<ul>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
						<li class="recommend-list">
							<div class="recommend-profile">
								프로필사진
							</div>
							<div class="recommend-content">
								<p class="title">밴드제목</p>
								<p class="introduction">밴드소개<br>밴드소개</p>
								<button>밴드 더 보기 </button>
							</div>
						</li>
					</ul>
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
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.bxslider.min.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>
