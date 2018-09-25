<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content=" width=device-width, initial-scale=1">
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>Weekend Magazine</title>
    <!-- CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
    <link href="resources/css/sss.css" rel="stylesheet">
    <!-- Skin -->
    <link href="resources/css/light-pink-blue.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="home page page-id-4 page-template page-template-template_home-php">
    <!-- TOP NAV -->
    <div class="navbar navbar-default top-nav-bar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".topmenu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse topmenu">
                <div class="menu-header-templates-menu-container">
                    <ul class="nav navbar-nav">
                        <li><a href="about.html">About</a></li>
                        <li><a href="article.html">Article</a></li>
                        <li><a href="article-review.html">Article Review</a></li>
                        <li><a href="archives.html">Archives</a></li>
                        <li><a href="category.html">Category</a></li>
                        <li><a href="fullwidth.html">Full Width</a></li>
                        <li><a href="shortcodes.html">Shortcodes</a></li>
                        <li><a href="404.html">404</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
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
                        <a href="#" target="_blank">
                            <img src="img/ad-468x60-2.png " alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MAIN NAV -->
    <div class="fullwidth navbar navbar-default main-nav-bar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".mainmenu">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse mainmenu">
                <div class="menu-primary-navigation-container">
                    <ul id="menu-primary-navigation" class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Home <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="index2.html">Home 2</a></li>
                                <li><a href="index3.html">Home Dark 1</a></li>
                                <li><a href="index4.html">Home Dark 2</a></li>
                                <li><a href="index5.html">Home Light 1</a></li>
                                <li><a href="index6.html">Home Light 2</a></li>
                            </ul>
                        </li>
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
        </div>
    </div>

    <div class="container">
        <!-- Main Content -->
        <div class="main col-md-9 col-md-push-3 col-xs-12">
			<button href = "logout.me" id = "lobtn">나가기</button>
            <div class="widget fullwidth post-single">
                <h2>회원 정보 수정</h2><br>
                <div class="widget-content">
                    <ul>
                        <li>
                         
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                                <tr>
                                    <td style="vertical-align: middle;">
                                        <h5>프로필 이미지</h5>
                                    </td>
                                    <c:if test = "${ memberProfile.editName eq 'user.png' }">
                                    	<td width="200px" style="vertical-align: middle; ">
                                    	<img id = "contentImg1" src="resources/images/user.png" alt="" style = "width : 64px; height : 64px;">
                                    	</td>
                                    </c:if>
                                    <c:if test = "${ memberProfile.editName ne 'user.png' }">
                                    	<td width="200px" style="vertical-align: middle;">
                                    	<img id = "contentImg1" src="${ memberProfile.fileSrc }${ memberProfile.editName }" alt="" style = "width : 64px; height : 64px;">
                                    	</td>
                                    </c:if>
                                    <td width="500px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" onclick = "changeProfile()">이미지 수정하기</a></td>
                                </tr>

                            </table>
                            <input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
                            <br>
                            <hr>
                            <br>
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                                <tr>
                                    <td style="vertical-align: middle;" rowspan = "5">
                                        <h5>개인정보</h5>
                                    </td>
                                    <td width="100px" style="padding-top : 10px; padding-bottom : 10px; vertical-align: middle;">이메일</td>
                                    <td width="120px" style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mEmail }</td>
                                    <td width="510px" style="vertical-align: middle; text-align: right"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">비밀번호</td>
                                    <td id = "nop" style="vertical-align: middle; text-align: left;"></td>
                                    <td style="vertical-align: middle; text-align: right;"><a class="button-blue button-link" data-toggle="modal" data-target="#pwdModal">비밀번호 수정하기</a></td>
                                </tr>
                                <tr>
                                	<td colspan = "4"><hr></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">닉네임</td>
                                    <td id = "showName" style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mName }</td>
                                    <td style="vertical-align: middle; text-align: right;"><a class="button-blue button-link" data-toggle="modal" data-target="#myModal">닉네임 수정하기</a></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">연락처</td>
                                    <td id = "showPhone" style="vertical-align: middle; text-align: left;">${ sessionScope.loginUser.mPhone }</td>
                                    <td style="vertical-align: middle; text-align: right;"><a class="button-blue button-link"  data-toggle="modal" data-target="#phoneModal">연락처 수정하기</a></td>
                                </tr>

                            </table>
                            <br>
                            <div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog modal-sm">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">닉네임 바꾸기</h4>
										</div>
										<div class="modal-body">
											<p>변경할 닉네임을 입력하세요</p>
											<input type="text" class="form-control" id="changedName" name="changedName">
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-primary" id="ckNameBtn"
												onclick="ChangedName()">확인</button>
											<button type="button" class="btn btn-default" id="cancelBtn"
												data-dismiss="modal">취소</button>
										</div>
									</div>
								</div>
							</div>
						</li>
                    </ul>
                </div>
            </div>
			<div class="modal fade" id="phoneModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">연락처 변경</h4>
						</div>
						<div class="modal-body">
							<p>변경할 연락처을 입력하세요</p>
							<input type="text" class="form-control" id="changedPhone" name="changedPhone">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="ckNameBtn"
								onclick="ChangedPhone()">확인</button>
							<button type="button" class="btn btn-default" id="cancelBtn1"
								data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="pwdModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">비밀번호 변경</h4>
						</div>
						<div class="modal-body">
							기존 비밀번호를 입력하세요
							<input type="text" class="form-control" id="oldPwd" name="oldPwd"><br>
							새로운 비밀번호를 입력하세요
							<input type="text" class="form-control" id="newPwd1" name="newPwd1"><br>
							새로운 비밀번호를 입력하세요
							<input type="text" class="form-control" id="newPwd2" name="newPwd2"><br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="ckNameBtn"
								onclick="ChangedPwd()">확인</button>
							<button type="button" class="btn btn-default" id="cancelBtn2"
								data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>

        <!-- Left Sidebar Content -->
        <div class="left-sidebar col-md-pull-9 col-md-3" role="complementary">

            <div class="recent-widget widget padding-0" id="tabbed-widget">
                <h4 class="widget-title">마이페이지</h4><br>
                <hr>
                <div class="widget-content">
                   <ul>
                        <li>
                            <h4 class="list-title"><a href = '<c:url value = "showMemberInfo_update.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					</c:url>'>회원 정보 수정</a></h4>
                            <hr>
                        </li>
                        <li>

                            <h4 class="list-title"><a href = '<c:url value = "showMemberInfo_write.mb">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
					<c:param name="requestCurrentPage" value = "1"/>
					</c:url>'>내가 쓴 글</a></h4>
                            <hr>
                        </li>
                        <li>

                            <h4 class="list-title">
								<a href='<c:url value = "showMemberInfo_bandlist.mb">
									<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
									</c:url>'>내 밴드 상태보기</a>
							</h4>
							<hr>
                        </li>

                    </ul>
                    <a id = "dm" onclick = "deleteMember()">회원 탈퇴하기</a>
                </div>
            </div>

        </div>

				<c:url value = "insertChangedProfile.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
				</c:url>
    </div>

    <div class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="pull-left">
                    <div id="text-6">
                        <div class="textwidget"><a href="#">Weekend Magazine</a> &copy; 2015 All rights reserved</div>
                    </div>
                </div>
                <div class="pull-right hidden-xs">
                    <div id="text-7">
                        <div class="textwidget">Theme by <a title="Email me now" href="#">JKthemes</a></div>
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
    <c:set var = "loginUserMid" value = "${ sessionScope.loginUser.mid }" scope = "page"></c:set>
    <script>
    	$(function(){
    		$("#userImage").hide();
    		$("#lobtn").hide();
    	})

    	function changeProfile(){
    		$("#userImage").click();
    	}
    	
    	function loadImg(value){
    		var form = $("#userImage")[0].files[0];
    		var formData = new FormData();
    		 formData.append("uploadFile", form);
    		 
    		 
    		 
    		 <c:url var = "icp" value = "insertChangedProfile.me">
				<c:param name = "mid" value = "${ loginUserMid }"/>
			</c:url>
    		 
    		$.ajax({
				url : "${icp}",
				type : "post",
				data : formData,
				enctype: 'multipart/form-data',
				processData: false,
                contentType: false,
				success : function(data) {
					if(value.files && value.files[0]){
						var reader = new FileReader();
						reader.onload = function(e){
							$("#contentImg1").attr("src", e.target.result);
						}
						reader.readAsDataURL(value.files[0])
					}
					alert("변경이 완료 되었습니다.");
					
				},
				error : function() {
					console.log('실패');
				}
			})
		}
    	
    	function ChangedName(){
			var ckName = $("#changedName").val();
			
			$.ajax({
				url : "ChangedName.me",
				data : {mName : ckName, mid : ${ loginUserMid } },
				type : "post",
				success:function(data){
					console.log(data);
					if(data == 1){
						$("#changedName").val("");
						$("#cancelBtn").click();
						alert("변경이 완료되었습니다.");
						$("#showName").html(ckName);
					}else{
						alert("중복되는 닉네임입니다. 다시 입력하세요");
						
					}
				},
				error:function(){
					console.log("실패");
				}
			})
    	
    	}
    	
    	function ChangedPhone() {
			var changedPhone = $("#changedPhone").val();

			$.ajax({
				url : "ChangedPhone.me",
				type : "post",
				data : {
					mPhone : changedPhone, 
					mid : ${ loginUserMid }
				},
				success:function(data){
					console.log(data);
					if(data == 1){
						$("#changedPhone").val("");
						$("#cancelBtn1").click();
						alert("변경이 완료되었습니다.");
						$("#showPhone").html(changedPhone);
					}else{
						alert("중복되는 연락처입니다. 다시 입력하세요");
						
					}
				},
				error:function(){
					console.log("실패");
				}
			})
		}
    	
    	function ChangedPwd(){
    		var old = $("#oldPwd").val();
    		var new1 = $("#newPwd1").val();
    		var new2 = $("#newPwd2").val();
    		
    		if(old == "" || new1 == "" || new2 == ""){
    			alert("비밀번호를 입력해주세요.");
    			return false;
    		}
    		
    		$.ajax({
    			url : "CkPwd.me",
				type : "post",
				data : {
					old : old,
					mid : ${ loginUserMid }
				},
				success:function(data){
					if(data == 1){
						if(new1 != new2){
							alert("새로운 비밀번호가 일치하지 않습니다.");
							return false;
						}else{
							ChangedPwdAjax(new1);
						}
					}else{
						alert("기존 비밀번호가 일치하지 않습니다.");
					}
				},
				error:function(){
					console.log("실패");
				}
    		})
    		
    	}
    	
    	function ChangedPwdAjax(new1){
    		$.ajax({
    			url : "ChangedPwd.me",
				type : "post",
				data : {
					newPwd : new1,
					mid : ${ loginUserMid }
				},
				success:function(data){
					$("#oldPwd").val("");
		    		$("#newPwd1").val("");
		    		$("#newPwd2").val("");
		    		$("#cancelBtn2").click();
		    		$("#cancelBtn2").click();
					alert("비밀번호 변경이 성공했습니다.");
				},
				error:function(){
					console.log("실패");
				}
    		})
    	}
    	
    	function deleteMember(){
    		var ck = window.confirm("진짜 탈퇴?");
    		
    		if(ck){
    			$.ajax({
    				url : "deleteMember.me",
    				data : {
    					mid : ${ sessionScope.loginUser.mid }
    				},
    				type : "post",
    				success:function(data){
    					alert("정상적으로 탈퇴가 되었습니다.");
    					window.location.href = "logout.me";
    				},
    				error:function(){
    					console.log("실패");
    				}
    			})
    		}
    	}
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/sss.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>

</html>