<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>NEXTCloud - ȣ����, �� �̻��� Ŭ����</title>
</head>


<body>
<div id="wrapper">
	<div class="topnext">
<%

	String S_NAME = (String)session.getAttribute("S_NAME");
	String S_LEVEL = (String)session.getAttribute("S_LEVEL");
	System.out.println(S_NAME +"<-- S_NAME");
	System.out.println(S_LEVEL +"<-- S_LEVEL");
	
	%>
	<%
		if(S_LEVEL == null){
	%>
	<div class="row">
		<div class="col-sm-12 col-md-6">
			<figure class="brand" alt="NEXT Cloud"></figure></a>
		</div>
			<div class="col-sm-12 col-md-6">
	<a href="<%= request.getContextPath() %>/Cloud/cloud.jsp">��ǰ</a>
	<a href="<%= request.getContextPath() %>/price/price.jsp">���</a>
	<a href="<%= request.getContextPath() %>/support/support.jsp">������</a>
	<a href="<%= request.getContextPath() %>/login/Login.jsp">�����ϱ�</a>
	</div>

		<!-- �α��� �� ȭ�� ����  -->
<%-- 	<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
		<td align ="center"> ���̵�</td>
		<td align ="center"> <input type="text" name="Id"placeholder="���̵�"></td>
			<br>
			<tr>
		<td align ="center"> �н�����</td>
		<td align ="center"><input type="password" name="Password" placeholder="��й�ȣ"></td>
		<td><input type="submit" value="�α���"></td>
		<tr>
	</form> --%>
<!-- �α��� �� ȭ�� End -->	
		
	<%
		}else{
			if(S_LEVEL.equals("��ȸ�� & �α������� ���� ȸ��")){
	%>	
	 	<a href="<%= request.getContextPath() %>/Insert/Insert_form.jsp">ȸ�� ����</a>
	 	
                <%
		}else{
			if(S_LEVEL.equals("ȸ��")){
                %>
        	 	<a href="<%= request.getContextPath() %>/">��ǰ�ֹ�</a>
        	 	<a href="<%= request.getContextPath() %>/">�ֹ���ȸ</a>
        	 	  <%
		}else if(S_LEVEL.equals("������")){
                %>
                <a href="<%= request.getContextPath() %>/List/user_list.jsp">ȸ����ȸ</a>
                <a href="<%= request.getContextPath() %>/">��������</a>
                <a href="<%= request.getContextPath() %>/">����</a>
                <a href="<%= request.getContextPath() %>/">��ǰ���</a>
                <a href="<%= request.getContextPath() %>/">��ǰ��ȸ</a>
                	  <%
		}else if(S_LEVEL.equals("���")){
                %>
                <a href="<%= request.getContextPath() %>/List/user_list.jsp">ȸ����ȸ</a>
                <a href="<%= request.getContextPath() %>/">��������</a>
<%
		}
%>
	<br><br>
		<%= S_NAME %> �� <%= S_LEVEL %> �������� �α���
		<a href="<%= request.getContextPath() %>/login/logout.jsp">�α׾ƿ�</a>
	 	<%
		}
	 	%>
	 	<%
		}
	 	%>
	 	</div>
	</div>
</body>
</html>