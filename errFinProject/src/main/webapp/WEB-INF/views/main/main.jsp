<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<jsp:include page="../common/menubar.jsp" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<link href="resources/css/light-pink-blue.css" rel="stylesheet">
<link href="resources/css/lightslider.css" rel="stylesheet">
<script src="resources/js/lightslider.js"></script>
<style>
.myband {
	margin-left: auto;
	margin-right: auto;
}

.myband-container {
	width: 100%;
	height: 300px;
	display: inline-block;
	align: center;
}

.myband-container>ul {
	display: inline-block;
	width: 100%;
}

.myband-list {
	background-color: lightgray;
	width: 180px;
	height: 200px;
	margin-left: 20px;
	margin-right: 20px;
	margin-top: 2.5%;
	float: left;
	align: center;
}

.band-profile {
	width: 180px;
	height: 115px;
	padding-top: 0px;
}

.band-profile:hover, .band-name:hover {
	cursor:pointer;
}

.band-profile>img {
	width: 100%;
	height: 100%;
}

.band-nametxt {
	font-size: 20px;
	margin-top: 1em;
	text-align: center;
	overflow:hidden;
}

.band-membertxt {
	font-size: 15px;
}

#plus-icon {
	margin-left: auto;
	margin-right: auto;
	border-radius: 50%;
	align: center;
	width: 50px;
	height: 50px;
	background: white;
}

#plus-icon>p {
	padding-top: 20px;
	text-align: center;
	font-size: 24px;
}

#plus-icon:hover {
	cursor: pointer;
}

.poppost-container {
	width: 100%;
	height: 300px;
	display: inline-block;
	align: center;
}

.poppost-container>ul {
	display: inline-block;
	width: 100%;
}

.poppost-list {
	background-color: lightgray;
	width: 490px;
	height: 200px;
	margin-left: 30px;
	margin-right: 30px;
	margin-top: 2.5%;
	float: left;
	align: center;
}

.poppost-name {
	width: 490px;
	height: 40px;
}

.poppost-name>p {
	margin-left: 10px;
	font-size: 20px;
	margin-top: 10px;
}

.poppost-content {
	width: 490px;
	height: 160px;
	float:left;
	display:inline-block;
}

.poppost-content>p {
	font-size: 15px;
	margin-left: 10px;
	width:380px;
	margin-right:0px;
	float:left;
	display:inline-block;
}

.poppost-content>div {
	/* margin-left:390px; */
	width:95px;
	height:95px;
	float:left;
	display:inline-block;
}

.poppost-content:hover {
	cursor:pointer;
}

.poppostPic>img {
	width:100%;
	height:100%;
}

.recommend-container {
	width: 100%;
	height: 300px;
	display: inline-block;
	align: center;
}

.recommend-container>ul {
	display: inline-block;
	width: 100%;
}

.recommend-list {
	background-color: lightgray;
	width: 500px;
	height: 100px;
	margin-right: 25px;
	margin-left: 25px;
	margin-bottom: 20px;
	float: left;
	align: center;
}

.recommend-profile {
	width: 100px;
	height: 100px;
	background-color: gray;
	float: left;
	display: inline-block;
}

.recommend-profile>img {
	width:100%;
	height:100%;
}

.recommend-content {
	width: 400px;
	height: 100px;
	margin-left: 100px;
}

.recommend-content>.title {
	font-size: 15px;
	padding-top: 5px;
	margin-bottom: 0px;
	margin-left: 10px;
}

.recommend-content>.introduction {
	font-size: 12px;
	margin-bottom: 0px;
	margin-left: 10px;
}

.recommend-content>button {
	/* margin-top:4px; */
	margin-left: 230px;
	width:150px;
	background-color: white;
	border: 0.5px solid black;
	height: 30px;
	font-size: 10px;
}


/* 카테고리 */
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


