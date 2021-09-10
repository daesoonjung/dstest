<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/back/include/head.jsp"%>
</head>

<body>
<div class="admin_login_wrap">
	<div class="login_cont">
		<h1><img src="/resources/back/images/logo.png" alt="Aigo" /></h1>
		
		<div class="login_box">
			<h2>CESCO Lifecare 관리자 페이지</h2>
			<form name="" id="" method="">
				<div class="login_frm">
					<div>
						<label for="">아이디</label><input type="text" class="ipt_id" name="mb_id" id="mb_id" value=""/>
					</div>
					<div>
						<label for="">비밀번호</label>
						<input type="password" class="ipt_pw" name="mb_pw" id="mb_pw"  value="" />
					</div>
				</div>
				<button type="button" onclick="doLogin();" class="btn_login">로그인</button>
			</form>
		</div>
		
	</div>
</div>


<%@ include file="/WEB-INF/views/back/pages/login-js.jsp"%>

</body>
</html>