<!DOCTYPE>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%-- <script type="text/javascript" src="${ contextPath }/resources/fullcalendar-3.9.0/locale/ko.js"></script>--%>
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
        var title = prompt('Event Title :');
        var eventData;
        if (title) {

        	
        	//이제 이부분을 데이터 베이스로 보내면 된다.
        	var sDateFormat = moment(start, 'YYYY-MM-DD');
        	var eDateFormat = moment(end, 'YYYY-MM-DD');
        	console.log("title : " + title);
        	console.log("sDate : " + sDateFormat.format('YYYY-MM-DD'));
        	console.log("eDate : " + eDateFormat.format('YYYY-MM-DD'));
        	
        	var sDate = sDateFormat.format('YYYY-MM-DD');
        	var eDate = eDateFormat.format('YYYY-MM-DD');
        	
        	var sDate
        	
        	 $.ajax({
				url:"addCalendar.bd",
				type:"post",
				data:{title:title, sDate:sDate, eDate:eDate},
				success:function(data){
					alert("Success");
				},error:function(){
					console.log("fail");
				}
			}); 
        	
        	
          eventData = {
            title: title,
            start: start,
            end: end
          };
          $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
        }
        $('#calendar').fullCalendar('unselect');
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-03-01'
        },
        {
          title: 'Long Event',
          start: '2018-03-07',
          end: '2018-03-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-03-11',
          end: '2018-03-13'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T10:30:00',
          end: '2018-03-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-03-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2018-03-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2018-03-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2018-03-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-03-28'
        }
      ]
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
</body>
</html>
