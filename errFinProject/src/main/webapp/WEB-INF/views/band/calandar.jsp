<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <meta charset="utf-8">
  <!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <title>Weekend Magazine</title>
  <link href="${ contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link href="${ contextPath }/resources/css/light-pink-blue.css" rel="stylesheet">
  <style>
  .imageUpload {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 10;
    height: 100%;
    cursor: pointer;
    opacity: 0;
}

.changeCover {
    overflow: hidden;
    display: block;
    position: relative;
    width: 120px;
    height: 90px;
    padding-top: 21px;
    text-align: center;
    background-color: #ebebeb;
    border-radius: 2px;
    background-image: url(img/addImg.png);
    background-size: contain;
    background-repeat:no-repeat;
}  
 body {
        margin :40px 10px;
        padding : 0;
        font-family : "Lucida Grande", Helvetica, Arial, Verdana,sans-serif;
        font-size : 14px;
    }
    #calendar {
        max-width : 900px;
        margin : 0 auto;
    }
    .fc-sat { color:#0000FF; }     /* 토요일 */
    .fc-day-number.fc-sat.fc-past { color:#0000FF; }     /* 토요일 */
    .fc-sun { color:#FF0000; }    /* 일요일 */
    .remodal-bg.with-red-theme.remodal-is-opening,
    .remodal-bg.with-red-theme.remodal-is-opened {
      filter: none;
    }

    .remodal-overlay.with-red-theme {
      background-color: #f44336;
    }

    .remodal.with-red-theme {
      background: #fff;
    }
    
  </style>
   <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">
  <link href="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.css" rel="stylesheet"/>
<link href="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.print.css" rel="stylesheet" media="print"/>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/lib/moment.min.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/lib/jquery.min.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/locale/ko.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/gcal.js"></script>
<script>

 function paintScehdule(){
	 
	  $('#calendar').fullCalendar( 'removeEvents' );
	  
	 /*  $('#calendar').fullCalendar('removeEventSource', 'koHolidays'); 

	  $('#calendar').fullCalendar('addEventSource', 'koHolidays'); */
	  
	 
	 $('#calendar').fullCalendar({
		    
	      header: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'month,agendaWeek,agendaDay'
	      }
	   /*  , lang : "ko" */
	        , editable : true
	        , eventLimit : true
	        ,   googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE"      // Google API KEY
	        	, eventSources : [
	                // 대한민국의 공휴일
	                {
	                      googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com"
	                    , className : "koHolidays"
	                    , color : "lightgray"
	                    , textColor : "#3b4d33"
	                }
	            ],
	      
	      navLinks: true, // can click day/week names to navigate views
	      selectable: true,
	      selectHelper: true,
	      select: function(start, end) {
	    	  
	    	  
	    	  
	    	  
	        /* var title = prompt('일정 제목 :'); */
	        
	        var sDateFormat = moment(start, 'YYYY-MM-DD');
	     	var eDateFormat = moment(end, 'YYYY-MM-DD');
	     	
	     	var sDate = sDateFormat.format('YYYY-MM-DD');
	     	var eDate = eDateFormat.format('YYYY-MM-DD');
	        
	        
	        document.getElementById('modalStart').value = sDate; 
	        document.getElementById('modalEnd').value = eDate; 
	        
	        document.getElementById('addScehduleBu').style.display = 'inherit';
	    	document.getElementById('updateScehduleBu').style.display = 'none';
	    	
	    	document.getElementById('reply-title').innerHTML = '일정을 등록해주세요';
	    	document.getElementById('sTitle').value = '';
	    	document.getElementById('sContent').value = '';
	        
	        location.href="#modal2";
	        
	        
	        /* if(title != null){
	    	    var content = prompt('일정 내용 : ');
	        } */
	        
	        /* if (title) {
	        	var eventNum;
	        	var sDateFormat = moment(start, 'YYYY-MM-DD');
	        	var eDateFormat = moment(end, 'YYYY-MM-DD');
	        	
	        	var sDate = sDateFormat.format('YYYY-MM-DD');
	        	var eDate = eDateFormat.format('YYYY-MM-DD');
	        	
	        	  $.ajax({
					url:"addCalendar.bd",
					type:"post",
					async: false,
					data:{title:title, content:content, sDate:sDate, eDate:eDate},
					success:function(data){
						console.log(data.next);
						
						eventNum = data.next;
						
							AllListScehdule();
						
					},error:function(){
						console.log("일정 추가 실패");
					}
				});  
	        	
	           eventData = {
	        		  id: eventNum,							
			            title: title,
			            content:content,
			            start: start,
			            end: end
			          };  
	          $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
	        		  
	        } */
	        $('#calendar').fullCalendar('unselect');
	      },
	      editable: true,
	      eventLimit: true, // allow "more" link when too many events
	      events:
	      
	      [
	        {
	          title: 'All Day Event',
	          start: '2018-03-01'
	        },
	        {
	          title: 'Long Event',
	          start: '2018-03-07',
	          end: '2018-03-10'
	        }
	        
	      ]
	      , eventClick:function(event) {
	          if(event.title) {
	        	  if(event.url){
		              
		              document.getElementById('modal1Title').innerHTML = event.title;
		              
		              document.getElementById('modal1Desc').innerHTML = event.start;
		              
		              var con = document.getElementById('delBu');
		              
		              con.style.display = 'none';
		              
		              location.href="#modal";
		              
		              return false;
	        		  
	        		  
	        	  }else{
		              
		              document.getElementById('modal1Title').innerHTML = event.title;
		              
		              document.getElementById('modal1Desc').innerHTML = event.content;
		              
		              $('#dId').val(event.id);
		              
					  var con = document.getElementById('delBu');
		              
		              con.style.display = '-webkit-inline-box';
		              
		              location.href="#modal";
		              
		              return false;
	        		  
	        	  }
	          }
	      }
	      
	      

	    });
	 
	 var title = 'test';
	    
	    $.ajax({
			url:"eventCheck.bd",
			type:"post",
			data:{title:title},
			success:function(data){
				
				var result = data.eList;
				
				$.each(result, function(i){
					var event={id: result[i].did, title: result[i].title, content:result[i].content, start:result[i].sDate, end:result[i].eDate};
				    $('#calendar').fullCalendar( 'renderEvent', event, true);
				});
				
				
			},error:function(){
				
			}
		}); 
	    
	  
	    
 }
 
 
 function AllListScehdule(){
	 
	 var title = 'test';
	 
	 $.ajax({
			url:"eventCheck.bd",
			type:"post",
			data:{title:title},
			success:function(data){
				
				$('#scheduleArea').empty();
				
				var result = data.eList;
				
				$.each(result, function(i){
				    
					 var plusUl = document.getElementById('scheduleArea');
				    
				     var plusLi = document.createElement('li');
				     
				     plusLi.style.cssText= 'margin-top:50px;';
				     
				     var pInput1 = document.createElement('input');
				     var pInput2 = document.createElement('input');
				     var pInput3 = document.createElement('input');
				     
				     pInput1.setAttribute("type", "hidden");
				     pInput1.setAttribute("value", result[i].did);
				     
				     pInput2.setAttribute("type", "hidden");
				     pInput2.setAttribute("value", result[i].title);
				     
				     pInput3.setAttribute("type", "hidden");
				     pInput3.setAttribute("value", result[i].content);
				     
				     var pDiv1 = document.createElement('div');
				     pDiv1.style.cssText='float:left;width:12%;text-align:center;';
				     
				     var pP = document.createElement('p');
				     pP.style.cssText = 'display: inline-block;line-height: 1.3;font-size: 25px;font-weight: 400;color: #222;';
				     pP.innerHTML = result[i].dayNum;
				     
				     var pH4 = document.createElement('h4');
				     pH4.setAttribute("class", "list-title");
				     
				     var pA = document.createElement('a');
				     pA.setAttribute("href", '');
				     pA.style.cssText = 'display: block;word-break: break-all;word-wrap: break-word;font-size: 15px;font-weight: 400;color: #333;';
				     pA.innerHTML = result[i].dayWeek + "요일";
				     
				     var pDiv2 = document.createElement('div');
				     pDiv2.style.cssText='float:left;width:87%; padding-left: 30px;';
				     
				     var pH42 = document.createElement('h4');
				     pH42.setAttribute("class", "list-title");
				     
				     var pA2 = document.createElement('a');
				     pA2.setAttribute("href", '');
				     pA2.style.cssText = 'font-size:20px;';
				     pA2.innerHTML = result[i].title;
				     
				     var pP2 = document.createElement('p');
				     pP2.innerHTML = result[i].content;
				     
				     var pBr = document.createElement('br');
					 
					 plusLi.append(pInput1);
					 plusLi.append(pInput2);
					 plusLi.append(pInput3);
					 
					 pDiv1.append(pP);
					 pH4.append(pA);
					 pDiv1.append(pH4);
					 
					 pH42.append(pA2);
					 pDiv2.append(pH42);
					 pDiv2.append(pP2);
					 
					 plusLi.append(pDiv1);
					 plusLi.append(pDiv2);
					 plusLi.append(pBr);
					 
					 plusUl.append(plusLi);
					 
					 
				});
				
				
			},error:function(){
				console.log("이벤트 ajax 호출 실패");
			}
		}); 
 }
 
 function addScehdule(title, content, start, end){
	 
	 	console.log('addScehdule 호출됨');
	 
     	var eventNum;
/*      	var sDateFormat = moment(start, 'YYYY-MM-DD');
     	var eDateFormat = moment(end, 'YYYY-MM-DD');
     	
     	var sDate = sDateFormat.format('YYYY-MM-DD');
     	var eDate = eDateFormat.format('YYYY-MM-DD');
 */     	
     	  $.ajax({
				url:"addCalendar.bd",
				type:"post",
				async: false,
				data:{title:title, content:content, sDate:start, eDate:end},
				success:function(data){
					console.log(data.next);
					
					eventNum = data.next;
					
						AllListScehdule();
					
				},error:function(){
					console.log("일정 추가 실패");
				}
			});  
     	
        /* eventData = {
         title: title,
         start: start,
         end: end
       };  */
        eventData = {
     		  id: eventNum,							
		            title: title,
		            content:content,
		            start: start,
		            end: end
		          };  
       $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
     		  
	 
	 
 }
 
 function updateScehdule(did, title, content){
	 
	 	 $.ajax({
	 			url:"updateCalendar.bd",
	 			type:"post",
	 			data:{did:did, title:title, content:content},
	 			success:function(data){
	 				
	 				paintScehdule();

	 				AllListScehdule();
	 				
	 			},error:function(){
	 			}
	 		});
	 
}

  $(document).ready(function() {
	paintScehdule();

  });
  
</script>
</head>
<body class="home page page-id-4 page-template page-template-template_home-php">
    <!-- TOP NAV -->
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
                      <a href="#" target="_blank" >                 
                <img src="img/ad-468x60.png " alt="">
              </a>  
            </div>
                    </div>
          </div>
      </div>
    </div>

     <div class="container">

        <div class="left-sidebar col-md-3" role="complementary">

			<div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title"></h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <!-- <img src="http://placehold.it/209x128" alt=""> -->
                             <img src="${ contextPath }/resources/upload_images/${pf.editName }" alt="">
                        </a>
                        <h2 style="color:#222; font-size:21px; margin-bottom:15px;font-weight:600;margin-top:20px;">${bname }</h2>
                        <h4 style="display:inline-block;font-size: 13px;font-weight: 400;color: #333;">
                        			멤버 ${memberCount}<a href="#" style="position:relative;padding-left: 12px;color: #fdb00d!important;font-size: 13px;">
                        			초대코드 </a></h4>
                        <h4 style="margin-top: 14px;padding-top: 13px;border-top: 1px solid #e1e1e1;">
                        <a href="bandLeader.bd?bid=1" style="font-size: 12px;font-weight:400;color:#666;text-decoration:none;">* 밴드 설정</a></h4>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div>

        <div class="main col-md-6 col-xs-12" style="background:#ffffff">

            
            <div id='calendar'></div>

            <div class="widget fullwidth post-single">
              <h4 class="widget-title">일정  <span>리스트</span> </h4>
              <div class="widget-content">
                <ul id="scheduleArea">
            <c:forEach var="b" items="${sList}">
            		
					<li style="margin-top:50px;" >
            		<input type="hidden" value="${b.did }">
            		<input type="hidden" value="${b.title }">
            		<input type="hidden" value="${b.content }">
                  	<div style="float:left;width:12%;text-align:center;">
                    <p style="display: inline-block;line-height: 1.3;font-size: 25px;
                    	font-weight: 400;color: #222;">${b.dayNum }</p>
                    
                    
                    <h4 class="list-title" ><a href="" style="display: block;
                    	word-break: break-all;word-wrap: break-word;font-size: 15px;font-weight: 400;color: #333;">
    						${b.dayWeek }요일</a></h4>
                 	</div> 
                 	<div style="float:left;width:87%; padding-left: 30px;">
                    <h4 class="list-title"><a href="" style="font-size:20px;">${b.title }</a></h4>
                    <p>${b.content }</p>
                    </div>
                    
                  </li>
                  <br>
			</c:forEach>
            
            </ul>
            </div>
            </div>
            
        </div>
        
   
        
        <script>
			$(function(){
				$("#scheduleArea").find("li").mouseenter(function(){
				}).mouseout(function(){
				}).click(function(){
					
					 document.getElementById('modal1Title').innerHTML = $(this).children("input").eq(1).val();
		              
		              document.getElementById('modal1Desc').innerHTML = $(this).children("input").eq(2).val();
		              
		              $('#dId').val($(this).children("input").eq(0).val());
		              
					  var con = document.getElementById('delBu');
		              
		              con.style.display = '-webkit-inline-box';
		              
		              location.href="#modal";
		              
		              return false;
					
					
				});
			});		
		</script>
        

      <div class="right-sidebar col-md-3" role="complementary">


            <div id="categort-posts-widget-2" class="widget fullwidth categort-posts"><h1 class="widget-title">최근 사진 </h1>
                <ul class="tvshows">
                    <li>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                        <a href="#">
                            <img style="min-height:100px;height:100px;width:100px;" src="http://placehold.it/209x128" alt="">
                        </a>
                    </li>
                    
               
               
                </ul>
               
               
               
                <div class="clear"></div>
            
            
            
            
            </div>

            <div id="widget-survey" class="widget fullwidth widget-survey">
                <h1 class="widget-title">Survey</h1>
                <div class="widget-content">
                    <p>What was the last time you slept on bed in your house?</p>
                    <form action="#" method="post" class="mrgn-bottom-0">
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Today
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Yesterday
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> The day after tomorrow
                                </label>
                            </div>
                        </div>
                        <div class="form-group mrgn-bottom-0">
                            <div class="checkbox">
                                <label>
                                    <input name="remember" value="1" type="checkbox"> Tomorrow
                                </label>
                            </div>
                        </div>
                        <div class="row survey">
                            <div class="col-md-6">
                                <button class="button vote">Vote</button>
                            </div>
                            <div class="col-md-6">
                                <button class="button">Results</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>


            <div id="ads250_250-widget-2" class="widget fullwidth ads250_250-widget"><h1 class="widget-title">
                Advertisement</h1>
                <div class="ads250-250">
                    <div class="ad-cell">
                        <a href="#"><img src="img/ad-210x190.png" class="fullwidth" alt=""></a>
                    </div>
                </div>
            </div>

        </div>

    </div>
    
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
  <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
  <div>
    <h2 id="modal1Title">일정 제목</h2>
    <p id="modal1Desc">
       	일정 내용 부분
    </p>
  </div>
  <br>
  <input type="hidden" id="dId" value=""/> 
  <button id="updateBu" data-remodal-action="cancel" class="remodal-cancel" style="background:lightblue;">수정</button>
  <button id="delBu" data-remodal-action="cancel" class="remodal-cancel">삭제</button>
  <button data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<div class="remodal" data-remodal-id="modal2"
  data-remodal-options="hashTracking: false,
    closeOnConfirm:false,closeOnCancel:  false, closeOnEscape: false , closeOnOutsideClick: false,
    modifier : without-animation with-test-class">

  <a data-remodal-action="close" class="remodal-close"></a>
  <div class="widget clearfix">
              <div id="respond" class="comment-respond">
                <h3 id="reply-title" class="comment-reply-title">일정을 등록해주세요 <small>
                <a rel="nofollow" id="cancel-comment-reply-link" href="" style="display:none;">
                Cancel reply</a></small></h3>
                <form action="#" method="post" id="commentform" class="comment-form">
                  <p class="comment-notes">Your email address will not be published. Required fields are marked 
                  <span class="required">*</span></p>            
                   <p class="comment-form-author" style="width:100%;">
                  <label for="author">일정 제목 <span class="required">*</span></label> <input id="sTitle" name="sTitle" type="text" value="" size="15" aria-required="true"></p>
                  <p class="comment-form-comment"><label for="comment">일정 내용</label> 
                  <textarea id="sContent" name="sContent" cols="45" rows="8" aria-required="true"></textarea></p>   
                  <p class="form-submit">
                  <input type="hidden" name="modalStart" id="modalStart" value="">
                  <input type="hidden" name="modalEnd" id="modalEnd" value="">
                  </p>
                </form>
              </div><!-- #respond -->
            </div>
  <a data-remodal-action="cancel" class="remodal-cancel" href="#">Cancel</a>
  <a data-remodal-action="confirm" class="remodal-confirm" id="addScehduleBu" href="#">OK</a>
  <a data-remodal-action="confirm" class="remodal-confirm" id="updateScehduleBu" href="#" style="display:none;">수정</a>
</div>

<script>

	 $('#addScehduleBu').click(function(){
			console.log('addScehduleBu 동작');
			
			
			title = document.getElementById('sTitle').value;
			
			content = document.getElementById('sContent').value;
			
			start = document.getElementById('modalStart').value;
			end = document.getElementById('modalEnd').value;
			
			console.log("start : " + start);
			console.log("end : " + end);
			
			addScehdule(title, content, start, end);
			
			document.getElementById('modalStart').value = ''; 
			document.getElementById('modalEnd').value = ''; 
			document.getElementById('sTitle').value = ''; 
			document.getElementById('sContent').value = '';
		});
	 


$('#delBu').click(function(){
	
	 var did = $('#dId').val();
	
	  $.ajax({
		url:"deleteCalendar.bd",
		type:"post",
		data:{did:did},
		success:function(data){
			console.log("삭제 성공");
			
			paintScehdule();

			AllListScehdule();
			
		},error:function(){
			console.log("삭제 실패");
		}
	});
	
	
});

$('#updateBu').click(function(){
	console.log("업데이트 버튼 클릭됨");
	
	document.getElementById('addScehduleBu').style.display = 'none';
	document.getElementById('updateScehduleBu').style.display = 'inherit';
	
	document.getElementById('reply-title').innerHTML = '일정을 수정해주세요.';
	document.getElementById('sTitle').value = document.getElementById('modal1Title').innerHTML;
	document.getElementById('sContent').value = document.getElementById('modal1Desc').innerHTML;
	
	location.href="#modal2";
	
});

$('#updateScehduleBu').click(function(){
	console.log('updateScehduleBu 동작');
	
	var did = $('#dId').val();
	 
	 var title = document.getElementById('sTitle').value;
	 var content = document.getElementById('sContent').value;
	 
	 console.log("content : " + content);
	 
	 updateScehdule(did, title, content);
});


</script>


<script>window.jQuery || document.write('<script src="../../../libs/jquery/dist/jquery.min.js"><\/script>')</script>
<script src="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.js"></script>

<!-- Events -->
<script>
  $(document).on('opening', '.remodal', function () {
    /* console.log('opening'); */
  });

  $(document).on('opened', '.remodal', function () {
    /* console.log('opened'); */
  });

  $(document).on('closing', '.remodal', function (e) {
    /* console.log('closing' + (e.reason ? ', reason: ' + e.reason : '')); */
  });

  $(document).on('closed', '.remodal', function (e) {
    /* console.log('closed' + (e.reason ? ', reason: ' + e.reason : '')); */
  });

  $(document).on('confirmation', '.remodal', function () {
    /* console.log('confirmation'); */
  });

  $(document).on('cancellation', '.remodal', function () {
    /* console.log('cancellation'); */
  });
  
  $('[data-remodal-id=modal2]').remodal({
    /* modifier: 'with-red-theme' */
  });
</script>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.bxslider.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>