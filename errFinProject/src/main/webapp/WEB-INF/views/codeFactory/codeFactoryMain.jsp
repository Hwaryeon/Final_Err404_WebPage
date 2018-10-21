<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
  <title>Code Factory</title>
  <meta name="viewport" content=" width=device-width, initial-scale=1">
  <!-- CSS -->
  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/responsive.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sss.css" rel="stylesheet">
  <link href="${contextPath}/resources/css/sampleData/bootstrap-select.css" rel="stylesheet">
  
  <!-- codemirror -->
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror.css">
  
  <!-- hint -->
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/hint/show-hint.css">
  
  <!-- theme -->
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/theme/3024-night.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/theme/ambiance.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/theme/xq-dark.css">
  
  <!-- dialog -->
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/dialog/dialog.css">
  
  <!-- search -->
  <link rel="stylesheet" href="${contextPath}/resources/css/codeFactory/codemirror/search/matchesonscrollbar.css">
  
  <!-- JavaScript -->
  <script src="${contextPath}/resources/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/js/jquery.bxslider.min.js"></script>
  <script src="${contextPath}/resources/js/sss.min.js"></script>
  <script src="${contextPath}/resources/js/custom.js"></script>
  
  <!-- codemirror -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror.js"></script>
  
  <!-- mode -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/javascript.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/clike.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/ruby.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/go.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/python.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/simple.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/mode/rust.js"></script>
  
  <!-- hint -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror/hint/show-hint.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/hint/anyword-hint.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/hint/javascript-hint.js"></script>
  
  <!-- dialog -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror/dialog/dialog.js"></script>
  
  <!-- search -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror/search/jump-to-line.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/search/match-highlighter.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/search/matchesonscrollbar.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/search/search.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/search/searchcursor.js"></script>
  
  <!-- editor -->
  <script src="${contextPath}/resources/js/codeFactory/codemirror/editor/matchbrackets.js"></script>
  <script src="${contextPath}/resources/js/codeFactory/codemirror/editor/closebrackets.js"></script>
  
</head>

	
<style>
	.title{
		font-size: 250%; 
		font-weight: bold; 
		text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2); 
		color: #666; 
		text-height:200%; 
		padding: 3px 5px; 
		margin: 5px 0; 
		letter-spacing: 1px; 
		word-spacing: 3px;
	}
	
	.CodeMirror {
	  border: 1px solid #eee;
	  height: 100%;
	  max-height:500px;
	}
	
    .CodeMirror-scroll {
        height: auto;
        max-height:500px;
    }
    
    .btn_box{
    	margin-right:50px;
    }
    
	/* Table */
	.demo-table {
		border-collapse: collapse;
		font-size: 13px;
	}
	.demo-table th, 
	.demo-table td {
		border: 1px solid #e1edff;
		padding: 7px 17px;
	}
	.demo-table .title {
		caption-side: bottom;
		margin-top: 12px;
	}
	
	/* Table Header */
	.demo-table thead th {
		background-color: #508abb;
		color: #FFFFFF;
		border-color: #6ea1cc !important;
		text-transform: uppercase;
		text-align: center;
	}
	
	/* Table Body */
	.demo-table tbody td {
		color: #353535;
	}
	.demo-table tbody td:first-child,
	.demo-table tbody td:last-child,
	.demo-table tbody td:nth-child(4) {
		text-align: center;
	}
	.demo-table tbody tr:nth-child(odd) td {
		background-color: #f4fbff;
	}
		
</style>

<body class="home page page-id-4 page-template page-template-template_home-php">
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"/>
	<script src="${contextPath}/resources/js/sampleData/bootstrap-select.js"></script>
    <div class="container">
    
      <div class="main col-md-12 col-xs-12">
      <div class="widget" style='padding:20px; margin-top:20px; '>
      		<label class='title'>Code Factory</label>
      	</div>
      </div>
    
      <div class="main col-md-12 col-xs-12">
      	<div class="widget" style='padding:20px; margin-top:30px;'>
      	<h4 class="page-title">Web Editor</h4>
    		<textarea id='editor' name='code'>
