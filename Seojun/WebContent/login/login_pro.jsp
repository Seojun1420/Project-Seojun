<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "kr.or.seojun.dto.Join" %>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dto.User" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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


</body>
</html>
