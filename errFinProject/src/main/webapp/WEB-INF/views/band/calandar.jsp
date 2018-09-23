<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.efp.band.model.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "java.util.*"  %>
<%@ page import= "java.text.*"  %>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>

<style type="text/css">
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
</style>

 <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal.css">
  <link rel="stylesheet" href="${ contextPath }/resources/Remodal-1.1.1/dist/remodal-default-theme.css">

 <style>
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

<!-- <link href='../fullcalendar.min.css' rel='stylesheet' />
<link href='../fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='../lib/moment.min.js'></script>
<script src='../lib/jquery.min.js'></script>
<script src='../fullcalendar.min.js'></script> -->

<link href="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.css" rel="stylesheet"/>
<link href="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.print.css" rel="stylesheet" media="print"/>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/lib/moment.min.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/lib/jquery.min.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/fullcalendar.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/locale/ko.js"></script>
<script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/gcal.js"></script>


<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
    
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      }
   /*  , lang : "ko" */
        , editable : true
        , eventLimit : true
        , googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE"      // Google API KEY
        	, eventSources : [
                // 대한민국의 공휴일
                {
                      googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com"
                    , className : "koHolidays"
                    , color : "lightgray"
                    , textColor : "#3b4d33"
                }
            ],
      
      /* defaultDate: '2018-03-12', */
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectHelper: true,
      select: function(start, end) {
        var title = prompt('일정 제목 :');
        var content = prompt('일정 내용 : ');
        if (title) {

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
					alert("일정 추가 완료");
				},error:function(){
					console.log("일정 추가 실패");
				}
			});  
        	
        	 /* location.href="addCalendar.bd?title="+title+"&sDate="+sDate+"&eDate="+eDate; */
        	 
        	
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
        		  
	              /* alert(event.title + "\n" + event.start + "\n" + event.end, "width=700,height=600"); */
	              /* alert(event.id + "\n" + event.title, "width=700,height=600"); */
	              
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
			console.log("이벤트 ajax 호출")
			
			console.log(data);
			
			var result = data.eList;
			
			
			console.log(result.size);
			
			$.each(result, function(i){
				var event={id: result[i].did, title: result[i].title, content:result[i].content, start:result[i].sDate, end:result[i].eDate};
			    $('#calendar').fullCalendar( 'renderEvent', event, true);
			});
			
			
		},error:function(){
			console.log("이벤트 ajax 호출 실패");
		}
	}); 
    
    

  });
  

  
</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id='calendar'></div>


		<table id="boardArea" align="center" style="text-align:center">
			<tr>
				<th>일정번호</th>
				<th>밴드번호</th>
				<th>유저번호</th>
				<th>시작일</th>
				<th>종료일(+1)</th>
				<th>일정내용</th>
			</tr>
			<c:forEach var="b" items="${sList}">
				<tr>
					<td>${b.did }</td>
					<td>${b.bid }</td>
					<td>${b.mid }</td>
					<td>${b.sDate }</td>
					<td>${b.eDate }</td>
					<td>${b.title }</td>
				</tr>
			</c:forEach>
			
		</table>
		
		<br>

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
  <button id="delBu" data-remodal-action="cancel" class="remodal-cancel">삭제</button>
  <button data-remodal-action="confirm" class="remodal-confirm">확인</button>
</div>

<script>
$('.remodal-cancel').click(function(){
	console.log("삭제 버튼 클릭됨");
	
	console.log($('#dId').val());
	
	var did = $('#dId').val();
	
	location.href="deleteCalendar.bd?did="+did;
	
	/*  $.ajax({
		url:"deleteCalendar.bd",
		type:"post",
		data:{did:did},
		success:function(data){
			console.log("삭제 성공");
			
			restartCalendar();
			
		},error:function(){
			console.log("삭제 실패");
		}
	});   */
	
	
});


</script>


<!-- You can define the global options -->
<script>
  // window.REMODAL_GLOBALS = {
  //   NAMESPACE: 'remodal',
  //   DEFAULTS: {
  //     hashTracking: true,
  //     closeOnConfirm: true,
  //     closeOnCancel: true,
  //     closeOnEscape: true,
  //     closeOnOutsideClick: true,
  //     modifier: ''
  //   }
  // };
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
  
//  Usage:
//  $(function() {
//
//    // In this case the initialization function returns the already created instance
//    var inst = $('[data-remodal-id=modal]').remodal();
//
//    inst.open();
//    inst.close();
//    inst.getState();
//    inst.destroy();
//  });

  //  The second way to initialize:
  $('[data-remodal-id=modal2]').remodal({
    modifier: 'with-red-theme'
  });
</script>
		
		
		
</body>
</html>