public class MyClass {
    public static void main(String args[]) {
        System.out.println("hello world");
    }
}</textarea>
      	</div>
      </div>
      
      <div class="main col-md-12 col-xs-12">
      	<div class="widget" style='margin-top:10px; margin-bottom:20px;'>
      		<button type='button' id='run_btn' onclick='RunCode();' class='btn btn-success btn_box'>
      			<img class="" src="${pageContext.request.contextPath}/resources/images/codeFactory/stop.png" style='width:14px;'> RUN
     		</button>
     		
      		<button type='button' id='running_btn' class='btn btn-light btn_box' style='display:none;' disabled>
      			<img class="" src="${pageContext.request.contextPath}/resources/images/codeFactory/running.gif" style='width:14px;'> RUNNING...
      		</button>
      		
      		<label style='font-size: 18px;'>Language : </label>
      		<select id='selectLanguage'>
				<option value='java'>JAVA</option>
				<option value='c'>C</option>
				<option value='cpp'>C++</option>
				<option value='csharp'>C#</option>
				<option value='scala'>Scala</option>
				<option value='ruby'>Ruby</option>
				<option value='go'>GO</option>
				<option value='nodejs'>Nodejs</option>
				<option value='python3'>Python</option>
				<option value='rust'>RUST</option>
			</select>
      	</div>
      </div>
      
      <div class="main col-md-12 col-xs-12">
      	<div class="widget" style='margin-top:10px; margin-bottom:20px;'>
      		<h4 class="page-title" style='color: blueviolet;'>Result</h4>
      		<textarea id='result_view'>no data</textarea>
      	</div>
      </div>
      
      <div class="main col-md-12 col-xs-12">
      	<div class="widget" style='margin-top:10px; margin-bottom:20px;'>
      		<h1 class="page-title" style='color: #e52a2a;'>Version</h1>
      		
	<table class="demo-table">
		<thead>
			<tr>
				<th>Language</th>
				<th>Version</th>
				<th>Korean Support</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>JAVA</td>
				<td>JDK 1.8.0_66</td>
				<td><label style='color:red;font-weight: 800;'>X</label></td>
			</tr>
			<tr>
				<td>C</td>
				<td>GCC 5.3.0</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>C++</td>
				<td>GCC 5.3.0</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>C#</td>
				<td>mono 4.2.2</td>
				<td><label style='color:red;font-weight: 800;'>X</label></td>
			</tr>
			<tr>
				<td>Scala</td>
				<td>2.12.0</td>
				<td><label style='color:red;font-weight: 800;'>X</label></td>
			</tr>
			<tr>
				<td>Ruby</td>
				<td>2.2.4</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>GO</td>
				<td>1.5.2</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>Nodejs</td>
				<td>6.3.1</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>Python</td>
				<td>3.5.1</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
			<tr>
				<td>RUST</td>
				<td>1.10.0</td>
				<td><label style='color:green;font-weight: 800;'>O</label></td>
			</tr>
		</tbody>
	</table>      		
      	</div>
      </div>
      
    </div>

	<script>
		//코드창
		var editor = CodeMirror.fromTextArea($('#editor')[0], {
			  mode: "text/x-java",
			  theme:'xq-dark',
			  matchBrackets: true,
			  lineNumbers: true,
			  autoCloseBrackets: true,
			  extraKeys: {"Ctrl-Space": "autocomplete", "Alt-F": "findPersistent"}
	  	});
		
		//결과 화면
		var result_view = CodeMirror.fromTextArea($('#result_view')[0],{
			  mode: "text/x-java",
			  theme:'xq-dark',
			  readOnly: true
		});
		//컴파일 ajax
		function RunCode(){
	    	var code = editor.getValue();
	    	var language = $('#selectLanguage').val();
	    	result_view.setValue('Running ......');
	    	$('#run_btn').hide();
	    	$('#running_btn').show();
	    	
	    	$.ajax({
		        method :"POST",
		        url:'submitCode.codeFac',
		        data : {
		        	code : code,
		        	language : language
		        },
		        success : function(data) {
		        	result_view.setValue(data);
		        	$('#run_btn').show();
			    	$('#running_btn').hide();
		        },
		        error : function(data){
		        	alert(data);
		        }
		    });
		}

		$(function(){
			//언어 선택 select css적용
			$('#selectLanguage').selectpicker();
			
			$("#selectLanguage").change(function() {
				var selectLanguage = $('#selectLanguage').val();
				result_view.setValue('no data');
				
				switch(selectLanguage){
					case 'java' : 
						editor.setOption("mode", 'text/x-java');
						editor.setValue(viewData(selectLanguage));						
						
						result_view.setOption("mode", 'text/x-java'); 
						break;
						
					case 'c' : 
						editor.setOption("mode", 'text/x-csrc');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-csrc'); 
						break;
					
					case 'cpp' : 
						editor.setOption("mode", 'text/x-c++src');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-c++src'); 
						break;
						
					case 'csharp' : 
						editor.setOption("mode", 'text/x-csharp');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-csharp'); 
						break;
					
					case 'scala' : 
						editor.setOption("mode", 'text/x-scala');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-scala'); 
						break;
						
					case 'ruby' : 
						editor.setOption("mode", 'text/x-ruby');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-ruby'); 
						break;
						
					case 'go' : 
						editor.setOption("mode", 'text/x-go');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-go'); 
						break;
						
					case 'nodejs' : 
						editor.setOption("mode", 'text/javascript');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/javascript'); 
						break;
						
					case 'python3' : 
						editor.setOption("mode", 'text/x-python');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-python'); 
						break;
						
					case 'rust' : 
						editor.setOption("mode", 'text/x-rustsrc');
						editor.setValue(viewData(selectLanguage));
						
						result_view.setOption("mode", 'text/x-rustsrc'); 
						break;
				}
			});
		});
		
		
		function viewData(language){
			switch(language){
				case 'java' : return 'public class MyClass {\n'+
			    '\tpublic static void main(String args[]) {\n'+
			        '\t\tSystem.out.println("hello world");\n'+
			    '\t}\n'+
				'}';
				
				case 'c' : return '#include<stdio.h>\n\n'+
				'int main() {\n'+
				    '\tprintf("hello world");\n'+
				    '\treturn 0;\n'+
				'}';
				
				case 'cpp' : return '#include <iostream>\n\n'+
				'using namespace std;\n\n'+
				'int main() {\n'+
					'\tcout<<"hello world";\n'+
				'}';
				
				case 'csharp' : return 'using System;\n\n'+
				'class Program{\n'+
				    '\tstatic void Main(){\n'+
				        '\t\tConsole.Write("hello world");\n'+
				    '\t}\n'+
				'}';
				
				case 'scala' : return 'object MyClass {\n'+
			      '\tdef main(args: Array[String]) {\n'+
			         '\t\tprint("hello world");\n'+
			      '\t}\n'+
				'}';
				
				case 'ruby' : return 'class HelloWorld\n'+
				   '\tdef sayHi\n'+
				      '\t\tputs "Hello world"\n'+
				   '\tend\n'+
				'end\n\n'+
				'hello = HelloWorld.new()\n'+
				'hello.sayHi';
				
				case 'go' : return 'package main\n\n'+
				'import "fmt"\n\n'+
				'func main() {\n'+
				    '\tfmt.Println("hello world")\n'+
				'}';
				
				case 'nodejs' : return 'console.log("hello world");';
				
				case 'python3' : return 'print ("hello world");';
				
				case 'rust' : return 'fn main() {\n'+
				    '\tprintln!("hello world");\n'+
				'}';
			}
		}
	</script>

	<!-- footer -->
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
    <!-- end footer -->
</body>
</html>