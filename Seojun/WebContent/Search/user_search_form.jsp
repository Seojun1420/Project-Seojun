<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/module/header.jsp" %>
	<%@ include file="/module/topnext.jsp" %>

	<div style="text-align:center"></div>
		<h2>회원 리스트 화면 </h2>
		<form action="<%=request.getContextPath()%>/Search/user_search_list.jsp" method="post">
			<select name="Next">
				<option value="Id">아이디</option>
				<option value="Level">권한</option>
				<option value="Name">이름</option>
				<option value="Email">이메일</option>
			</select>
				<input type="text"name="next">
				<input type="submit"value="검색하기">
				</form>


</body>
</html>