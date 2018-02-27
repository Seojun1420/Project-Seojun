<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.or.seojun.dao.UDao" %>
<%@ page import = "kr.or.seojun.dto.User" %>
<%@ page import = "java.util.ArrayList" %>

<thead> 회원리스트 </thead>
<table width = "100" border="1"></table> 
	<tr>
	
		<td>아이디</td><td>패스워드</td><td>이름</td><td>이메일</td><td>닉네임</td><td>권한</td><td>수정</td><td>삭제</td>
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
		<a href="<%= request.getContextPath() %>/Update/user_update_form.jsp?send_id=<%= join.getId() %>">수정버튼</a>			
					</td>
					<td>
		<a href="<%= request.getContextPath() %>/Delete/user_delete_pro.jsp?send_id=<%= join.getId()%>">삭제버튼</a>			
					</td>
			</tr>
<% 
	}
%>	
	
 