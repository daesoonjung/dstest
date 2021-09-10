<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ include file="/WEB-INF/views/back/include/head.jsp"%> 
</head>
<body>
<div class="admin_wrapper">
	<nav class="nav">
		<h1><a href="javascript:void(0);" onclick="goMain();"><img src="/resources/back/images/logo.png" alt="세스코 라이프케어" /></a></h1>
		<ul>
			<li class="title nav-item nav-main"><a href="/back/main" class="nav-link on" target="viewer"><span>메인</span><i></i></a></li>
			<li class="title nav-item">
				<a href="#" class="depth1 nav-link"><span>판매인 관리</span></a>
				<ul>
		    		<li><a href="/back/seller/main" class="nav-link" target="viewer"><span>판매인 목록</span></a></li>
		    	</ul>
			</li>
			<li class="title nav-item">
				<a href="#" class="depth1 nav-link"><span>입사지원</span></a>
				<ul>
		    		<li><a href="/back/solplanner/join/main" class="nav-link" target="viewer"><span>입사지원서 목록</span></a></li>
		    	</ul>
			</li>
			<li class="title nav-item">
				<a href="#" class="depth1 nav-link"><span>커뮤니티</span></a>
				<ul>
		    		<li><a href="/back/community/notice/main" class="nav-link" target="viewer"><span>공지사항 관리</span></a></li>
		    		<li><a href="/back/community/faq/main" class="nav-link" target="viewer"><span>FAQ 관리</span></a></li>
		    		<li><a href="/back/community/qna/main" class="nav-link" target="viewer"><span>Q&A 관리</span></a></li>
		    	</ul>
			</li>
			<!-- 
			<li class="title nav-item">
				<a href="#" class="depth1 nav-link"><span>계정 관리</span></a>
				<ul>
		    		<li><a href="/back/account/main" class="nav-link" target="viewer"><span>계정목록</span></a></li>
		    	</ul>
			</li>
			<li class="title nav-item">
				<a href="#" class="depth1 nav-link"><span>지국정보 관리</span></a>
				<ul>
		    		<li><a href="IN_01.html" class="nav-link" target="viewer"><span>지국정보 관리</span></a></li>
		    	</ul>
			</li>
			-->
	    </ul>
	</nav>
    <iframe src="/back/main" name="viewer" id="iframeContents" title="컨텐츠 영역" class="" style="overflow:hidden;"></iframe>
    <!-- 
    <iframe src="../admin_main.html" name="viewer" class="" style="overflow:hidden;"></iframe>
    -->
</div>
<%@ include file="/WEB-INF/views/back/pages/layout-js.jsp"%>
</body>
</html>