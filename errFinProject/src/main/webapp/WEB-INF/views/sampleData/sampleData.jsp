<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var='contextPath' value='${pageContext.request.contextPath}' scope='application'/>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <!-- CSS -->
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/responsive.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sss.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sampleData/tableStyle.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sampleData/bootstrap-select.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css'/>
  <!-- Skin -->
  <link href="${contextPath}/resources/skins/light-pink-blue.css" rel="stylesheet">
  <!-- Script -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
  <script src="${contextPath}/resources/js/sss.min.js"></script>
  <script src="${contextPath}/resources/js/custom.js"></script>
  <script src="${contextPath}/resources/js/sampleData/bootstrap-select.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</head>
<style>
	.table_box{
		width:1300px;
	}

	.data_table{
		border:solid;
		margin-right:auto;
	}
	.title{
		text-align:center;
	}
	
	.in_text{
		width:100%;
	}
	
	.btn-form{
		margin-right:10px;
	}
	
	.row:not(.header):hover{
		cursor: all-scroll;
	}
	
	.info-title{
	    color: green;
	    margin-top: 5px;
	    margin-bottom: 20px;
	    font-size:30px;
	    font-weight: 100;
	}
	
	.info-contents{
		margin-top: 5px;
	    margin-bottom: 30px;
	    font-size: 13px;
	}
	.info-box{
		width:100%;
		margin-left:auto;
		margin-right:auto;
	}
	.info-table{
		margin-left:20px;
		font-size:15px;
	}
	
	.info-table tr th{
		width:150px;
		color:#25afe5;
	}
	
	.info-table tr td{
		border-top:1px solid;
		border-bottom:1px solid;
	}
