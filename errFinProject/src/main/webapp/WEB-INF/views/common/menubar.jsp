<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <title>Weekend Magazine</title>
  
  <!-- CSS -->
  <link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/sss.css" rel="stylesheet">
  <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
  
  <!-- JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
  
</head>
<style>
	.ui-autocomplete-loading {
    background: white url("images/ui-anim_basic_16x16.gif") right center no-repeat;
  }
  
	.alarm{
		position:absolute;
		width: 300px;
		z-index: 100;
	}
	
	.alarm_img:hover{
		cursor:pointer;
	}
	
	.alarm .alarm_band{
		color: white; 
		background-color: #2d2d2d;
		width: 300px; 
		line-height: 22px; 
		vertical-align: middle; 
		position: relative;
		display:inline-block;
	    padding-left: 10px;
	    padding-top: 15px;
	    padding-right: 10px;
	    border-bottom: gray dashed 1px;
	}
	
	.alarm .alarm_band:hover{
		background-color: black;
		cursor:pointer;
	}
	
	.alarm_title{
		color: white; 
		background-color: #2d2d2d;
		width: 300px; 
		font-size:20px;
		line-height: 22px; 
	    padding: 10px;
    	border-bottom: white solid;
	}
	
	.delete_alarm{
		color: white; 
		background-color: #2d2d2d;
		width: 300px; 
		font-size:10px;
		line-height: 10px; 
	    padding: 10px;
    	text-align:center;
	}
	
	.delete_alarm:hover{
		cursor:pointer;
		color:gray;
	}
	
	.alarm_content{
		overflow:auto;
		height:300px;
		background-color: #2d2d2d;
	}
	
	.band_line{
		margin-top: 5px;
    	margin-bottom: 5px;
	}
  	
  	.alarm_empty{
  		background-color: #2d2d2d;
  		color:white;
  		width: 300px;
  		text-align:center;
  		padding: 50px; 
  	}
  	.chatbutton:hover{
  		cursor:pointer;
  	}
