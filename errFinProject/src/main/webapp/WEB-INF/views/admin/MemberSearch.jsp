<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>관리자 | 회원검색</title>
<!-- CSS --> 
<jsp:include page="../admin/adminMenubar.jsp" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<link href="resources/css/light-pink-blue.css" rel="stylesheet"> 
<style>
.menu-list {
	/* width:200px; */
	height: 50px;
	padding-left: 10px;
	/* text-align:center; */
	font-size: 15px;
	padding-top: 20px;
	color:black;
	border-bottom: 2px solid black;
}

.admin-container {
	width: 800px;
	margin-bottom: 20%;
	/* background-color: lightgray; */
	/* font-color: white; */
}

.admin-table {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	font-size: 15px;
	background-color:white;
	color:black;
}

.admin-table td {
	border: 1px solid black;
	height: 30px;
	padding-top: 5px;
}

.paging-area {
	width: 100%;
	height: 70px;
	font-size: 20px;
	text-align: center;
	border: 1px solid black;
}

.search-area{
	width:100%;
	height:50px;
	border:1px black;
	font-size:15px;
	padding-left:5%;
}
</style>
</head>
<body
	class="home page page-id-4 page-template page-template-template_home-php">
	<!-- TOP NAV -->
	<div class="navbar navbar-default top-nav-bar" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".topmenu">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
		</div>
		<!-- LOGO AREA -->
		
		<!-- MAIN NAV -->
		<div class="container">

			<div class="left-sidebar col-md-3" role="complementary">
				<div class="menu-container">
					<ul>
						<li class="menu-list" onclick="location.href='goMemberSelect.ad'">회원조회</li>
						<li class="menu-list" onclick="location.href='goBandSelect.ad'">밴드조회</li>
						<li class="menu-list" onclick="location.href='goMemberSearch.ad'">회원검색</li>
						<li class="menu-list" onclick="location.href='goBandSearch.ad'">밴드검색</li>
						<li class="menu-list" onclick="location.href='goBMSelect.ad'">신고받은 회원 조회</li>
						<li class="menu-list" onclick="location.href='goBBSelect.ad'">신고받은 밴드 조회</li>
						<li class="menu-list" onclick="location.href='goBlackMember.ad'">블랙리스트 회원 조회</li>
						<li class="menu-list" onclick="location.href='goBlackBand.ad'">블랙리스트 밴드 조회</li>
					</ul>
				</div>
			</div>
			<div class="main col-md-6 col-xs-12">
				<div class="admin-container">
					<h1 style="height: 50px; padding-left: 20px; padding-top: 10px;">회원검색</h1>
					<form action="MemberSearch.ad">
						<div class="search-area">
							검색방법  : 
							<select style="margin-left:2%; font-size:15px; height:25px;">
								<!-- <option>-------</option> -->
								<option>닉네임</option>
								<!-- <option>연락처</option> -->
							</select>
							
								<input type="text" name="searchNickName">
								<button>검색</button>
						</div>
					</form>
					<table class="admin-table">
						<tr style="background-color:lightblue">
							<td>회원번호</td>
							<td>이메일</td>
							<td>닉네임</td>
							<td>연락처</td>
							<td>국가코드</td>
							<td>가입일</td>
							<td>플랫폼타입</td>
						</tr>
						
						<c:forEach var="SearchMember" items="${ memberSearch }">
							<tr>
								<td>${ SearchMember.mid }</td>
								<td>${ SearchMember.mEmail }</td>
								<td>${ SearchMember.mName }</td>
								<td>${ SearchMember.mPhone }</td>
								<td>${ SearchMember.mNational }</td>
								<td>${ SearchMember.mDate }</td>
								<td>${ SearchMember.mType }</td>
							</tr>
						</c:forEach>
					</table>

					<div class="paging-area">
						<br>이곳은 페이징 영역
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
					<div id="nav_menu-2"></div>
					<a class="footer-nav-scroll pull-right"></a>
				</div>
			</div>
		</div>
	</div>
	<script src="../../resources/js/jquery.min.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
	<script src="../../resources/js/jquery.bxslider.min.js"></script>
	<script src="../../resources/js/custom.js"></script>
</body>
</html>