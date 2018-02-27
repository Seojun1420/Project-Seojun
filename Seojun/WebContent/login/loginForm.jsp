<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />

</head>
<body>
		
		
	
	<p align ="center" style="margin-top: 20px">
		<span style="font-size: 30px"> NextCloud에 오신걸 환영합니다. </span>
		<p align ="center" style="margin-top: 20px">
		<span style="font-size: 20px">NextCloud는 빠르고 안전한 클라우드입니다.</span>
		<span style="font-size: 20px">NextCloud는 최저가로 구매 및 안정적으로 약속해드립니다.</span>
	<div class="next-overlay" style="display:none"></div>
    <div class="next-container nohead">
        <div class="next-align center">
            <div class="next-panel">
                <div class="next-panel-body">
                    <div class="next-nohead brand sqn-brand">
       <table width="43%" border="8"cellpadding="5" bordercolor="#8C8C8C"
			style="margin:auto;">
			
			
			<form action="<%=request.getContextPath()%>/login/login_pro.jsp"method="post">
                        <td align ="center"> 아이디 </td>
                        <td align ="center"><input  type="text" name="Id" placeholder="아이디"></td>
                        <br>
                        <tr>
                        <td align ="center"> 패스워드</td>
                        <td align ="center"><input type="password" name="Password" placeholder="비밀번호"></td><br>
                       	<br>
                       	<tr>
                       	<td align ="center"> 로그인 </td>
                       <td align ="center"><input type="submit" value="로그인버튼"></td>
                   		<tr>
                   		<td align ="center"> 가입하기 </td>
                   		 <td align ="center"> <a class="next-link" href="<%= request.getContextPath() %>/Insert/Insert_form.jsp"align ="center">가입하기 <i class="far fa-angle-right"></i></a> <span style="opacity: 0.2; margin-left: 4px; margin-right: 4px;">|</span></td>
                   		<tr>
                    	<td align ="center"> 비밀번호 찾기  </td>
                    	<td align ="center"> <a class="next-link" href>비밀번호 찾기 <i class="far fa-angle-right"></i></a><span style="opacity: 0.2; margin-left: 4px; margin-right: 4px;">|</span> </td>
                   		<tr>
                   		<div class="sqn-align center">
                        <p class="sqn-nohead comment" style="font-weight:500">	
                    </form>
                    </table>
                     <p align ="center" style="margin-top: 20px">
                <span style="font-family: Proxima-Nova, nanum-square; font-weight: 600; font-size: 20px; opacity: 0.3;">(C) 2018  NEXTCloud. <span style="font-size: 20px">모든 권리 보유</span>.<br>
                <span style="font-size: 20px">사업자등록번호</span>: 없습니다</span>
                </p>
              </div>
            </div>
         </div>
      </div>
  	</div>
</body>
</html>