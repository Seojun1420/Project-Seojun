<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> NEXTCloud - 호스팅, 그 이상의 클라우드 </title>
    <link href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    body{padding: 0; margin: 0; background-color: #3DB7CC !important;}
    h2{text-align: center; font-size: 30px;}
    </style>
</head>
<body>
	<h2> NextCloud 로그인 화면</h2>
		<br>
		<table width="35%" border="7" cellpadding="5" bordercolor="#000000" style="margin:auto;">
			<form action="/" class="form-horizontal" method="post">
			 	 <tr>
				     <td align ="center">
				    	<label for="inputId3" class="control-label" align ="center"> 아이디 </label>
				   	 </td>
				   	 <td align ="center">
	                    <input class="btn btn-default " type="text" name="Id" placeholder="아이디"><br>
	                 </td>
                 </tr>
                 <tr>
                 	<td align = "center"> 
                 		 <label for="inputPassword3" class="control-label">패스워드 </label>
                 	</td>
                 	<td align = "center">
                 		 <input class="btn btn-default" type="password" name="Password" placeholder="패스워드"><br>
                    </td>
                 </tr>
                 <tr>
                 	<td align = "center">
                 		 <label for="inputture3" class="control-label"> 계속하기 </label>
                 	</td>
                 	<td align = "center">
                 		 <a 
							class="btn btn-default col-md-5" 
							href="<%= request.getContextPath() %>/login/login_pro.jsp">
							로그인
							<i class="far fa-angle-cent" ></i></a> 
                 	</td>
                 </tr>   
                
                 <tr>
                 	<td align = "center">
                 	 <p class="sqn-nohead comment" style="font-weight:500">
                 		 <label for="inputture3" class=" control-label"> 회원가입 </label>
                 		 
                 	 </p>	 
                 	</td>
                 	<td align = "center">
                 		  <a 
							class="btn btn-default col-md-5" 
							href="<%= request.getContextPath() %>/Insert/Insert_form.jsp">
							회원가입
							<i class="far fa-angle-cent" ></i></a> 
							
                 	</td>	
                 		
                 </tr>
                 <tr>
                 	<td align = "center">
                 	 <p class="sqn-nohead comment" style="font-weight:500">
                 		<label for="inputture3" class=" control-label"> 비밀번호찾기 </label>
                 	 </p>
                 	</td>
                 	<td >
                 		<a 
							class="btn btn-default col-md-5" 
							href="<%= request.getContextPath() %>/login/forgot.jsp">
							비밀번호 찾기
							<i class="far fa-angle-cent" ></i></a> 
                 	</td>
                 </tr>
			</form>
                    </table>
	
	
		
		
	

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
 </body>
 </html>