</style>
<!-- body -->
<body class="home page page-id-4 page-template page-template-template_home-php">

    <jsp:include page="/WEB-INF/views/common/menubar.jsp"/>
    
    <!--  내용  -->

    <div class="container">
      <div class="main col-md-12 col-xs-12">
        <div class="widget">
          <h4 class="page-title">샘플데이터 생성기</h4>
          <div class="widget-content">
          
			<div class="table">
		    <div class="row header green">
		      <div class="cell" style='width:100px;'>번호</div>
		      <div class="cell" style='width:250px;'>컬럼명</div>
		      <div class="cell" style='width:280px;'>옵션</div>
		      <div class="cell" style='width:380px;'>값</div>
		      <div class='cell' style='width:100px'>제거</div>
		    </div>
			    
			    <div class="row copyRow">
			      <div class="cell">
			        <label class='number'>1</label>
			      </div>
			      <div class="cell">
			        <input id='t0' class='in_text form-control colunm_name' type='text'>
			      </div>
			      <div class="cell">
			        <select id='d0' class='kind'>
						<optgroup label='고정'>
							<option data-icon='fa fa-calendar-o' value='FIXING_SYSDATE_READONLY'>오늘날짜</option>
							<option data-icon='fa fa-calendar-check-o' value='FIXING_DATE'>고정날짜</option>
							<option data-icon='glyphicon glyphicon-pushpin' value='FIXING_VALUE' selected>값 고정</option>
						</optgroup>
						<optgroup label='오름차순'>
							<option data-icon='fa fa-sort-numeric-asc' value='UP_NUMBER_READONLY'>1부터 +1</option>
							<option data-icon='fa fa-sort-numeric-asc' value='UP_DATE_READONLY'>오늘부터 +1</option>
						</optgroup>
						<optgroup label='랜덤'>
							<option data-icon='fa fa-y-combinator-square' value='UP_VARCHAR'>선택 문자 랜덤</option>
							<option data-icon='glyphicon glyphicon-random' value='R_NUMBER'>랜덤한 숫자</option>
							<option data-icon='fa fa-calendar-times-o' value='R_DATE'>랜덤한 날짜</option>
							<option data-icon='fa fa-address-card' value='R_NAME_READONLY'>랜덤한 3자 이름</option>
							<option data-icon='fa fa-address-book' value='R_PHONE_READONLY'>랜덤 전화번호</option>
							<option data-icon='fa fa-money' value='R_MONEY'>랜덤한 금액</option>
							<option data-icon='glyphicon glyphicon-send' value='R_EMAIL_READONLY'>랜덤한 이메일</option>
							<option data-icon='fa fa-book' value='R_CONTENT_READONLY'>랜덤한 글내용</option>
						</optgroup>
					</select>
			      </div>
			      <div class="cell">
			        <input id='v0' class='in_text form-control value_name' type='text' value=''>
			      </div>
			      <div class="cell">
			        <button id='k0' class='btn btn-danger btn-form' type='button' onclick='selectDelete(this)'>제거</button>
			      </div>
			    </div>
			</div>
       		    <label>행 갯수 : </label>&nbsp;<input  id='row_amount' value='1'/>
          </div>
        </div>
      </div>
      
      <div class="main col-md-12 col-xs-12" style='margin-bottom: 10px;'>
        <div class="widget">
            <div class='btn-box'>
	           	<button type="button" id='newCSV' onclick='makeCSV()' class="btn btn-success btn-form">생성하기</button>
				<button type='button' id='insertColumn' onclick='addColunm()' class="btn btn-primary btn-form">컬럼 추가</button>
				<button type='button' id='deleteColumn' onclick='deleteColunm()' class="btn btn-danger btn-form">컬럼 제거</button>
       		    
            </div>
            <img id="lodingImg" class="" src="${pageContext.request.contextPath}/resources/images/sampleData/spinner.gif" style="display:none; width:75px">
        </div>
       </div>
      
      <div class="main col-md-12 col-xs-12" style='margin-bottom: 100px;'>
        <div class="widget">
        	<label class='info-title'>샘플데이터란 무엇인가요?</label><br>
        	<label class='info-contents'>
        		응용 프로그램을 개발하는 경우 프로덕션 환경과 매우 유사한 조건에서 응용 프로그램을 테스트해야합니다.<br>
        		프로덕션에서는 앱 사용자를 강탈하고 데이터베이스에 데이터를 채워 사용자의 코드에 스트레스를주는 군대를 갖게됩니다.
        	</label>
        	<label class='info-title'>샘플데이터 생성기를 왜 사용하나요?</label>
        	<label class='info-contents'>
        		응용 프로그램을 개발하는 경우 프로덕션 환경과 매우 유사한 조건에서 응용 프로그램을 테스트해야합니다.<br>
        		프로덕션에서는 앱 사용자를 강탈하고 데이터베이스에 데이터를 채워 사용자의 코드에 스트레스를주는 군대를 갖게됩니다.<br> 
        		UI를 사용하여 한 번에 하나씩 테스트 환경에 데이터를 직접 입력하는 경우 며칠 내에 앱에서 누적 할 볼륨 및 다양한 데이터를 구축하지 않습니다.<br> 
        		더 나쁜 것은 입력 한 데이터가 자신의 사용 패턴에 맞게 편향되고 실제 사용과 일치하지 않아 중요한 버그를 발견하지 못하게됩니다.
        	</label><br>
        	<label class='info-title'>어떻게 사용하나요?</label><br>
        	<label class='info-contents'>
        		자기 테이블에 맞는 컬럼명과 원하는 타입을 선택하시고 생성하기 버튼으로 생성하시면 CSV확장자로 다운로드가 진행됩니다.
        	</label><br>
        	<label class='info-title'>사용 가이드</label>
       		<ul>
       			<li>1. 최대 20개의 컬럼에 100,000개의 행을 생성하실수 있습니다.</li>
       			<li>2. 모든 값들을 작성하야 생성하실수 있습니다.</li>
       			<li>3. READONLY 의 값들은 작성하실필요 없으며, 값을 기입하실수 없습니다.</li>
       			<li>4. ","(콤마)를 사용한 지정값은 해당 값을 더 입력시켜 가중치를 증가시킬수 있습니다. 예) <font color='red'>M1</font>, M2, M3, M4, <font color='red'>M1</font>, <font color='red'>M1</font></li>
       		</ul>
       		<hr>
        	<div class='info-box'>
        		<table class='info-table'>
        			<tr><th>옵션</th><th>Value</th><th>사용법</th><th>작성 가능 여부</th></tr>
        			<tr><td>오늘날짜</td><td>오늘 날짜</td><td><font style='background-color:red;color: white;'>READONLY</font></td><td>X</td></tr>
        			<tr><td>고정날짜</td><td>지정한 날짜로 고정</td><td>해당 날짜로 기입</td><td>O</td></tr>
        			<tr><td>값 고정</td><td>지정한 값으로 고정</td><td>확인</td><td>O</td></tr>
        			<tr><td>1부터 +1</td><td>행 갯수까지 +1</td><td><font style='background-color:red;color: white;'>READONLY</font></td><td>X</td></tr>
        			<tr><td>오늘날짜부터 +1</td><td>행 갯수까지 +1 Day</td><td><font style='background-color:red;color: white;'>READONLY</font></td><td>X</td></tr>
        			<tr><td>랜덤한 숫자</td><td>A, B 사이로 랜덤한 값</td><td>100, 250 <font color='red'>(콤마 필수)</font></td><td>O</td></tr>
        			<tr><td>랜덤한 날짜</td><td>TODAY+A, TODAY+B 랜덤</td><td>365, 365 <font color='red'>(콤마 필수)</font></td><td>O</td></tr>
        			<tr><td>랜덤한 이름</td><td>랜덤한 3자 이름</td><td><font style='background-color:red;color: white;'>READONLY</font></td><td>X</td></tr>
        			<tr><td>랜덤한 전화번호</td><td>랜덤한 전화번호</td><td><font style='background-color:red;color: white;'>READONLY</font></td><td>X</td></tr>
        			<tr><td>랜덤한 금액</td><td>A, B 사이로 랜덤한 금액</td><td>10000, 95000 <font color='red'>(콤마 필수)</font></td><td>O</td></tr>
        			<tr><td>지정한 문자 랜덤</td><td>지정한 문자 랜덤(다수 가능)</td><td>M1, M2, M3, M4 <font color='red'>(콤마 필수)</font></td><td>O</td></tr>
        		</table>
        	</div>
        </div>
       </div>
      
    </div>

	<script>
	
		$(function(){
			$('select').selectpicker();
			
			$(".table").sortable({
				update: function () { SortNumber() },
				items: ".row:not(.header)",
				opacity: 0.8
			});
			$(".table").disableSelection();
			
			var count = 0;
			$(document).on('change', '.kind',(function() {
				count++;
				if(count%2 == 0){
					count=0;
					return false;
				}
				var select_val = $(this).attr("selected",'selected').val();
				/* var inputIndex = $(this).parent().parent().next().eq(0).find('.value_name'); */
				var inputIndex = $(this).parent().parent().next().eq(0).find('.value_name');
				if(select_val == 'FIXING_DATE'){
					$(inputIndex).attr('type','date');
				}else{
					$(inputIndex).attr('type','text');
				}
				if(select_val.indexOf('READONLY') != -1){		//랜덤 타입이라면 작성금지
					$(inputIndex).attr('readonly','true');
					$(inputIndex).val('ReadOnly');
				}else{					//랜덤 타입이 아니라면 작성가능
					$(inputIndex).removeAttr('readonly');
					$(inputIndex).val('');
				}
				
			}));
				
			//행 갯수 스피너
			 $( "#row_amount" ).spinner({
		      	spin: function( event, ui ) {
		        if ( ui.value > 100000 ) {
		          $( this ).spinner( "value", 1 );
		          return false;
		        } else if ( ui.value < 1 ) {
		          $( this ).spinner( "value", 100000 );
		          return false;
		        }
		      }
		    });
		});
		
		function makeCSV(){
			var amount = $('#row_amount').val();
			if((amount <= 0) || (amount > 100000)){
				errorAlert('행 갯수는 "최소 1 최대 100000" 까지만 생성할수 있습니다.');
				return false;
			}
			var JsonArrays = new Array();
			var row_num = ($('.row').length);
			for(var i=1; i<row_num; i++){
				var param = { 
						"title" : $('.table').children().eq(i).children().eq(1).children().val(),
						"dataType" : $('.table').children().eq(i).children().eq(2).find('select').val(),
						"values" : $('.table').children().eq(i).children().eq(3).children().val()
				}
				JsonArrays.push(param);
			}
				
			var valueJson = JSON.stringify(JsonArrays);
			var time = new Date().getTime();
			$('.btn-box').hide();
			$('#lodingImg').show();
			
			// 테이블값 보내기
			$.ajax({
		        method :"POST",
		        url:'CreateServlet.sample',
		        data : {
		        	valueJson : valueJson,
		        	row_amount : amount
		        },
		        success : function(data) {
		        	var Waiting_Time = new Date().getTime() - time;
		        	successAlert(Waiting_Time/1000 + '초 가 걸렸습니다. ');
		        	$('.btn-box').show();
		        	$('#lodingImg').hide();
		        },
		        error : function(data){
		        	errorAlert('서버 에러');
		        	$('.btn-box').show();
		        	$('#lodingImg').hide();
		        }
		    });
			
			}
		function addColunm(){
			if($('.row').length === 21){errorAlert('최대 20개의 컬럼까지만 만들수 있습니다.');return false;}
			var qty = $('.row').length;
			var select_val = $('.table').children().eq(qty-1).children().eq(2).find('select').val();
			
			var cloneColumn = $('.table .row').eq(qty-1).clone();
			cloneColumn.eq(0).find('.number').text($('.row').length);
			cloneColumn.removeClass('copyRow');
			cloneColumn.children().eq(2).empty();
			cloneColumn.children().eq(2).append("<select id='d0' class='kind'>"+
					"<optgroup label='고정'>"+
					"<option data-icon='fa fa-calendar-o' value='FIXING_SYSDATE_READONLY'>오늘날짜</option>"+
					"<option data-icon='fa fa-calendar-check-o' value='FIXING_DATE'>고정날짜</option>"+
					"<option data-icon='glyphicon glyphicon-pushpin' value='FIXING_VALUE'>값 고정</option>"+
				"</optgroup>"+
				"<optgroup label='오름차순'>"+
					"<option data-icon='fa fa-sort-numeric-asc' value='UP_NUMBER_READONLY'>1부터 +1</option>"+
					"<option data-icon='fa fa-sort-numeric-asc' value='UP_DATE_READONLY'>오늘부터 +1</option>"+
				"</optgroup>"+
				"<optgroup label='랜덤'>"+
					"<option data-icon='fa fa-y-combinator-square' value='UP_VARCHAR'>선택 문자 랜덤</option>"+
					"<option data-icon='glyphicon glyphicon-random' value='R_NUMBER'>랜덤한 숫자</option>"+
					"<option data-icon='fa fa-calendar-times-o' value='R_DATE'>랜덤한 날짜</option>"+
					"<option data-icon='fa fa-address-card' value='R_NAME_READONLY'>랜덤한 3자 이름</option>"+
					"<option data-icon='fa fa-address-book' value='R_PHONE_READONLY'>랜덤 전화번호</option>"+
					"<option data-icon='fa fa-money' value='R_MONEY'>랜덤한 금액</option>"+
					"<option data-icon='glyphicon glyphicon-send' value='R_EMAIL_READONLY'>랜덤한 이메일</option>"+
					"<option data-icon='fa fa-book' value='R_CONTENT_READONLY'>랜덤한 글내용</option>"+
				"</optgroup>"+
				"</select>");
			cloneColumn.children().eq(2).find('select').val(select_val).prop("selected", true);
			$('.table').append(cloneColumn);
			$('select').selectpicker();
		}
		
		function deleteColunm(){
			if($('.row').length === 2){
				errorAlert('컬럼이 1개 이상이여야합니다.');
				return false;
			}
			$('.table > .row:last').remove();
		}
		
		function selectDelete(btn){
			if($('.row').length === 2){
				errorAlert('컬럼이 1개 이상이여야합니다.');
				return false;
			}
			$(btn).parent().parent().remove();
			SortNumber();
		}
		
		function SortNumber() {
		    $('.table').children().each(function (i) {
		    	if(i!==0){
			    	$(this).eq(0).children().find('.number').text(i);	
		    	}
		    });
		}
		
		function custom_alert( message, title ) {
		    if ( !title )
		        title = 'Alert';

		    if ( !message )
		        message = 'No Message to Display.';

		    $('<div></div>').html( message ).dialog({
		        title: title,
		        resizable: false,
		        modal: true,
		        buttons: {
		            'Ok': function()  {
		                $( this ).dialog( 'close' );
		            }
		        }
		    });
		}
		
		//토스트 설정
		toastr.options = {
		  "closeButton": true,
		  "debug": false,
		  "newestOnTop": true,
		  "progressBar": true,
		  "positionClass": "toast-top-full-width",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "300",
		  "hideDuration": "1000",
		  "timeOut": "2000",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
		
		//에러 토스트
		function errorAlert(msg){
			toastr["error"](msg, "에러")
		}
		
		function successAlert(msg){
			toastr["success"](msg, "성공")
		}
	</script>

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
  </body>
</html>
