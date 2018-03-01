<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dto.User" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NEXTCloud - 호스팅, 그 이상의 클라우드</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />

</head>
<body>

<%@ include file="/module/header.jsp" %>
<%@ include file="/module/topnext.jsp" %>

<%
	String Id = request.getParameter("Id");
	String Password = request.getParameter("Password");
	System.out.println(Id + "<-- Id");
	System.out.println(Password + "<-- Password");
	
	UDao uDao = new UDao();
	System.out.println("==== result ====");
	String result = uDao.uLoginCheck(Id, Password);
	if(result.equals(" 로그인성공 ")){
		User join = uDao.uGetForSession(Id);
		session.setAttribute("S_ID", join.getId());
		session.setAttribute("S_NAME", join.getName());
		session.setAttribute("S_LEVEL", join.getLevel());
		%>
		<script type="text/javascript">
			alert('로그인성공');
			location.href="<%= request.getContextPath()%>/index.jsp";
		</script>
	<%			
		}else if(result.equals("패스워드 불일치")){
		%>
		<script type="text/javascript">
			alert('패스워드 불일치');
			location.href="<%= request.getContextPath()%>/index.jsp";
		</script>
	<%			
		}else if(result.equals("아이디 불일치")){
	%>
		<script type="text/javascript">
			alert('아이디 불일치');
			location.href="<%= request.getContextPath()%>/index.jsp";
		</script>
	<%		
		}

	%>
	
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
	


</body>
</html>
