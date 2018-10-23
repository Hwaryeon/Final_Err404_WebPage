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
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
	<style type="text/css">
		#btnJoinFacebook{
      width:300px;
      height:51px;
      padding-left : 0px;
      padding-top : 0px;
      padding-bottom : 0px;
      /* background:#2E64FE;
      border:solid 1px #FAFAFA;
      color:#FAFAFA; */
      border:solid 1px #2E64FE;
      background:#FAFAFA;
      color:#2E64FE;
      line-height : 100%;
   }
   
    #btnJoinGoogle{
      width:300px;
      height:51px;
      padding-left : 0px;
      padding-top : 0px;
      padding-bottom : 0px;
      /* border:solid 1px #FAFAFA;
      background:#DF0101;
      color:#FAFAFA; */
      border:solid 1px #DF0101;
      background:#FAFAFA;
      color:#DF0101;
   }
   
    #btnJoinNaver{
      width:300px;
      height:51px;
      padding-left : 0px;
      padding-top : 0px;
      padding-bottom : 0px;
      /* border:solid 1px #FAFAFA;
      background:#DF0101;
      color:#FAFAFA; */
      border:solid 1px #1EC800;
      background:#FAFAFA;
      color:#1EC800;
   }
	</style>
    
    <title>ERR404</title>
    <!-- CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
    <link href="resources/css/light-pink-blue.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>-->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <style>
  	#btns:hover{
  		cursor : pointer;
  	}
  </style>
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
        <div class="main col-xs-push-3 col-md-12 col-xs-12" style="width : 100%; margin-bottom: 20px;">
            <div class="widget" style="width : 52%; text-align: center; margin: auto;">

                <div style="width:530px; height:720px; display: inline-block;">
                    <div style="height : 250px; margin-bottom: 50px;">
                        <img src = "${contextPath }/resources/images/giphy.gif" style = "width : 50%; height : 100%;"/>
                    </div>
                    <div class="col-xs-12">
                    	<form action = "login.me" method = "post" id = "insertLogin">
                    	<table>
                    	<tr>
	                        <td width = "428px">
	                        <input class="form-control" type="text" name = "mEmail" id = "mEmail" placeholder="이메일">
                    		</td>
                    		<td rowspan = '2' style = "vertical-align : middle;" height = "85px">
                    			<a style = "height : 75px; text-align : center; margin-top : 0px; padding-top : 38%;" id = 'btns' class = "button-orange button-link" onclick = "moveMain();">로그인</a>
                    		</td>
                    	</tr>
                    	<tr>
                    	<td>
                        <input class="form-control" type="password" name = "mPwd" id = "mPwd" placeholder="비밀번호">
                    	</td>
						</tr>
                        
                    	</table>
                    	</form>
                        <hr>
                        <div style="text-align:center; margin-left : auto; margin-right : auto; padding : 0px;">
                          		<a id = "Test4">
                          		<button id = "btnJoinGoogle" class = "Test3">
                       			<table>
                       			<tr>
									<td>
                       					<img src = "${ contextPath}/resources/images/login/ggicon.png">
									</td>
                       				<td style = "font-size : 10pt;align : center; width : 250px; heigth : 50px; vertical-align : middle">
                       					구글 아이디로 로그인하기
                       				</td>
                       			</tr>
                       			</table>
                       			</button>
                       			</a>
                        </div>
                        <br>
                        <div style="text-align:center; margin-left : auto; margin-right : auto; padding : 0px;">
                          		<a id = "Test3">
                          		<button id = "btnJoinFacebook" class = "Test3">
                       			<table>
                       			<tr>
									<td>
                       					<img src = "${ contextPath}/resources/images/login/fb50px.png">
									</td>
                       				<td align = "center" style = "font-size : 10pt; align : center; width : 250px; heigth : 50px; vertical-align : middle">
                       					페이스북 아이디로 로그인하기
                       				</td>
                       			</tr>
                       			</table>
                       			</button></a>
                        </div>
                        <br>
                            <div id="naver_id_login" style="text-align:center; padding : 0px; margin-left : auto; margin-right : auto;">
                            <a id = "Test2" style = "padding : 0px;">
                            <button id = "btnJoinNaver" class = "Test3">
                       			<table>
                       			<tr>
									<td>
                       					<img src = "${ contextPath}/resources/images/login/naveicon.png">
									</td>
                       				<td style = "font-size : 10pt; width : 250px; heigth : 50px; vertical-align : middle">
                       					네이버 아이디로 로그인하기
                       				</td>
                       			</tr>
                       			</table>
                       			</button>
                            </a></div>
                        <hr>
                        <a href = "memberJoinForm.me">회원가입</a><br>
                        <a href = "searchIdnPwd.me">아이디 / 비밀번호 찾기 </a>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <script>
    $(function(){
  	  
      	$.ajax({
      		url : "testlogin.lg",
      		data : {},
      		type : "post",
      		success:function(data){
    			var url = data.replace('"', "");
    			var url2 = url.replace('"', "");
    			console.log(url2);
    			$("#Test2").attr("href", url2);
      		},
      		error:function(){
      			console.log('실패');
      		}
      	});
      	
      	$.ajax({
      		url : "FBurl.lg",
      		data : {},
      		type : "post",
      		success:function(data){
    			var url = data.replace('"', "");
    			var url2 = url.replace('"', "");
    			console.log(url2);
    			$("#Test3").attr("href", url2);
    			$(".Test3").attr('onclick', "location.href = '" + url2 + "'");
      		},
      		error:function(){
      			console.log('실패');
      		}
      	});
      	
      	$.ajax({
      		url : "gg.lg",
      		data : {},
      		type : "post",
      		success:function(data){
    			var url = data.replace('"', "");
    			var url2 = url.replace('"', "");
    			console.log(url2);
    			$("#Test4").attr("href", url2);
      		},
      		error:function(){
      			console.log('실패');
      		}
      	});
      })
    
    	function moveMain(){
    		$("#insertLogin").submit();
    	}
    	
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>
</html>