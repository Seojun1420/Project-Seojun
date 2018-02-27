 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


<%@ include file="/module/header.jsp" %>
<%@ include file="/module/topnext.jsp" %>

	<div style="text-align:center">
		<h2>Next Cloud 회원가입 화면</h2>
		<table width="80%" border="1" cellspacing="8" cellpadding="5" bordercolor="#8C8C8C"
			style="margin:auto;">
			<form action="<%=request.getContextPath()%>/Search/user_search_list.jsp" method="post">
              	<tr>
              <td>아이디</td>
              <td><input type="text"name="Id" placeholder="아이디"></td>
             	<tr>
              <td>비밀번호</td>
              <td><input type="password"name="Password" placeholder="비밀번호"></td>
              	<tr>
              <td> 이름 </td>	
              <td><input type="text"name="Name" placeholder="이름"></td>
              	<tr>
              <td> 이메일 </td>
              <td><input type="email"name="Email" placeholder="메일"></td>
               	<tr>
              <td> 닉네임 </td>
              <td><input type="text" name="Nickname" placeholder="닉네임"></td>
             <tr>
              <tr>
				<td>권한</td>
				<td><select name="Level">
				<option selected>회원
				<option>관리자
				<option>운영자
				</select></td>
					<tr>
				<td> 가입 버튼 </td>
             <td><button type="submit" class="sqn-btn full blue">회원가입 <i class="far fa-angle-right"></i></button></td>
            <tr>
            
            </form>
			
		</table>
</head>
<body>


</body>
</html>