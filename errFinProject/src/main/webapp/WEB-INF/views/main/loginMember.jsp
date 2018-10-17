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
                        <li><a href="sampleForward.sample">샘플데이터</a></li>
                        <li><a href="codeFactoryMain.codeFac">codeFactory</a></li>
                        <li><a href="article-review.html">Article Review</a></li>
                        <li><a href="archives.html">Archives</a></li>
                        <li><a href="category.html">Category</a></li>
                        <li><a href="fullwidth.html">Full Width</a></li>
                        <li><a href="shortcodes.html">Shortcodes</a></li>
                        <li><a href="404.html">404</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="newPost.np">새글 피드</a></li>
                        <li><a href="bandCalendarList.bd">달력 호출</a></li>
                        <li><a href="bandLeader.bd?bid=1">밴드 리더</a></li>
                        <li><a href="bandLeader.bd">밴드 리더</a></li>
                        <li><a href="list.do">으쟈쟈쟈</a></li>
                        <li><a href="boardMember.do">회원리스트</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- LOGO AREA -->
    <div class="fullwidth bg-pink">
       <div class="col-md-6 col-xs-12" style="min-width:600px;">
          <div class="logo" style="width:120px; min-width:120px; float:left;">
            <h1><a href="${contextPath }" title="Weekend Magazine">ERR404</a></h1>
          </div>
         
        </div>
    </div>
    
    <div class="container">
        <div class="main col-xs-push-4 col-md-12 col-xs-12" style="width : 100%; margin-bottom: 20px;">
            <div class="widget" style="width : 45%; text-align: center; margin: auto;">

                <div style="width:400px; height:700px; display: inline-block;">
                    <div style="height : 140px; border : 1px solid black; margin-bottom: 50px;">
                        이미지? 공백?
                    </div>
                    <div class="col-xs-12">
                    	<form action = "login.me" method = "post" id = "insertLogin">
                        <input class="form-control" type="text" name = "mEmail" id = "mEmail" placeholder="이메일">
                        <br>
                        <input class="form-control" type="password" name = "mPwd" id = "mPwd" placeholder="비밀번호">
                        <br>
                        <a id = 'btns' class = "button-orange button-link" onclick = "moveMain();">로그인</a>
                        <br>
                    	</form>
                        <hr>
                        <div style="text-align:center; margin-left : auto; margin-right : auto;">
                          		<a id = "Test4"><img width="290px" height = "60px" src="resources/images/login/GGlogin1.png"/></a>
                        </div>
                        <br>
                        <div style="text-align:center; margin-left : auto; margin-right : auto;">
                          		<a id = "Test3"><img width="280px" height = "40px" src="resources/images/login/FBLogin1.PNG"/></a>
                        </div>
                        <br>
                            <div id="naver_id_login" style="text-align:center">
                            <a id = "Test2"><img width="280px" height = "50px" src="resources/images/login/naver.PNG"/>
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