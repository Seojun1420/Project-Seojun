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
		<span style="font-size: 30px"> NextCloud�� ���Ű� ȯ���մϴ�. </span>
		<p align ="center" style="margin-top: 20px">
		<span style="font-size: 20px">NextCloud�� ������ ������ Ŭ�����Դϴ�.</span>
		<span style="font-size: 20px">NextCloud�� �������� ���� �� ���������� ����ص帳�ϴ�.</span>
	<div class="next-overlay" style="display:none"></div>
    <div class="next-container nohead">
        <div class="next-align center">
            <div class="next-panel">
                <div class="next-panel-body">
                    <div class="next-nohead brand sqn-brand">
       <table width="43%" border="8"cellpadding="5" bordercolor="#8C8C8C"
			style="margin:auto;">
			
			
			<form action="<%=request.getContextPath()%>/login/login_pro.jsp"method="post">
                        <td align ="center"> ���̵� </td>
                        <td align ="center"><input  type="text" name="Id" placeholder="���̵�"></td>
                        <br>
                        <tr>
                        <td align ="center"> �н�����</td>
                        <td align ="center"><input type="password" name="Password" placeholder="��й�ȣ"></td><br>
                       	<br>
                       	<tr>
                       	<td align ="center"> �α��� </td>
                       <td align ="center"><input type="submit" value="�α��ι�ư"></td>
                   		<tr>
                   		<td align ="center"> �����ϱ� </td>
                   		 <td align ="center"> <a class="next-link" href="<%= request.getContextPath() %>/Insert/Insert_form.jsp"align ="center">�����ϱ� <i class="far fa-angle-right"></i></a> <span style="opacity: 0.2; margin-left: 4px; margin-right: 4px;">|</span></td>
                   		<tr>
                    	<td align ="center"> ��й�ȣ ã��  </td>
                    	<td align ="center"> <a class="next-link" href>��й�ȣ ã�� <i class="far fa-angle-right"></i></a><span style="opacity: 0.2; margin-left: 4px; margin-right: 4px;">|</span> </td>
                   		<tr>
                   		<div class="sqn-align center">
                        <p class="sqn-nohead comment" style="font-weight:500">	
                    </form>
                    </table>
                     <p align ="center" style="margin-top: 20px">
                <span style="font-family: Proxima-Nova, nanum-square; font-weight: 600; font-size: 20px; opacity: 0.3;">(C) 2018  NEXTCloud. <span style="font-size: 20px">��� �Ǹ� ����</span>.<br>
                <span style="font-size: 20px">����ڵ�Ϲ�ȣ</span>: �����ϴ�</span>
                </p>
              </div>
            </div>
         </div>
      </div>
  	</div>
</body>
</html>