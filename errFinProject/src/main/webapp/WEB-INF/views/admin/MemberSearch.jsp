<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content=" width=device-width, initial-scale=1">
<title>관리자 | 회원검색</title>
<jsp:include page="../admin/adminMenubar.jsp" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<link href="resources/css/light-pink-blue.css" rel="stylesheet"> 
<style>
.menu-list {
	height: 50px;
	padding-left: 10px;
	font-size: 15px;
	padding-top: 20px;
	color:black;
	border-bottom: 2px solid black;
}

.admin-container {
	width: 800px;
	margin-bottom: 20%;
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
					<h1 style="height: 50px; padding-left: 20px; padding-top: 10px;">회원검색</h1>
						<div class="search-area">
							검색방법  : 
							<select style="margin-left:2%; font-size:15px; height:25px;">
								<option>닉네임</option>
							</select>
								
							<c:if test="${ keyword eq null }">
								<input id="searchNickName" type="text" name="searchNickName">
							</c:if>
							<c:if test="${ keyword ne null }">
								<input id="searchNickName" type="text" name="searchNickName" value="${ keyword }">
							</c:if>
							<button id="searchBu">검색</button>
						</div>
						
						<!-- 検索結果を固定する　 -->
						<script>
							$('#searchBu').click(function(){
								console.log('눌림???');
								var keyword = $("#searchNickName").val();
								console.log('keywprd : '+ keyword);
								var pi = 1;
								location.href="MemberSearch.ad?keyword=" + keyword + "&currentPage=" + pi; 
							});
						
						</script>
					
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

					<!-- ページング -->	
					<div class="paging-area">
						<c:if test="${ pi.currentPage <= 1 }">
							[이전] &nbsp;
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var='mListBack' value="MemberSearch.ad">
								<c:param name="requestCurrentPage" value="${ pi.currentPage -1 }"/>
							</c:url>
							<a href="${ mListBack }">[이전]</a> &nbsp;
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><b>${ p }</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="mListCheck" value="MemberSearch.ad">
									<c:param name="requestCurrentPage" value="${ p }"/>
								</c:url>
								<a class="pageBu" >${ p }</a>
							</c:if>
						</c:forEach>
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							&nbsp; [다음]
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="mListNext" value="MemberSearch.ad">
								<c:param name="requestCurrentPage" value="${ pi.currentPage + 1 }"/>
							</c:url>
							<a href="${ mListNext }"> [다음]</a>
						</c:if>
						<script>
						<!-- ページング -->		
						$('.pageBu').click(function(){
							var pi = $(this).text();
							console.log("pi : " + pi);
							var keyword = $("#searchNickName").val();
							console.log('keywprd : '+ keyword);
							location.href="MemberSearch.ad?keyword=" + keyword + "&currentPage=" + pi; 
								
						});
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>