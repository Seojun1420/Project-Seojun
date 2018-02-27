<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import = "kr.or.seojun.dao.UDao" %>
   <% request.setCharacterEncoding("euc-kr"); %>
   <jsp:useBean id="join" class="kr.or.seojun.dto.User"/>
<jsp:setProperty name="join" property="*"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/module/header.jsp" %>
	<%@ include file="/module/topnext.jsp %>
	
<%
	UDao dao = new UDao();
	dao.uInsert(join);
	
	response.sendRedirect(request.getContextPath() + "/Search/user_search_list.jsp");
	
	%>
	
	


</body>
</html>