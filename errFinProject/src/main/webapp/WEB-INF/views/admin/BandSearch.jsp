<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>관리자 | 밴드 검색</title>
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
	/* border: 1px solid black; */
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
		<div class="container" style="width:1170px; height:600px;">

			<div class="left-sidebar col-md-3" role="complementary">
				<div class="menu-container">
					<ul>
						<li class="menu-list" onclick="location.href='MemberSelect.ad'">회원조회</li>
						<li class="menu-list" onclick="location.href='BandSelect.ad'">밴드조회</li>
						<li class="menu-list" onclick="location.href='goMemberSearch.ad'">회원검색</li>
						<li class="menu-list" onclick="location.href='goBandSearch.ad'">밴드검색</li>
						<li class="menu-list" onclick="location.href='ReportMemberSelect.ad'">신고받은 회원 조회</li>
						<li class="menu-list" onclick="location.href='ReportBandSelect.ad'">신고받은 밴드 조회</li>
						<li class="menu-list" onclick="location.href='BlackMember.ad'">블랙리스트 회원 조회</li>
						<li class="menu-list" onclick="location.href='BlackBand.ad'">블랙리스트 밴드 조회</li>
					</ul>
				</div>
			</div>
			<div class="main col-md-6 col-xs-12">
				<div class="admin-container">
					<h1 style="height: 50px; padding-left: 20px; padding-top: 10px;">밴드검색</h1>
					<!-- <form action="BandSearch.ad"> -->
						<div class="search-area">
							검색방법  : 
							<select name="keywordValue" style="margin-left:2%; font-size:15px; height:25px;">
								<!-- <option>-------</option> -->
								
								<c:if test="${ keywordValue == 'bandName' }">
								
									<option value="bandName" selected="selected">밴드명</option>
									<option value="bandMaster">밴드장</option>
								</c:if>
								
								<c:if test="${ keywordValue == 'bandMaster' }">
								
									<option value="bandName">밴드명</option>
									<option value="bandMaster" selected="selected">밴드장</option>
								</c:if>
								
								
							</select>
							<c:if test="${ keyword eq null }">
									<input id="searchNickName" type="text" name="searchNickName" value="">
								</c:if>
								<c:if test="${ keyword ne null }">
									<input id="searchNickName" type="text" name="searchNickName" value="${ keyword }">
								</c:if>
							<button id="searchBu">검색</button>
						</div>
					<!-- </form> -->
					
					<script>
						
						$('#searchBu').click(function(){
							
							var keyword = $("#searchNickName").val();
							var pi = 1;

							var keywordValue = $("select[name='keywordValue']").val();
							
							console.log("keywordValue : " + keywordValue);
							
							location.href="BandSearch.ad?keyword=" + keyword + "&currentPage=" + pi + "&keywordValue=" + keywordValue;
						
						});
						
						</script>
					
					
					
					
					<table class="admin-table">
						<tr style="background-color:lightblue">
							<td width="10%">밴드번호</td>
							<td width="50%">밴드명</td>
							<td width="15%">카테고리명</td>
							<td width="15%">밴드유형</td>
							<td width="10%">밴드장</td>
						</tr>
						
						<c:forEach var="SearchBand" items="${ bandSearch }">
							<tr>
								<td>${ SearchBand.bid }</td>
								<td>${ SearchBand.bname }</td>
								<td>${ SearchBand.cname }</td>
								<td>${ SearchBand.bopen_status }</td>
								<td>${ SearchBand.mname }</td>
							</tr>
						</c:forEach>
					</table>
						<!-- 페이징 영역 -->
						
					<div class="paging-area">
						<c:if test="${ pi.currentPage <= 1 }">
							[이전] &nbsp;
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var='mListBack' value="BandSearch.ad">
								<c:param name="requestCurrentPage" value="${ pi.currentPage -1 }"/>
							</c:url>
							<a href="${ mListBack }">[이전]</a> &nbsp;
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><b>${ p }</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="mListCheck" value="BandSearch.ad">
									<c:param name="requestCurrentPage" value="${ p }"/>
								</c:url>
								<a class="pageBu" >${ p }</a>
							</c:if>
						</c:forEach>
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							&nbsp; [다음]
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="mListNext" value="BandSearch.ad">
								<c:param name="requestCurrentPage" value="${ pi.currentPage + 1 }"/>
							</c:url>
							<a href="${ mListNext }"> [다음]</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
			<script>
		
		$('.pageBu').click(function(){
			
			var pi = $(this).text();
			var keyword = $("#searchNickName").val();
			
			var keywordValue = $("select[name='keywordValue']").val();
			
			console.log("keywordValue : " + keywordValue);
			
			location.href="BandSearch.ad?keyword=" + keyword + "&currentPage=" + pi + "&keywordValue=" + keywordValue;
		
			
			
		});
		
		</script>
</body>
</html>