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
</style>
<body>
<div class="fullwidth bg-pink" style="min-height:84px; height:84px;">
      <div class="container">
        <div class="col-md-6 col-xs-12" style="min-width:600px;">
          <div class="logo" style="width:120px; min-width:120px; float:left;">
            <h1><a href="index.html" title="Weekend Magazine">ERR404</a></h1>
            
          </div>
          <div id="search-3" class="widget fullwidth widget_search" style="width:300px; min-width:300px; float:left; border:1px solid lightgray; border-radius:11px; height:20px;margin-top:10px;">
          		<!-- 검색 -->
               	<div class="search"  style="color:black;margin:-12px;">

                   <input type="search" id='searchBox' value="" name="searchBox"  placeholder="검색 &hellip;" title="검색" autocomplete=off>

               	</div>
               	<!-- /검색 -->
            </div>
        </div>
        <div class="col-md-6 col-xs-12" style="width:525px;">
                     <div class="post widget" style="float:unset; padding-left:138px;">
              <div class="post-social" style="border-top:0px; padding-top:0px;">
                  <div class="share-container" style="width:75px;">
                      <span class="share-title" style="color:#25afe5;">새글 피드   |</span>
                  </div>
                  <div class="share-container"style="width:75px;">
                      <span class="share-title" style="color:#25afe5;">밴드 찾기</span>
                  </div>
                  <ul class="share-social">
                     <li><a target="_blank" href="" style="border:0px;"><img src="${ contextPath }/resources/images/al.png " alt="" width=25px; height=25px;></a></li>
                     <li><a onclick="chatting();" style="border:0px;"><img src="${ contextPath }/resources/images/message.png " alt="" width=25px; height=25px;></a></li>
                     <li><a href="<c:url value = "showMemberInfo_update.me">
									<c:param name = "mid" value = "${ sessionScope.loginUser.mid }"/>
								  </c:url>"  
							style="border:0px;"><img src="${ contextPath }/resources/images/profile.png " alt="" width=25px; height=25px;></a></li>
				</ul>
              </div>
            </div>
          </div>
      </div>
    </div>
    <h1 style="font-size:0.001px;">.</h1>
    <script>
    

    $(function(){

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

    })
    
    
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
		var settings = "width=400, height=622, toolbar=no, menubar=no, scrollbars=no, resizable=no";
		
		window.open(url, 'test window', settings);
    }
    </script>
</body>
</html>


