<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
 		       _   _ _____   _________
		   	  / | / / __\ \/ /__   __/
		     /   / / __/ \/ /   / /   
			/ /|  / /___ /\ \  / /      
		   /_/ |_/_____// /\ \/_/     
        (C) 2018 NEXT 모든 권리 보유.
 
-->

<%@ include file="/module/header.jsp" %>
<%@ include file="/module/topnext.jsp" %>

<jsp:include page="/Insert/Insert_form1.jsp"></jsp:include>
<style>
	body{padding: 0; margin: 0; background-color: #efefef !important;}
	h2{text-align: center;}
	.panel{margin-bottom:0 !important;}
	.footer{text-align: center; padding: 15px;}
	.input-group{margin-bottom: 5px !important;}
</style>



	<h2>회원가입</h2>

	<div class="row"> 
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-body form-horizontal">
				
					<div class="form-group">
						<label class="col-sm-2 control-label" for="memberId">아이디</label>
						<div class="col-sm-10">
							<input type="text" name="Id" id="Id" class="form-control" placeholder="아이디"/>
						</div>				                                                      
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="Password">비밀번호</label>
						<div class="col-sm-10">
							<input type="password" name="Password" id="password" class="form-control" placeholder="비밀번호"/>
						</div>				                                                      
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="Passwordc">비밀번호재확인</label>
						<div class="col-sm-10">
							<input type="password" name="Passwordc" id="passwordc" class="form-control" placeholder="비밀번호재확인"/>
						</div>				                                                      
					</div>
				
					<div class="form-group">
						<label class="col-sm-2 control-label" for="Name">이름</label>
						<div class="col-sm-10">
							<input type="text" name="Name" id="memberName" class="form-control" placeholder="성명"/>
						</div>				
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="Email">이메일</label>
						<div class="col-sm-10">
							<!-- <input type="email" name="Email" id="Email" class="form-control" placeholder="이메일"/> -->
							<input type="email" name="Email" class="form-control" placeholder="메일">
						</div>				
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="Nickname">닉네임</label>
						<div class="col-sm-10">
							<input type="text" name="Nickname" id="Nickname" class="form-control" placeholder="닉네임"/>
						</div>				
					</div>
					
					<div class="form-group" >
						<label class="col-sm-2 control-label" for="Level">권한</label>
						<div class="col-sm-10">
								<select class="form-control">
								  <option>운영자</option>
								  <option>관리자</option>
								  <option>회원</option>
								</select>
						</div>
					</div>
					
					<!-- <div class="form-group">
						<label class="col-sm-2 control-label" for="membertg">특기</label>
						<div class="col-sm-10">
							상단 style에 입력
							.input-group{margin-bottom: 5px !important;}
						
							<div class="input-group"> 
								<div class="input-group-addon">특기1</div>
      							<input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
							</div>
							<div class="input-group"> 
								<div class="input-group-addon">특기2</div>
      							<input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
							</div>
							<div class="input-group"> 
								<div class="input-group-addon">특기3</div>
      							<input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
							</div>				                                                      
							</div> -->
							
											
					</div>
							<button type="button" class="btn btn-lg btn-primary btn-block"> 
								회원가입
							</button>			
				
				</div>
				
				</div>
			</div>
			
			
		</div>
		<div class="col-sm-3"></div>
	
	
	<div class="footer">
		<small> Next Cloud </small>	
	</div>
<jsp:include page="/Insert/Insert_form2.jsp"></jsp:include>