</style>
<body>
<div class="fullwidth bg-pink" style="min-height:84px; height:84px;">
      <div class="container">
        <div class="col-md-6 col-xs-12" style="min-width:600px;">
          <div class="logo" style="width:120px; min-width:120px; float:left;">
            <h1><a href="${contextPath }" title="Weekend Magazine">ERR404</a></h1>
            
          </div>
          <div id="search-3" class="widget fullwidth widget_search" style="width:300px; min-width:300px; float:left; border:1px solid lightgray; border-radius:11px; height:20px;margin-top:10px;">
          		<!-- 검색 -->
               	<div class="search"  style="color:black; margin:-12px;">

                   <input type="search" id='searchBox' value="" name="searchBox"  placeholder="검색 &hellip;" title="검색" autocomplete=off>

               	</div>
               	<!-- /검색 -->
            </div>
        </div>
        <div class="col-md-6 col-xs-12" style="width:525px;">
                     <div class="post widget" style="float:unset; padding-left:138px;">
              <div class="post-social" id="postsocial" style="border-top:0px; padding-top:0px;">

                  <ul class="share-social">

          
                  <li><a href="bandBlock.bd?bid=1">차단</a></li>
                  <li><a href="bandCalendarList.bd?bid=1">달력 호출</a></li>
                <li><a href="bandBoardDetail.bd?boardid=1">밴드글 상세보기</a></li>
                     
                  	<li><a href="newPost.np" style="color:#25afe5; width: 62px; height:25px; line-height: inherit; font-weight: bold; border:0px;">새글 피드</a></li>
                  	<li><a href='codeFactoryMain.codeFac' style='border:0px;'><img src='${ contextPath }/resources/images/codePactory.png' width=25px; height=25px; class='menu_tooltip' title='코드 팩토리'/></a></li>
                  	<li><a href='sampleForward.sample' style='border:0px;'><img src='${ contextPath }/resources/images/sampledata.png' width=25px; height=25px; class='menu_tooltip' title='샘플데이터 생성기'/></a></li>


                     <li>
                     	<img src="${ contextPath }/resources/images/alarm/alarm.png" title='새소식' class='alarm_img menu_tooltip' alt="" width=25px; height=25px;>
                     	<ul class='alarm' style='display:none;'>
                     		<li class='alarm_title'>새소식</li>
                     		<li>
		                     	<ul id='alarm_content' class='alarm_content'>
		                     	</ul>
                     		</li>
                     		<li id='delete_alarm' class='delete_alarm'>모든 알림 지우기</li>
                     	</ul>
                     </li>
                     <li><a onclick="chatting();" style="border:0px;"><img src="${ contextPath }/resources/images/message.png " class='menu_tooltip chatbutton' title='채팅' alt="" width=25px; height=25px;></a></li>
                     <li><a href="<c:url value = "showMemberInfo_update.me">
									<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
								  </c:url>"  
							style="border:0px;"><img src="${ contextPath }/resources/images/profile.png " class='menu_tooltip' title='마이페이지' alt="" width=25px; height=25px;></a></li>
					<li><a href = "logout.me" style="border:0px;"><img src="${ contextPath }/resources/images/logout.png " class='menu_tooltip' title='로그아웃' alt="" width=25px; height=25px;></a></li>
				</ul>
              </div>
            </div>
          </div>
      </div>
    </div>
    <h1 style="font-size:0.001px;">.</h1>
    <script>
    //페이지 로드시 소식이 있는지 확인
    $(window).on('load',function(){
    	$.ajax({
			url:'OnloadAlarm.alarm',
			data:{},
			success:function(data){
				if(data == 1)
					$('.alarm_img').attr('src','${ contextPath }/resources/images/alarm/new_alarm.gif');
			},
			error:function(error){
				alert('onload 알림 에러 설마 뜨진 않겠죠?');
			}
    	});
    });

    $( ".menu_tooltip" ).tooltip({
        show: {
          effect: null,
          position: {
              my: "left top",
              at: "left bottom"
            },
          open: function( event, ui ) {
              ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
            }
        }
     });
    
    function deleteOneAlarm(boardId, nid){
    	$.ajax({
    		url:'deleteOneAlarm.alarm',
    		data:{
    			nid:nid
    		},
    		success:function(data){
    			if(data == 1)
    				location.href='${contextpath}'+boardId;
    			else
    				alert('해당 게시판으로 가기 실패');
    		},
    		error:function(error){
    			
    		}
    	})
    }
    
    $(function(){
    	//알람 보이기
    	$('.alarm_img').click(function(){
    		
    		$.ajax({
    			url:'NewAlarm.alarm',
    			data:{
    			},
    			success:function(data){
    				$('.alarm_img').attr('src','${ contextPath }/resources/images/alarm/alarm.png');
    				
    				var dataValue = JSON.parse(data);
    				$('.alarm_band').remove();
    				$('.alarm_empty').remove();
                  	if(dataValue.length == 0){
                  		$("#alarm_content").append("<li class='alarm_empty' style='margin-right:0px; height:100px;'>"+
                  		"<h3>새로운 소식이 없습니다.</h3></li>");
                  		$('.alarm').show();
                  		return false;
                  	}
                  	$.each(dataValue, function(key, value){
                  		var content = value.bContent;
                  		if(content.length > 100){
                  			content = content.substr(0,100) + '...';
                  		}
                  		var type = value.nType;
                  		switch(type){
                  			case 'CONTENT' : type='게시글'; break;
                  			case 'COMMENT' : type='댓글'; break;
                  		}
                  		$('#alarm_content').append("<li class='alarm_band' style='margin-right:0px;' onclick='deleteOneAlarm("+value.boardId+','+value.nid+")'>"+
             			"<h3 class='alarm_band_name'>" + value.bName + "</h3>"+ 
             				content +             			
             			"<hr class='band_line'>"+
             			"<label class='alarm_type'>"+ type +"</label></li>");
                  	});
                  	
		    		$('.alarm').show();
    			},
    			error:function(error){
    			}
    		});
    		
    	});
    	
    	$('#delete_alarm').click(function(){
    		if($('.alarm_band').length == 0){
    			alert('현재 새소식이 없습니다.');
	    		return false;
    		}
    		$.ajax({
    			url:'AllDeleteAlarm.alarm',
    			data:{
    				
    			},
    			success:function(data){
    				if(data == 0){
    					alert('모두 제거 실패');
    				}else{
    					$('.alarm').hide();
    					alert('모든 알림 제거 완료');
    				}
    			},
    			error:function(error){
    				
    			}
    		});
    	});
    	
    	//다른쪽 눌렀을때 숨김
    	$(document).click(function(e){
    		if(!$('.alarm_img').is(e.target) && $('.alarm').has(e.target).length === 0){
    			$('.alarm').hide();
    		}
    	});


    	$( "#searchBox" ).autocomplete({
   	      source: function( request, response ) {
   	    	  if(request.term.trim().length != 0){
	   	    	  $.ajax({
	   	    		  url:'autoComplete.search',
	   	    		  dataType: "json",
	   	    		  data:{term:request.term.trim()},
	   	    		  success:function(data){
			   	    	response(data);
	   	    		  },
	   	    		  error:function(error){
	   	    			  alert(error);
	   	    		  }
	   	    	  })
   	    	  }
   	      },
   	      minLength: 2,
   	      select: function( event, ui ) {
   	      }
   	    });

    });
    
    
    $(document).ready(function(){
    	
        $("#searchBox").keypress(function (e) {
        	if (window.event.keyCode == 13) {	//엔터를 눌렀을때
        		
	         if($('#searchBox').val() != ''){	//비어있지 않으면
	        	 var value = encodeURIComponent($('#searchBox').val());
	        	 location.href='searchResult.search?value='+value;
	         }else{								//검색란이 비어있으면 무반응
	         }
           }

	    });

    	
         $.ajax({

        	url : 'http://127.0.0.1:3000/',
        	data : {
        		mid : `${sessionScope.loginUser.mid}`,
        		name : `${sessionScope.loginUser.mName}`,
        		profile : ``,
        		language : `${sessionScope.loginUser.mNational}`,
        		},
        	type : 'post',
        	success:function(data){
        		console.log(data);
        	},
        	error:function(){
        		console.log("실패");
        	}
        
        }) 
        
	});
    
    function chatting(){

    	var url = "http://127.0.0.1:3000/chat/" + ${sessionScope.loginUser.mid};
    	/* var url = "http://192.168.20.248:3000/" + ${sessionScope.loginUser.mid}; */

		var settings = "width=400, height=602, toolbar=no, menubar=no, scrollbars=no, resizable=no";
		
		window.open(url, 'test window', settings);
    }
    
    
    </script>
</body>
</html>


