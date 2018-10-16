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
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
</head>

<body class="home page page-id-4 page-template page-template-template_home-php">
    <jsp:include page="../common/menubar.jsp" />

    <div class="container" style = "min-height : 700px;">
        <!-- Main Content -->
        <div class="main col-md-9 col-md-push-3 col-xs-12">

            <div class="widget fullwidth post-single">
                <h2 class="post-title">내 밴드 모아보기</h2><br>
                <div class="widget-content">
                    <ul>
                        <li>
                            <table style="display: table-cell; vertical-align: middle; text-align: center;">
                            <c:if test = "${ !empty list }">
                            <c:forEach var = "lists" items = "${ list }" varStatus = "status">
                                <tr id = "tr${ status.index }">
                                    <td width="180px" style="vertical-align: middle; padding-top : 5px; padding-bottom : 5px;">
                                    	<img src="resources/upload_images/${ lists.editName }" style = "height : 80px; width : 100px; " alt=""></td>
                                    <td width="600px" style="vertical-align: middle; text-align: left; text-indent: 20px;">
                                        <p class="bold">${ lists.bName }</p>
                                        
                                    </td>
                                    <c:if test = "${ lists.iStatus eq 'Y' }">
                                    <td width="200px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" data-toggle="modal" data-target="#bandOutModal${ status.index }">밴드 탈퇴하기</a></td>
                                    <div class="modal fade" id="bandOutModal${ status.index }" role="dialog">
										<div class="modal-dialog modal-sm" >
											<div class="modal-content" style = "width : 500px; margin-left : -70px;">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">밴드 탈퇴</h4>
												</div>
												<div class="modal-body">
													<p><font size ="12">
													이 밴드에 내가 등록한 글, 사진, 댓글 등을 수정/삭제할 수 없게 됩니다.<br>
													필요한 경우 탈퇴 전에 수정하거나 삭제하시기 바랍니다.</font></p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-primary" id="ckBtn"
														onclick="bandOut(${ lists.mid}, ${ lists.bid }, ${ status.index })">확인</button>
													<button type="button" class="btn btn-default" id="cancelBtn${ status.index }"
														data-dismiss="modal">취소</button>
												</div>
											</div>
										</div>
									</div>
                                    </c:if>
                                    <c:if test = "${ lists.iStatus eq 'S' }">
                                    <td width="200px" style="vertical-align: middle; text-align: right"><a class="button-blue button-link" data-toggle="modal" data-target="#bandCancelModal${ status.index }">가입신청 취소하기</a></td>
                                   	<div class="modal fade" id="bandCancelModal${ status.index }" role="dialog">
										<div class="modal-dialog modal-sm" >
											<div class="modal-content" style = "width : 500px; margin-left : -70px;">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">밴드 신청 취소</h4>
												</div>
												<div class="modal-body">
													<p>선택하신 밴드의 가입을 취소하시겠습니까?</p>
												</div>
												<div class="modal-footer">
												<button type="button" class="btn btn-primary" id="ckBtn"
													onclick="bandCancel(${ lists.mid}, ${ lists.bid }, ${ status.index })">확인</button>
												<button type="button" class="btn btn-default" id="cancelBtn${ status.index }"
													data-dismiss="modal">취소</button>
												</div>
											</div>
										</div>
									</div>
                                    </c:if>
                                </tr>
                            </c:forEach>
                            </c:if>
                            <c:if test = "${ empty list }">
                            <tr>
                            	<td width = "820px" style="vertical-align: middle; text-align: center;">
                            		가입한 밴드가 없습니다
                            	</td>
                            </tr>
                            </c:if>
                            </table>
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
									</c:url>'>내 밴드 모아보기</a>
							</h4>
							<hr>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../common/footer.jsp" />
    <script>
    	function bandOut(mid, bid, index){
    		console.log(mid);
    		console.log(bid);
    		console.log(index);
    		
    		$.ajax({
    			url : "updateiStatus.mb",
    			data : {mid : mid, bid : bid},
    			type : "post",
    			success:function(data){
					$("#cancelBtn" + index).click();
					alert("밴드를 탈퇴했습니다.");
					$("#tr" + index).remove();
    			},
    			error:function(){
    				console.log("실패");
    			}
    		});  
    	}
    	
    	function bandCancel(mid, bid, index){
    		console.log(mid);
    		console.log(bid);
    		console.log(index);
    		
    		$.ajax({
    			url : "updateiStatus.mb",
    			data : {mid : mid, bid : bid},
    			type : "post",
    			success:function(data){
					alert("가입신청이 취소되었습니다.");
					$("#tr" + index).remove();
					$("#cancelBtn" + index).click();
    			},
    			error:function(){
    				console.log("실패");
    			}
    		});
    	}
    </script>
    <script src="resources/js/jquery.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.bxslider.min.js"></script>
    <script src="resources/js/sss.min.js"></script>
    <script src="resources/js/custom.js"></script>
</body>

</html>