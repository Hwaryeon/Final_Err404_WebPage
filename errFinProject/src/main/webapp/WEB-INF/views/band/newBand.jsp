<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!--[if lt IE 9]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
<meta name="viewport" content=" width=device-width, initial-scale=1">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>밴드 만들기 | 밴드</title>
<!-- CSS -->
<jsp:include page="../common/menubar.jsp" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<link href="resources/css/light-pink-blue.css" rel="stylesheet">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
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
   background-repeat: no-repeat;
}

.opensetting-container {
   float: left;
   background-color: white;
   width:100%;
}

.opensetting {
   float: left;
   width: 33%;
}

.opensetting p {
   font-size:16px;
}
.check {
   float:left;
   width:40px;
   margin-top:30px;
   margin-right:10px;
   height: 40px;
   /* background-color:gray; */
   /* margin-left:20px; */
   border-radius:50%;
}

.check input {
   margin-top:10px;
   height:20px;
}

#contentImg, #cover1, #cover2, #cover3, #cover4, #cover5, #cover6, #cover7{
   cursor:pointer;
}

</style>
</head>
<body
   class="home page page-id-4 page-template page-template-template_home-php">
   <!-- TOP NAV -->
   <!-- LOGO AREA -->
   <!-- <div class="fullwidth bg-pink">
      <div class="container">
         <div class="col-md-6 col-xs-12">
            <div class="logo">
               <h1>
                  <a href="index.html" title="Weekend Magazine">Weekend Magazine</a>
               </h1>
            </div>
         </div>
         <div class="col-md-6 col-xs-12">
            <div id="ads120_60-widget-2" class="ads120-60 ads-one">
               <div class="ad-cell">
                  <a href="#" target="_blank"> <img src="img/ad-468x60.png "
                     alt="">
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div> -->

   <div class="container">
      <div class="main col-md-6 col-xs-12" style="width: 93%;">
         <div id="respond" class="widget clearfix">
            <form action="createBand.mp" method="post" id="contactForm" encType="multipart/form-data">
               <p class="textarea clearfix">
                  <label for="commentsText">
                     <small style="font-size: 14px; font-weight: 600; margin-bottom: 11px; color: #444;">밴드 이름 
                     <span class="star"></span>
                     </small>
                  </label>
                  <input type="text" name="bname" id="bname"
                     value="이곳에 밴드 이름을 입력해주세요" 
                     onclick="this.value='';" class="required requiredField"
                     style="line-height: 54px; border-bottom: 1px solid #ccc; font-size: 30px; font-weight: 400; color: #c5c0c0; background: white;">
                  <input type="hidden" id="coverType" name="coverType" value="cover1" >
               
               </p>
               <div class="box-content widget fullwidth">
                  <h4 class="widget-title"></h4>
                  <div class="widget-content">
                     <ul class="category-posts" style="width:970px; height:110px;">
                        <li style="width:450px;">
                           <a href="#"><img id="changeCover" src="${ contextPath }/resources/images/cover/cover1.jpg" width="270" alt="" style="width: 300px; height: 225px;"></a>
                        </li>
                        <li></li>
                        <li style="width:520px;">
                           <span class="changeCover _coverImageUploader js-fileapi-wrapper" style="float: left; margin-right: 3px;">
                              <span>
                                 
                              </span>
                              <img id = "contentImg" src="${ contextPath }/resources/images/addImg.png" alt="" style="width:120px; height:90px; margin-top:-20px;"
                              onclick="changeImage()"> <!-- width="270"  -->
                              <input type="file" id="bandImage" name="bandImage" class="imageUpload" multiple onchange="loadImg(this)" style="width: 120px; height: 90px;">
                           </span>
                              <img src="${ contextPath }/resources/images/cover/check.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover1" onclick="damaY('cover1')" 
                              >
                              <img src="${ contextPath }/resources/images/cover/cover2.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover2" onclick="damaY('cover2')"
                              >
                              <img src="${ contextPath }/resources/images/cover/cover3.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover3" onclick="damaY('cover3')"
                              >
                        </li>
                        <li style="width:520px;">
                              <img src="${ contextPath }/resources/images/cover/cover4.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover4" onclick="damaY('cover4')"
                              >
                              <img src="${ contextPath }/resources/images/cover/cover5.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover5" onclick="damaY('cover5')"
                              >
                              <img src="${ contextPath }/resources/images/cover/cover6.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover6" onclick="damaY('cover6')"
                              >
                              <img src="${ contextPath }/resources/images/cover/cover7.jpg" width="270" alt="" style="width: 120px; height: 90px;"
                              id="cover7" onclick="damaY('cover7')"
                              >
                        </li>
                     </ul>
                  </div>
               </div>
               <div class="opensetting-container">
                  <div class="opensetting closed">
                     <div class="check">
                        <input type="radio" name="bandStatus" id="radio-1" value="PRV">
                     </div>
                     <h2>비공개 밴드</h2><br>
                     <p>밴드와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수 있습니다.</p>
                     
                  </div>
                  <div class="opensetting nameopen">
                     <div class="check">
                        <input type="radio" name="bandStatus" id="radio-2" value="PTD">
                     </div>
                     <h2>밴드명 공개 밴드</h2><br>
                     <p>누구나 밴드를 검색해 찾을 수 있지만, 게시물은 멤버만 볼 수 있습니다.</p>
                  </div>
                  <div class="opensetting open">
                     <div class="check">
                        <input type="radio" name="bandStatus" id="radio-3" value="PUB">
                     </div>
                     <h2>공개 밴드</h2><br>
                     <p>누구나 밴드를 검색해 찾을 수 있고, 게시물을 볼 수 있습니다.</p>
                  </div>
                  <div id="bandStatus">
                     
                  </div>
               </div>
               
               <script>
               $(function(){
                  $("input").checkboxradio({
                     icon:false
                  });
               });
               </script>
               
               <div id="contact_response"></div>
               <p class="buttons clearfix"
                  style="width: 200px; margin-left: auto; margin-right: auto;">
                  <button type="reset" id="conSub1" style="width: 70px; margin-right: 30px; background: #eef0f3; color: #666;">취소</button>
                  <button type="submit" id="conSub2" style="width: 70px; background: #474e60;" onclick="insertForm()">완료</button>
               </p>
            </form>
         </div>
      </div>
   </div>
   
   <script>
   function insertForm(){
      checkbTitle();
   }
   
   $(function() {
      $("#bandImage").hide();
      $("#bandStatus").hide();
   });
   
   function changeImage(){
      $("#bandImage").click();
   }
   function loadImg(value){
      if(value.files && value.files[0]){
         var reader = new FileReader();
         reader.onload = function(e){
            $("#changeCover").attr("src", e.target.result);
            $("#contentImg").attr("src", e.target.result);
         }
         reader.readAsDataURL(value.files[0])
         
         document.getElementById('coverType').value = 'Y';
         
      }
   }
   
   function damaY(value){
      
      document.getElementById('coverType').value = value;
      
       for(var i=1; i<8; i++){
         var str = 'cover';
         str += i;
         var dama = document.getElementById(str);
         dama.src="/efp/resources/images/cover/" + str + ".jpg";
         
      }
      
      
      var dama = document.getElementById(value);
         
      var test = document.getElementById('changeCover');
         
      if(dama.src.match(value + ".jpg")){
         dama.src="/efp/resources/images/cover/check.jpg";
         test.src="/efp/resources/images/cover/" + value + ".jpg";
      }else{
         dama.src="/efp/resources/images/cover/" + value + ".jpg";
         test.src="/efp/resources/images/cover/cover1.jpg";
      }
   }
   
   
   /* function checkbTitle(){
      var title = $("#contactName").val();
      
      $.ajax({
         url : "checkbTitle.mp",
         type : "post",
         data : {
            contactName : title
         },
         success : function(data) {
            result = data;
            
            if(result == 0) {
               $("#contactForm").submit();
            } else {
               alert("중복되는 밴드이름입니다. 다시 확인해주세요.");
               return false;
            }
         },
         error : function() {
            console.log('실패');
         }
      })
   } */
   </script>

   <script src="resources/js/jquery.min.js"></script>
   <script src="resources/js/bootstrap.min.js"></script>
   <script src="resources/js/jquery.bxslider.min.js"></script>
   <script src="resources/js/custom.js"></script>
</body>
</html>