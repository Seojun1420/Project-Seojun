<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <!-- Begin Wrapper -->
   <div id="wrapper">
   
   
         <!-- Begin Header -->
         <div id="header">
<%
	String S_NAME = (String)session.getAttribute("S_NAME");
	String S_LEVEL = (String)session.getAttribute("S_LEVEL");
	System.out.println(S_NAME + "<-- S_NAME");
	System.out.println(S_LEVEL + "<-- S_LEVEL");
%>
	 
top.jsp		       상단 메뉴 <br><br>

<%
	if(S_LEVEL == null){
%>
<a href="<%= request.getContextPath() %>/minsert/m_insert_form.jsp">01회원 가입</a>
<!-- 로그인 전 화면 시작 -->
<br><br>
<form action="<%= request.getContextPath() %>/login/login_pro.jsp" method="post">
	<input type="text" name="id">
	<input type="text" name="pw">
	<input type="submit" value="로그인버튼">
</form>
<!-- 로그인 전 화면 End -->		
<%
	}else{
		if(S_LEVEL.equals("구매자")){
%>		
<a href="<%= request.getContextPath() %>/minsert/m_insert_form.jsp">01회원 가입</a>
<a href="#">04상품 검색</a>		
<%
		}else if(S_LEVEL.equals("판매자")){
%>
<a href="<%= request.getContextPath() %>/minsert/m_insert_form.jsp">01회원 가입</a>
<a href="<%= request.getContextPath() %>/goods/goods_insert_form.jsp">03상품 등록</a>
<a href="#">04상품 검색</a> 
<%
		}else if(S_LEVEL.equals("관리자")){
%>
<a href="<%= request.getContextPath() %>/minsert/m_insert_form.jsp">01회원 가입</a>
<a href="<%= request.getContextPath() %>/msearch/m_search_list.jsp">02회원 검색</a>
<a href="<%= request.getContextPath() %>/goods/goods_insert_form.jsp">03상품 등록</a>
<a href="#">04상품 검색</a> 
<%
		}
%>
<br><br>
	<%= S_NAME %> 님 <%= S_LEVEL %> 권한으로 로그인
	<a href="<%= request.getContextPath() %>/login/logout.jsp">로그아웃</a>
<%
	}
%>		
			   
		 </div>
		 <!-- End Header -->
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 