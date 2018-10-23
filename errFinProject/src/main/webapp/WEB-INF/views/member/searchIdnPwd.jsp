<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content=" width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>ERROR404</title>
    <!-- CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
    <link href="resources/css/light-pink-blue.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="home page page-id-4 page-template page-template-template_home-php">
 <!-- LOGO AREA -->
    <div class="fullwidth bg-pink">
       <div class="col-md-6 col-xs-12" style="min-width:600px;">
          <div class="logo" style="width:120px; min-width:120px; float:left;">
            <h1><a href="${contextPath }" title="Weekend Magazine">ERR404</a></h1>
          </div>
         
        </div>
    </div> 
    <div class="container">
        <div class="main col-md-12 col-xs-12">
            <div class="widget">
                <h4 class="page-title">아이디 / 비밀번호 찾기</h4>
                <div class="widget-content" style="width : 49%; height: 500px; float : left; padding-top : 120px;
                							padding-left : 30px; padding-right : 30px;" align="center">
                        <h2 class="page-title">아이디 찾기</h2>
                        <table>
                            <tr>
                                <td width="100px">
                                    <p>닉네임</p>
                                </td>
                                <td>
                                    <input type="text" id = "mName" class="form-control">
                                </td>
                            </tr>
                            <tr>
                                <td width="100px">
                                    <p>연락처</p>
                                </td>
                                <td>
                                    <input type="text" id = "mPhone" class="form-control">
                                </td>
                            </tr>

                        </table>
                        <div align="center">
                            <a class="button-gray button-link" href = "goMain.me">돌아가기</a>
                            <a class="button-orange button-link" onclick = "findEmail()">이메일 찾기</a>
                        </div>
                </div>
                <div class="widget-content" style="float : left; height: 500px; border : 1px solid #25afe5;">

                </div>
                <div class="widget-content" style="width : 49%; height: 500px; float : left; padding-top : 120px;
                							padding-left : 30px; padding-right : 30px;" align="center">
                        <h4 class="page-title">비밀번호 찾기</h4>
                        <table>
                            <tr>
                                <td width="100px">
                                    <p>이메일</p>
                                </td>
                                <td>
                                    <input type="text" id = "mEmail" class="form-control">
                                </td>
                            </tr>
                            <tr id = "auth">
                                <td width="100px">
                                    <p>인증번호</p>
                                </td>
                                <td>
                                    <input type="text" id = "authNum" class="form-control">
                                </td>
                            </tr>

                        </table>
                        <div align="center">
                            <a class="button-gray button-link" href = "goMain.me">돌아가기</a>
                            <a id = "findPwd" class="button-orange button-link" onclick = "findPwd()">비밀번호 찾기</a>
                            <a id = "doAuth" class="button-orange button-link" onclick = "doit()">인증하기</a>
                            <button id = "changedBtn" data-toggle="modal" data-target="#pwdModal"></button>
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
						<form id = "changeNewPwd" method = "post">
						<div class="modal-body">
							새로운 비밀번호를 입력하세요
							<input type="text" class="form-control" id="newPwd1" name="newPwd1"><br>
							새로운 비밀번호를 입력하세요
							<input type="text" class="form-control" id="newPwd2" name="newPwd2"><br>
							<input type = "hidden" id = "email" name = "mEmail">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" id="ckNameBtn"
								onclick="ChangedPwd()">확인</button>
							<button type="button" class="btn btn-default" id="cancelBtn2"
								data-dismiss="modal">취소</button>
						</div>
						</form>
					</div>
				</div>
			</div>
    </div>

    <div class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="pull-left">
                    <div id="text-6">
                        <div class="textwidget"><a href="#">ERROR404</a> &copy; 2015 All rights reserved</div>
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
    <script>
    	$(function(){
    		$("#auth").hide();
    		$("#doAuth").hide();
    		$("#changedBtn").hide();
    	})
    
    	function findEmail(){
    		var mName = $("#mName").val();
    		var mPhone = $("#mPhone").val();
    		
    		$.ajax({
    			url : "findEmail.me",
    			type : "post",
    			data : {
    				mName : mName,
    				mPhone : mPhone
    			},
    			success:function(data){
    				var url = data.replace('"', "");
        			var url2 = url.replace('"', "");
    				console.log(url2);
    				if(url2.match("nope")){
    					alert("일치하는 정보가 없습니다.");
    				}else{
    					alert(mName + " 회원님의 Email \n" + url2);
    				}
    			},
    			error:function(){
    				alert("일치하는 정보가 없습니다.");
    			}
    		});
    	}
    	
    	
    	function findPwd(){
    		var mEmail = $("#mEmail").val();
    		
    		$.ajax({
    			url : "findPwd.me",
    			type : "post",
    			data : {
    				mEmail : mEmail,
    			},
    			success:function(data){
    				var url = data.replace('"', "");
        			authNum = url.replace('"', "");
    				console.log(authNum);
        			if(data.match("nope")){
        				alert("등록된 회원정보가 없습니다.")
        			}else{
        				alert("인증번호를 입력해주세요.");
        				$("#auth").show();
        	    		$("#doAuth").show();
        	    		$("#findPwd").hide();
        			}
    			
    			},
    			error:function(){
					console.log("실패");
    			}
    		});
    	}
    	
    	function doit(){
    		var num = $("#authNum").val();
    		
    		if(authNum.match(num)){
    			$("#changedBtn").click();	
    		}else{
    			consoel.log("실패");
    		}
    	}
    	
    	function ChangedPwd(){
    		var mEmail = $("#mEmail").val();
    		var newPwd1 = $("#newPwd1").val();
    		var newPwd2 = $("#newPwd2").val();
    		$("#email").val($("#mEmail").val());
    		
    		if(newPwd1 != ""){
    			
    		if(newPwd1 ==newPwd2){
    			$("#changeNewPwd").attr("action", "changeNewPwd.me");
    			$("#changeNewPwd").submit();
    			alert("비밀번호 변경이 완료되었습니다.");
    		}else{
    			alert("비밀번호가 일치하지 않습니다.");
    		}
    		}
    	}
    	
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>
</html>