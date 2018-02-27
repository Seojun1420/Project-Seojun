<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>NEXTCloud - 호스팅, 그 이상의 클라우드</title>
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
	<a href="<%= request.getContextPath() %>/Cloud/cloud.jsp">상품</a>
	<a href="<%= request.getContextPath() %>/price/price.jsp">요금</a>
	<a href="<%= request.getContextPath() %>/support/support.jsp">고객지원</a>
	<a href="<%= request.getContextPath() %>/login/Login.jsp">시작하기</a>
	</div>

		<!-- 로그인 전 화면 시작  -->
<%-- 	<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
		<td align ="center"> 아이디</td>
		<td align ="center"> <input type="text" name="Id"placeholder="아이디"></td>
			<br>
			<tr>
		<td align ="center"> 패스워드</td>
		<td align ="center"><input type="password" name="Password" placeholder="비밀번호"></td>
		<td><input type="submit" value="로그인"></td>
		<tr>
	</form> --%>
<!-- 로그인 전 화면 End -->	
		
	<%
		}else{
			if(S_LEVEL.equals("비회원 & 로그인하지 않은 회원")){
	%>	
	 	<a href="<%= request.getContextPath() %>/Insert/Insert_form.jsp">회원 가입</a>
	 	
                <%
		}else{
			if(S_LEVEL.equals("회원")){
                %>
        	 	<a href="<%= request.getContextPath() %>/">상품주문</a>
        	 	<a href="<%= request.getContextPath() %>/">주문조회</a>
        	 	  <%
		}else if(S_LEVEL.equals("관리자")){
                %>
                <a href="<%= request.getContextPath() %>/List/user_list.jsp">회원조회</a>
                <a href="<%= request.getContextPath() %>/">공지사항</a>
                <a href="<%= request.getContextPath() %>/">서비스</a>
                <a href="<%= request.getContextPath() %>/">상품등록</a>
                <a href="<%= request.getContextPath() %>/">상품조회</a>
                	  <%
		}else if(S_LEVEL.equals("운영자")){
                %>
                <a href="<%= request.getContextPath() %>/List/user_list.jsp">회원조회</a>
                <a href="<%= request.getContextPath() %>/">공지사항</a>
<%
		}
%>
	<br><br>
		<%= S_NAME %> 님 <%= S_LEVEL %> 권한으로 로그인
		<a href="<%= request.getContextPath() %>/login/logout.jsp">로그아웃</a>
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