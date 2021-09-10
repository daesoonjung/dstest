<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <header class="header scroll-menu">
    <div class="top_menu pc">
      <ul>
        <li><a href="https://www.cesco.co.kr/Cesco/default.aspx" target="_blank">세스코</a></li>
        <li><a href="https://mall.cesco.co.kr/Shop/Main/" target="_blank">세스코몰</a></li>
        <li><a href="https://smartstore.naver.com/cescomall" target="_blank">스마트스토어</a></li>
        <li class="on"><a href="/front/main">세스코라이프케어</a></li>
      </ul>
    </div>
    <c:set var="curpath" value="${requestScope['javax.servlet.forward.servlet_path']}" />
    <h1 class="<c:if test = "${curpath eq '/front/main'}">logo</c:if><c:if test = "${curpath ne '/front/main'}">logo_sub</c:if>"><a href="/front/main">CESCO Lifecare 세스코 라이프케어</a></h1>
    <nav id="nav">
      <div class="btn_nav">
        <span></span> 
        <span></span>
        <span></span>
      </div>
      <div class="nav_box">
        <span class="logo">CESCO Lifecare</span>
        <ul id="gnb" class="menutmp">
          <li>
            <a href="/front/intro/main">CESCO Lifecare</a>
            <ul class="gnb_sub">
              <li><a href="/front/intro/main">CESCO Lifecare 소개</a></li>
              <li><a href="/front/intro/map">찾아오시는 길</a></li>
            </ul>
          </li>
          <li>
            <a href="/front/solution/air">솔루션소개</a>
            <ul class="gnb_sub">
              <li><a href="/front/solution/air">공기질 안심관리 솔루션</a></li>
              <li><a href="/front/solution/water">수질 안심관리 솔루션</a></li>
              <li><a href="/front/solution/vcs">바이러스케어 시스템</a></li>
              <li><a href="/front/solution/life">생활환경위생 솔루션</a></li>
            </ul>
          </li>
          <li>
            <a href="/front/solplanner/intro">SOL플래너</a>
            <ul class="gnb_sub">
              <li><a href="/front/solplanner/intro">SOL플래너란?</a></li>
              <li><a href="/front/solplanner/faq">FAQ / Q&A</a></li>
            </ul>
          </li>
          <li class="menunotice"><a href="/front/board/notice">공지사항</a></li>
          <li class="menuhelp"><a href="/front/help">고객지원</a></li>
        </ul>
      </div>
    </nav>
  </header>
  
  
<script type="text/javascript">
$(function() {
	var url_pathname = window.location.pathname
    var url_search = window.location.search;
    var url = url_pathname +  url_search;
    if (url == "/front/solplanner/qna" || url == "/front/solplanner/qna/write") {
    	url = "/front/solplanner/faq";
    }
    
    if (url == "/front/solplanner/join/step1" || url == "/front/solplanner/join/step2" || url == "/front/solplanner/join/step3") {
    	url = "/front/solplanner/intro";
    }
    $(".menutmp > li > ul > li > a").each(function(){
        if ( $(this).attr("href") == url ){
            $(this).parent().parent().parent().addClass("active");
            $(this).parent().addClass("active");
        }
    });
    
    if (url == "/front/board/notice") {
        $(".menunotice").addClass("active");
    }
    
    if (url == "/front/help") {
        $(".menuhelp").addClass("active");
    }
});
</script>
