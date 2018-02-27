<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<!--
 		       _   _ _____   _________
		   	  / | / / __\ \/ /__   __/
		     /   / / __/ \/ /   / /   
			/ /|  / /___ /\ \  / /      
		   /_/ |_/_____// /\ \/_/     
        (C) 2018 NEXT ��� �Ǹ� ����.
 
-->
		<meta charset="EUC-KR">
		<title>NEXTCloud - ȣ����, �� �̻��� Ŭ����</title>
	
		<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/main.css" />
		<!-- <link rel="stylesheet" href="/assets/fonts/font-awesome-5/css/fontawesome-all.min.css">
		<link rel="stylesheet" href="/assets/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="/assets/css/style.css?version=3">
        <script src="/assets/js/jquery-2.2.4-min.js"></script> -->
</head>
<body>
	
	<%@ include file="/module/header.jsp" %>
	<%@ include file="/module/topnext.jsp" %>
	

        <div class="container" align ="center">
            <p class="headline">���� ����� �˾ƺ�����.</p>
            <a href=<%= request.getContextPath() %>/Cloud/cloud.jsp>�� �˾ƺ��� <i class="far fa-angle-right"></i></a>
	            <div class="row justify-content-center">
	            	</div>
	            <div class="col-9 col-sm-6 col-md-3">
	            	</div>
	            </div>
                  <table border="5" style="width: 40%" align ="center" >
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-clock"></i> ���۱��� 40��</td><br>
                  		<td align ="center"> �ν��Ͻ� �ֹ� �� �������� ��� 40�ʰ� �ҿ�˴ϴ�. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i> ���� ���� </td>
                  		<td align ="center"> ���� ��ư�� Ŭ���ϴ� �͸����� �ν��Ͻ� ������ �����ϼ���. </td>
                  	</tr>
              
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i> �ʱ�ȭ </td>
                  		<td align ="center">  �ʱ�ȭ�� �ʿ��� �� ��������, ��ٸ����� �۾��ϼ���. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i>���׷��̵�  </td>
                  		<td align ="center">  �����ϴ� ���信 ��ø�ϰ� �����ϰ� ���׷��̵��ϼ���. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i>���� ��ǥ  </td>
                  		<td align ="center">   ���� ��ǥ�� �����ϰ� �����ϴ� ���信 �ռ� �����ϼ���. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i>���� ����  </td>
                  		<td align ="center">   ������ �غ�� �̹����� �� ������ �ν��Ͻ��� �����ϼ���. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i>���� ���� </td>
                  		<td align ="center">   Administrator �� root ���� ���� ������ �̿��ϼ���. </td>
                  	</tr>
                  	<tr>
                  		<td class="item" class="details" align ="center"><i class="far fa-power-off"></i>����� ȣȯ </td>
                  		<td align ="center">   ����ũ�� �Ӹ� �ƴ϶� ����Ͽ����� �ν��Ͻ��� �����ϼ���.</td>
                  	</tr>
                  	
                  	</table>
                  	
             <div class="container" align ="center"> 
   				<p class="headline">�ϱ��� �ʴ� ������ �����մϴ�.</p>    	
        
    		<section class="hero lg root-product product-performance"></section>
    
    
    
    
  
	
	<div id= "rightcolumn"></div>
	
</body>
</html>