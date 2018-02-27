<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dto.User" %>
<%@ page import = "java.util.ArrayList" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />

</head>
<body>
 	<%@ include file="/module/header.jsp" %>
	<%@ include file="/module/topnext.jsp" %> 
	 <div id="wrapper">
		<div id ="rightcolumn"></div>
	
<%-- 	<%@ include file="/Search/user_search_form.jsp" %> --%>
	<table width="100%" border="1"> 
	<thead> ȸ������Ʈ </thead>
	<tr>
		<td>���̵�</td><td>�н�����</td><td>�̸�</td><td>�̸���</td><td>�г���</td><td>����</td><td>����</td><td>����</td>
	<tr>
	
	<%
		request.setCharacterEncoding("euc-kr");
		String Next = request.getParameter("Next");
		String next = request.getParameter("next");
		
		UDao dao = new UDao();
		ArrayList<User> alm = dao.uSearch(Next, next);
		System.out.println(alm.size() + "<-- alm.size()");
		for(User join : alm){
	%>-
	<tr>
			<td><%= join.getId() %></td>
			<td><%= join.getPassword() %></td>
			<td><%= join.getName() %></td>
			<td><%= join.getEmail() %></td>
			<td><%= join.getNickname() %></td>
			<td><%= join.getLevel() %></td>
			<td>
		<a href="<%= request.getContextPath() %>/Update/user_update_form.jsp?send_id=<%= join.getId() %>">������ư</a>			
					</td>
					<td>
		<a href="<%= request.getContextPath() %>/Delete/user_delete_pro.jsp?send_id=<%= join.getId()%>">������ư</a>			
					</td>
			</tr>
	
	
	<%
		}
	%>
	</table>
</body>
</html>