<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>회원가입 | 밴드</title>
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
  <style>
  	#btns:hover{
  		cursor : pointer;
  	}
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
</head>

<body
	class="home page page-id-4 page-template page-template-template_home-php">
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
				<h4 class="page-title">회원가입</h4>
				<div class="widget-content"
					style="width: 49%; height: 530px; float: left; margin-top: 30px;"
					align="center">
					<form action="joinMember.me" method="post" id="joinMember" encType = "multipart/form-data">
						<table>
							<tr>
								<td width="300px"><input class="form-control" name="mEmail" id = "mEmail"
									type="text" placeholder="이메일" /></td>
								<td width="20px"></td>
								<td><a id = 'btns' class="button-navy button-link" onclick = "cntEmail()">인증하기</a></td>
							</tr>
							<tr>
								<td width="300px"><input class="form-control" type="text" name = "checkAuth"
									id = "checkAuth" placeholder="인증번호" /></td>
								<td width="20px"></td>
								<td><a id = 'btns' class="button-navy button-link" onclick = "authEmail()">확인하기</a></td>
							</tr>
							<tr>
								<td width="300px" height="38px"><input class="form-control"
									id="mPwd" name="mPwd" type="password" placeholder="비밀번호" /></td>
								<td width="20px"></td>
								<td></td>
							</tr>
							<tr>
								<td width="300px"><input class="form-control" id='checkPwd'
									type="password" placeholder="비밀번호확인" onkeyup="comparePwd()"></td>
								<td width="20px"></td>
								<td width="130px;" id="showComResult"></td>
							</tr>
						</table>
						<table
							style="display: table-cell; vertical-align: middle; text-align: center;">
							<h4 class="page-title">개인정보</h4>
							<tr>
								<td colspan="4" width="290px"><input class="form-control"
									name="mName" type="text" id="mName" placeholder="닉네임" /></td>
								<td width="20px"></td>
								<td><a id = 'btns' class="button-navy button-link"
									onclick='checkmName()'>중복확인</a></td>
								<td width="20px"></td>
							</tr>
							<tr>
								<td colspan="4" width="300px"><input class="form-control"
									name="mPhone" id = "mPhone" type="text" placeholder="휴대폰번호(-제외)" /></td>
								<td width="20px"></td>
								<td rowspan="2"></td>
							</tr>
							<tr>
								<td colspan="7" height="15px"></td>
							</tr>
							<tr>
								<td align="center" rowspan="2">Language</td>
								<td align="right"><input type="radio" name="mNational"
									id="EN" value = "en"></td>
								<td><label for="EN" style="padding-left: 10px;">EN</label></td>
								<td align="right" style="padding-right: 10px;"><input
									type="radio" name="mNational" id="KR" value = "ko"></td>
								<td><label for="KR">KR</label></td>
							</tr>
							<tr>
								<td colspan="7" height="15px"></td>
							</tr>
						</table>
						<h4 class="page-title">프로필 이미지</h4>
						<table
							style="display: table-cell; vertical-align: middle; text-align: center;">
							<tr>
								<td width="270px" style="vertical-align: middle; text-align: left;">
									<img id = "contentImg1" src="resources/images/user.png" alt="" style = "width : 64px; height : 64px;">
									<input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
								</td>
								<td style="vertical-align: middle;"><a class="button-navy button-link" onclick = "changeImage()">이미지 변경</a></td>
							</tr>
						</table>
						<div align="center">
							<a id = 'btns' class="button-gray button-link">돌아가기</a> <a
								id = 'btns' class="button-orange button-link" onclick="insertForm()">가입하기</a>
						</div>
					</form>
				</div>
				<div class="widget-content"
					style="float: left; height: 550px; border: 1px solid #25afe5;">

				</div>
				<div class="widget-content"
					style="width: 49%; height: 500px; float: left; padding-top: 100px;">
					<div style="text-align:center">
						<a id = "Test4" href = "${ ggurl }">
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
						<%-- <a href = ${ ggurl }><img width="290px" height = "60px" src="resources/images/login/GGlogin1.png"/></a> --%>
					</div>
					<br>
					<div style="text-align:center">
						<a id = "Test3" href = "${ FB_url }">
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
						<%-- <a href = ${ FB_url }><img width="280px" height = "40px" src="resources/images/login/FBLogin1.PNG"/></a> --%>
					</div>
					<br>
					<div id="naver_id_login" style="text-align:center">
					<a id = "Test2" style = "padding : 0px;" href = "${ url }">
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
	                            </a>
                           <%--  <a href = ${ url }><img width="280px" height = "60px" src="resources/images/login/naver.PNG"/> --%>
                            </a></div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page = '../common/footer.jsp'/>
	
	<script>
		$(function() {
			$("#userImage").hide(); 
			nameResult = -99;
			emailResult = -99;
			ck = -99;
			
		});

		function changeImage(){
			$("#userImage").click();
		}
		
		function loadImg(value){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$("#contentImg1").attr("src", e.target.result);
				}
				reader.readAsDataURL(value.files[0])
			}
			
		}
		
		function insertForm() {
			//로그인 유효성 검사
			var email = $("#mEmail").val();
			var checkNum = $("[name=checkNum]").val();
			var mpwd = $("#mPwd").val();
			var cpwd = $("#checkPwd").val();
			var phone = $("#mPhone").val();
			
			
			var ckEmail = /^[a-zA-Z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
			var ckPwd = /^[a-zA-Z0-9_-]{3,12}$/;
			var ckPhone = /^[0-9]{11,13}$/
			
			if(!ckEmail.test(email)){
				alert("Email을 확인하세요.");
				$("#mEmail").focus();
				return false;
			}
			
			if(mpwd == ""){
				alert("비밀번호를 확인하세요.");
				$("#mPwd").focus();
				return false;
			}else if(mpwd != cpwd || cpwd == ""){
				alert("비밀번호가 일치하지 않습니다.");
				$("#checkPwd").focus();
				return false;
			}
			
			if(nameResult != 0){
				if(nameResult == -99){
					alert("닉네임을 확인하세요.");
				}else if(nameResult == 1){
					alert("중복되는 닉네임입니다. 다시 입력해주세요.");
				}
				$("#mName").focus();
				return false;
			}
			
			if(!ckPhone.test(phone)){
				alert("연락처를 확인하세요.");
				$("#mPhone").focus();
				return false;
			}
			
			if(!$("#KR").is(":checked") && !$("#EN").is(":checked")){
				alert("언어(language)를 확인하세요.");
				return false;
			} 
			
			if(emailResult != 1){
				alert("Email을 확인하세요.");
				return false;
			}
			
			
			checkmPhone();
		}

		function comparePwd() {
			mpwd = $("#mPwd").val();
			cpwd = $("#checkPwd").val();
			
			if(mpwd == cpwd) {
				$("#showComResult").html("<b>비밀번호가 일치합니다.</b>");
			} else {
				$("#showComResult").html("<b>비밀번호가 다릅니다.</b>");
			}

			if (cpwd == "") {
				$("#showComResult").html("");
			}
		}

		function checkmName() {
			var name = $("#mName").val();

			$.ajax({
				url : "checkmName.me",
				type : "post",
				data : {
					mName : name
				},
				success : function(data) {
					nameResult = data.check;

					if (nameResult == 0) {
						alert("사용 가능한 닉네임입니다.");
					} else {
						alert("중복되는 닉네임 입니다.");
					}
				},
				error : function() {
					console.log('실패');
				}
			})
		}
		
		function checkmPhone() {
			var phone = $("#mPhone").val();

			$.ajax({
				url : "checkmPhone.me",
				type : "post",
				data : {
					mPhone : phone
				},
				success : function(data) {
					result = data;

					if (result == 0) {
						$("#joinMember").submit();
					} else {
						alert("중복되는 연락처입니다. 다시 확인하세요.");
						return false;
					}
				},
				error : function() {
					console.log('실패');
				}
			})
		}
		
		function ckEmail(){
			var mEmail = $("#mEmail").val();

			$.ajax({
				url : "checkEmail.me",
				type : "post",
				data : {
					mEmail : mEmail
				},
				success : function(data) {
					emailResult = 2;
					var au = data.replace('"', "");
	    			var auth = au.replace('"', "");
					authNum = auth;
					console.log(authNum);
					alert(mEmail + "에서 인증번호를 확인하세요");
				},
				error : function() {
					alert("올바르지 않은 이메일 입니다.")
				}
			})
			
			
		}
		
		function cntEmail(){
			var mEmail = $("#mEmail").val();
			$.ajax({
				url : "cntEmail.me",
				type : "post",
				data : {
					mEmail : mEmail
				},
				success : function(data) {
					if(data == 0){
						ckEmail();
					}else{
						alert("중복되는 Email 입니다.")
					}
					
				 
				},
				error : function() {
					console.log("실패");
				}
			})
			
			
		}
		
		function authEmail(){
			var checkAuth = $("#checkAuth").val();
			
			
			if(emailResult == -99){
				alert("Email 인증을 받으세요");
			}else if(emailResult == 2){
				if(authNum.match(checkAuth)){
					alert("인증이 완료되었습니다");
					emailResult = 1;
				}else{
					alert("인증번호를 다시 확인해주세요");
					emailResult = 0;
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