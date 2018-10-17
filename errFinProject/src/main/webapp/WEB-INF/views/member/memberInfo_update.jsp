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
    <title>ERR404 l 마이페이지</title>
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
  <style>
  	a{
  		cursor : pointer;
  	}
  </style>
</head>

<body class="home page page-id-4 page-template page-template-template_home-php">
   <jsp:include page="../common/menubar.jsp" />

    <div class="container" style = "min-height : 700px;">
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
                                    	<c:if test = "${sessionScope.loginUser.mType eq 'LOCAL' }">
                                    		<td width="200px" style="vertical-align: middle;">
	                                    	<img id = "contentImg1" src="resources/upload_images/${ memberProfile.editName }" alt="" style = "width : 64px; height : 64px;">
	                                    	</td>
                                    	</c:if>
                                    	<c:if test = "${sessionScope.loginUser.mType ne 'LOCAL' }">
	                                    	<td width="200px" style="vertical-align: middle;">
	                                    	<img id = "contentImg1" src="${ memberProfile.fileSrc }${ memberProfile.editName }" alt="" style = "width : 64px; height : 64px;">
	                                    	</td>
                                    	</c:if>
                                    </c:if>
                                    <td width="500px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" onclick = "changeProfile()">이미지 수정하기</a></td>
                                </tr>

                            </table>
                            <input type="file" id="userImage" name="userImage" multiple onchange="loadImg(this)">
                            <hr>
                            <br>
                            <form id= 'changedInfo' method = "post">
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                                <tr>
                                    <td width = "100px" style="vertical-align: middle; border-right : 1px solid lightgray;" rowspan = "11">
                                        <h5>개인정보</h5>
                                    </td>
                                    <td width="160px" style="padding-top : 10px; padding-bottom : 10px; vertical-align: middle;">이메일</td>
                                    <td width="400px" style="vertical-align: middle; text-align: left;">
                                    <input class = 'form-control' type = "text" value = "${ sessionScope.loginUser.mEmail }" id = "disabledInput" disabled></td>
                                    <td width="90px" style="vertical-align: middle; text-align: right"></td>
                                </tr>
                                <tr>
                                	<td colspan = '3' height = "20px"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">현재 비밀번호</td>
                                    <td id = "nop" style="vertical-align: middle; text-align: left;">
                                    <input id = "nowPwd" name = "nowPwd" class = 'form-control' type = "password"></td>
                                    <td style="vertical-align: middle; text-align: right;"></td>
                                </tr>
                                <tr>
                                	<td colspan = '3' height = "20px"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">변경할 비밀번호</td>
                                    <td id = "nop" style="vertical-align: middle; text-align: left;">
                                    <input id = "newPwd" name = "newPwd" class = 'form-control' type = "password"></td>
                                    <td style="vertical-align: middle; text-align: right;"></td>
                                </tr>
                                <tr>
                                	<td colspan = '3' height = "20px"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">변경할 비밀번호 확인</td>
                                    <td id = "nop" style="vertical-align: middle; text-align: left;">
                                    <input id = "newPwd2" name = "newPwd2"  class = 'form-control' type = "password"></td>
                                    <td style="vertical-align: middle; text-align: right;"></td>
                                </tr>
                                <tr>
                                	<td colspan = '3' height = "20px"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">닉네임</td>
                                    <td id = "showName" style="vertical-align: middle; text-align: left;">
                                    <input id = 'mName' name = "mName" class = 'form-control' type = "text" value = "${ sessionScope.loginUser.mName }"></td>
                                    <td style="vertical-align: middle; text-align: right;"></td>
                                </tr>
                                <tr>
                                	<td colspan = '3' height = "20px"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: middle;">연락처</td>
                                    <td id = "showPhone" style="vertical-align: middle; text-align: left;">
                                    <input id = 'mPhone' name = "mPhone" class = 'form-control' type = "text" value = "${ sessionScope.loginUser.mPhone }"></td>
                                    <td style="vertical-align: middle; text-align: right;"></td>
                                </tr>
                            </table>
                            <br>
                            <input name = "mid" type = "hidden" value = "${sessionScope.loginUser.mid }">
                            <input name = "mEmail" type = "hidden" value = "${sessionScope.loginUser.mEmail }">
                            <div align = "center">
                           		<a class="button-blue button-link" onclick = 'changedInfo();'>개인정보 수정하기</a>
                            </div>
                            </form>
                            <br>
						</li>
                    </ul>
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
                        <li>
                            <h4 class="list-title">
								<a data-toggle="modal" data-target="#myModal2">초대코드로 가입하기</a>
							</h4>
							<hr>
                        </li>

                    </ul>
                    <a id = "dm" data-toggle="modal" data-target="#myModal">회원 탈퇴하기</a>
                </div>
            </div>

        </div>
        
        <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content" style = "width : 350px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">초대코드로 가입하기</h4>
        </div>
        <form action = "moveToInviteCode.mb" method = "post">
        <div class="modal-body" align = "center">
          <p><br><br>

			친구가 불러준 숫자와 영단어를 입력한 후<br>
			초대장 확인을 클릭하세요.</p><br><br>
			
			<input type = 'text' id = 'inviteCode' class = 'form-control' name = 'inviteCode'/><br><br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
          <button class="btn btn-primary" type = "submit">확인하기</button>
        </div>
        </form>
      </div>
    </div>
  </div>
        
        <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content" style = "width : 350px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원 탈퇴</h4>
        </div>
        <div class="modal-body">
          <p><font>회원 탈퇴 전에 꼭 확인하세요</font><br><br>

회원탈퇴하면,<br><br>

내가 가입한 모든 밴드의 내가 등록한 글, 사진, 댓글 등을 수정/삭제할 수 없게 됩니다.<br>
필요한 경우 탈퇴 전에 수정하거나 삭제하시기 바랍니다.<br><br>

가입되어있는 밴드의 멤버들과의 모든 채팅방에서 나가게 됩니다.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">취소하기</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick = "deleteMember()">탈퇴하기</button>
        </div>
      </div>
    </div>
  </div>

				<c:url value = "insertChangedProfile.me">
					<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
				</c:url>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <c:set var = "loginUserMid" value = "${ sessionScope.loginUser.mid }" scope = "page"></c:set>
    <script>
    	$(function(){
    		$("#userImage").hide();
    		$("#lobtn").hide();
    	});
    	
    	function changedInfo(){
    		var newPwd = $("#newPwd").val();
    		var newPwd2 = $("#newPwd2").val();
    		var nowPwd = $("#nowPwd").val();
    		
    		if(nowPwd != ""){
    		if(newPwd != ""){
    			//비밀번호 바꾸기
	    			if(newPwd == newPwd2){
	    				$("#changedInfo").attr('action', "changePwd.me");
	    				$("#changedInfo").submit();
	    			}else{
	    				alert("변경할 비밀번호를 확인해주세요");
	    			}
	    		}else{
	    			//정보 수정
	    			$("#changedInfo").attr('action', "changeInfo.me");
	    			$("#changedInfo").submit();
	    		}
    		}else{
    			alert("현재 비밀번호를 입력하세요");
    		}
    		
    	}

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
    	
    	function deleteMember(){
    		
    			$.ajax({
    				url : "deleteMember.me",
    				data : {
    					mid : `${ sessionScope.loginUser.mid }`
    				},
    				type : "post",
    				success:function(data){
    					alert("정상적으로 탈퇴가 되었습니다.");
    					location.href = "logout.me";
    				},
    				error:function(){
    					console.log("실패");
    				}
    			})
    		
    	}
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/sss.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>

</html>