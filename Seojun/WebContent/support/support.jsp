<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>NEXTCloud - 호스팅, 그 이상의 클라우드</title>
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
	 <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
      <meta name="format-detection" content="telephone=no">
	  <meta property="og:title" content="NEXTCloud">
	  <meta property="og:description" content="상품">
	<style>
		body{padding: 0; margin: 0; background-color: #B2EBF4 !important;}
		h2{text-align: center;}
		div{row-color: #F6F6F6 !important;}
	
	
	</style>

<body>
	
	<%@ include file="/module/header.jsp" %>
	<%@ include file="/module/topnext.jsp" %>
	

	<nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"> Next Cloud </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
                <li><a href="<%= request.getContextPath() %>/Cloud/cloud.jsp">상품</a></li>
                <li><a href="<%= request.getContextPath() %>/price/price.jsp">요금</a></li>
                <li><a href="<%= request.getContextPath() %>/support/support.jsp">고객지원</a></li>
                <li class="dropdown open">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">시작하기 <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>


						<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
	
    

</body>
</html>