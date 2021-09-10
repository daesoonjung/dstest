<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <%@ include file="/WEB-INF/views/front/include/meta.jsp"%>
  <%@ include file="/WEB-INF/views/front/include/head.jsp"%>
  <link rel="stylesheet" type="text/css" href="/resources/front/assets/plugins/fullpage/jquery.fullpage.min.css" />
  <link rel="stylesheet" href="/resources/front/assets/plugins/slick/slick.css">
  <script src="/resources/front/assets/plugins/fullpage/jquery.fullpage.min.js"></script>
  <script type="text/javascript" src="/resources/front/assets/plugins/slick/slick.min.js"></script> 
</head>
<body>
<div class="wrapper">
  <%@ include file="/WEB-INF/views/front/include/header.jsp"%>
  <div class="container" id="SQLplanner">
    <div class="sub_visual_cont bg_SOLplanner">
      <div class="sub_title_div">
        <span class="txt1">SOL Planner</span>
        <h2 class="txt2"><strong>SOL플래너 <span class="br"></span>지원하기</strong></h2>
        <p class="txt3"><span>세스코 라이프케어는 </span><span>SOL플래너 여러분을 기다립니다.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu3">
        <li><a href="/front/home" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solplanner/intro"><span>SOL플래너</span></a></li>
        <li class="depth depth2"><a href="/front/solplanner/intro"><span>SOL플래너란?</span></a></li>
        <li class="depth depth3 last">
          <a href="#" class=""><span>SOL플래너 지원하기</span></a>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="content">
        <h3 class="hide">지원완료</h3>
        <ul class="step_div step3">
          <li>
            <span class="step_num">Step 01</span>
            <span class="step_txt">실명인증</span>
          </li>
          <li>
            <span class="step_num">Step 02</span>
            <span class="step_txt">지원서 작성</span>
          </li>
          <li class="on">
            <span class="step_num">Step 03</span>
            <span class="step_txt">지원완료</span>
          </li>
        </ul>

        <div class="support_fin_cont">
          <div>
            <img src="/resources/front/assets/images/logo.png" alt="세스코 라이프케어 로고">
            <p><span><em>SOL플래너</em>에</span> <span>지원해주셔서 감사합니다.</span></p>
          </div>
        </div>
        <div class="support_fin_btm">
          <p class="txt1">온라인 지원이 완료되었습니다.</p>
          <p class="txt2">(주)세스코라이프케어는<span class="br"></span> 여러분과 함께 할 미래를 꿈꾸겠습니다.<br>감사합니다. </p>
        </div>
      </div>
    </div>

  </div>

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>

<%@ include file="/WEB-INF/views/front/pages/sol/join/step3-js.jsp"%>

</body>

</html>

