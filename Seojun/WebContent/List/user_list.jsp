<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dto.User" %>
<%@ page import = "java.util.ArrayList" %>

<thead> ȸ������Ʈ </thead>
<table width = "100" border="1"></table> 
	<tr>
	
		<td>���̵�</td><td>�н�����</td><td>�̸�</td><td>�̸���</td><td>�г���</td><td>����</td><td>����</td><td>����</td>
	<tr>
<%
 	UDao dao = new UDao();
	ArrayList<User> alm = dao.uAllSelect();
	for(int i=0; i<alm.size(); i++){
		User join = alm.get(i);


%>
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
	
 