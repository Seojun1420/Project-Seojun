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
		<h2>Next Cloud ȸ������ ȭ��</h2>
		<table width="80%" border="1" cellspacing="8" cellpadding="5" bordercolor="#8C8C8C"
			style="margin:auto;">
			<form action="<%=request.getContextPath()%>/Search/user_search_list.jsp" method="post">
              	<tr>
              <td>���̵�</td>
              <td><input type="text"name="Id" placeholder="���̵�"></td>
             	<tr>
              <td>��й�ȣ</td>
              <td><input type="password"name="Password" placeholder="��й�ȣ"></td>
              	<tr>
              <td> �̸� </td>	
              <td><input type="text"name="Name" placeholder="�̸�"></td>
              	<tr>
              <td> �̸��� </td>
              <td><input type="email"name="Email" placeholder="����"></td>
               	<tr>
              <td> �г��� </td>
              <td><input type="text" name="Nickname" placeholder="�г���"></td>
             <tr>
              <tr>
				<td>����</td>
				<td><select name="Level">
				<option selected>ȸ��
				<option>������
				<option>���
				</select></td>
					<tr>
				<td> ���� ��ư </td>
             <td><button type="submit" class="sqn-btn full blue">ȸ������ <i class="far fa-angle-right"></i></button></td>
            <tr>
            
            </form>
			
		</table>
</head>
<body>


</body>
</html>