</head>
<body
	class="home page page-id-4 page-template page-template-template_home-php">
	<!-- TOP NAV -->

	<!-- LOGO AREA -->
	
	<%-- <div class="fullwidth bg-pink">
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
						<a href="#" target="_blank"> <img src="${ contextPath }/resources/img/ad-468x60.png "
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	<!-- MAIN NAV -->
	<div class="container">
		<div class="main col-md-12 col-xs-12">
			<div class="widget">
				<h4 class="page-title">내 밴드</h4>
				<div class="myband-container">
					<ul>
						<li class="myband-list">
							<div class="band-profile" onclick="location.href='newBand.mp'">
								<div style="height: 65px"></div>
								<div id="plus-icon">
									<p>+</p>
								</div>
							</div>
							<div class="band-name" onclick="location.href='newBand.mp'">
								<p class="band-nametxt">밴드만들기</p>
								<span class="band-membertxt"></span>
							</div>
						</li>
						<c:forEach var="MyBandList" items="${ myBandList }">
							<li class="myband-list" onclick = 'showBand(${MyBandList.bid});'>
								<div class="band-profile">
								
									<c:if test="${ MyBandList.edit_name == 'cover1.jpg' || MyBandList.edit_name == 'cover2.jpg'
									|| MyBandList.edit_name == 'cover3.jpg' || MyBandList.edit_name == 'cover4.jpg'
									|| MyBandList.edit_name == 'cover5.jpg' || MyBandList.edit_name == 'cover6.jpg'
									|| MyBandList.edit_name == 'cover7.jpg' }">
								
										<img src="resources/images/cover/${ MyBandList.edit_name }">
									</c:if>
									
									<c:if test="${ !(MyBandList.edit_name == 'cover1.jpg' || MyBandList.edit_name == 'cover2.jpg'
									|| MyBandList.edit_name == 'cover3.jpg' || MyBandList.edit_name == 'cover4.jpg'
									|| MyBandList.edit_name == 'cover5.jpg' || MyBandList.edit_name == 'cover6.jpg'
									|| MyBandList.edit_name == 'cover7.jpg') }">
								
										<img src="resources/upload_images/${ MyBandList.edit_name }">
									</c:if>
									
								</div>
								<div class="band-name">
									<p class="band-nametxt" style="height:20px"> 
										<c:choose>
											<c:when test="${ MyBandList.char_count > 15  }">
												<%-- <c:set var="length" value="${ fn:length(MyBandList.bname) }"/> --%>
												${ fn:substring(MyBandList.bname, 0 , MyBandList.length)}..
											</c:when>
											<c:otherwise>
												${ MyBandList.bname }
											</c:otherwise>
										</c:choose>
									</p>
									<span class="band-membertxt">멤버 : ${ MyBandList.memberCount }</span>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<div class="widget">
				<h4 class="page-title">공개밴드 인기글</h4>
				<div class="poppost-container">
					<ul>
						<c:forEach var="PopularContents" items="${ popContents }">
							<li class="poppost-list" onclick="location.href='bandBoardDetail.bd?boardid=${ PopularContents.boardid }'">
								<div class="poppost-name">
									<p>${ PopularContents.bname } 밴드</p>
								</div>
								<div class="poppost-content">
									<c:choose>
										<c:when test="${ PopularContents.flevel eq 'I'}">
											<p>
											<c:choose>
												<c:when test="${fn:length(PopularContents.bcontent) > 180 }">
													${fn:substring(PopularContents.bcontent, 0, 180) }....
												</c:when>
												<c:otherwise>
													${ PopularContents.bcontent }
												</c:otherwise>
											</c:choose>
											</p>
											<div class="poppostPic">
												<img src="resources/upload_images/${ PopularContents.edit_name }">
											</div>
										</c:when>
										<c:otherwise>
											<p>
											<c:choose>
												<c:when test="${fn:length(PopularContents.bcontent) > 240 }">
													${fn:substring(PopularContents.bcontent, 0, 240) }....
												</c:when>
												<c:otherwise>
													${ PopularContents.bcontent }
												</c:otherwise>
											</c:choose>
											<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성자 : ${ PopularContents.mname }
											</p>
										</c:otherwise>
									</c:choose>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<div class="widget">
				<h4 class="page-title">카테고리</h4>
				<div class="item">
	            <ul id="content-slider" class="content-slider">
	                <li>
	                    <a href='categoryDetail.category?kind=JAVA'><img src='${contextPath}/resources/images/category/JAVA.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=C'><img src='${contextPath}/resources/images/category/C.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=cpp'><img src='${contextPath}/resources/images/category/cpp.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=csharp'><img src='${contextPath}/resources/images/category/Csharp.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=nodejs'><img src='${contextPath}/resources/images/category/nodejs.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=PYTHON'><img src='${contextPath}/resources/images/category/PYTHON.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=RUBY'><img src='${contextPath}/resources/images/category/RUBY.jpg'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=SCALA'><img src='${contextPath}/resources/images/category/SCALA.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=GO'><img src='${contextPath}/resources/images/category/GO.png'></a>
	                </li>
	                <li>
	                    <a href='categoryDetail.category?kind=RUST'><img src='${contextPath}/resources/images/category/RUST.png'></a>
	                </li>
	            </ul>
        </div>
			</div>

			<div class="widget">
				<h4 class="page-title">이런 밴드는 어때요?</h4>
				<div class="recommend-container">
					<ul>
						<c:forEach var="rcmContents" items="${ rcmContents }">
							<li class="recommend-list">
								<div class="recommend-profile" onclick="location.href='list.do?bid=${rcmContents.bid}'">
									<img src="${contextPath}/resources/upload_images/${rcmContents.edit_name}">
								</div>
								<div class="recommend-content">
									<p class="title">${rcmContents.bname}</p>
									<p class="introduction">
										<c:choose>
											<c:when test="${fn:length(rcmContents.bintro) > 75 }">
												${fn:substring(rcmContents.bintro, 0, 75) }....
											</c:when>
											<c:otherwise>
												${rcmContents.bintro}
											</c:otherwise>
										</c:choose>
									</p>
									<c:choose>
										<c:when test="${ rcmContents.cname eq 'C++' }">
											<button onclick="location.href='categoryDetail.category?kind=cpp'">
												<b>${rcmContents.cname}</b>밴드 더 보기
											</button>
										</c:when>
										<c:when test="${ rcmContents.cname eq 'C#' }">
											<button onclick="location.href='categoryDetail.category?kind=csharp'">
												<b>${rcmContents.cname}</b>밴드 더 보기
											</button>
										</c:when>
										<c:otherwise>
											<button onclick="location.href='categoryDetail.category?kind=${ rcmContents.cname }'">
												<b>${rcmContents.cname}</b>밴드 더 보기
											</button>
										</c:otherwise>
									</c:choose>
										
									
										
									
									
								</div>
							</li>
						</c:forEach>
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

	<script src="resources/js/custom.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.bxslider.min.js"></script>
	
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
	 
	 function showBand(bid){
		 location.href = 'list.do?bid=' + bid;
	 }
	</script>

</body>
</html>
