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
  <div class="container" id="map">
    <div class="sub_visual_cont bg_map">
      <div class="sub_title_div">
        <span class="txt1">CESCO Lifecare</span>
        <h2 class="txt2"><strong>찾아오시는 길</strong></h2>
        <p class="txt3">세스코 라이프케어는<span class="br mo"></span> 언제나 고객님의 곁에 있습니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu1">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/intro/main"><span>CESCO Lifecare</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>찾아오시는 길</span></a>
          <ul class="active">
            <li><a href="/front/intro/main"><span>CESCO Lifecare 소개</span></a></li>
          </ul>
        </li>
      </ul>
    </div>
    
    <div class="content_wrap">

      <div class="content map">
        <h3 class="tit pc">세스코 라이프케어 본사</h3>
        <div class="map_div">
          <img src="/resources/front/assets/images/_tmp/map.jpg" alt="임시 지도 이미지">
        </div>

        <h3 class="tit mo">세스코 라이프케어 본사</h3>
        <div class="map_info">
          <ul>
            <li>
              <span class="ico_m ico_m1"></span>
              <dl class="txt">
                <dt>Adress</dt>
                <dd>서울특별시 강동구 상일로 6길 67 세스코멤버스시티</dd>
              </dl>
            </li>
            <li>
              <span class="ico_m ico_m2"></span>
              <dl class="txt">
                <dt>Tell</dt>
                <dd>1588 - 1119</dd>
              </dl>
            </li>
            <li>
              <span class="ico_m ico_m3"></span>
              <dl class="txt">
                <dt>버스 이용 시</dt>
                <dd>강동첨단업무단지 상일여고 입구 정류장 하차 405m 지점<br>(도보 7분거리)</dd>
                <dd class="bus_number"><i class="ico_b1">B</i><span>370</span></dd>
                <dd>삼성엔지니어링 정류장 하차 220m 지점 (도보 4분거리)</dd>
                <dd class="bus_number"><i class="ico_b2">B</i><span>3321</span></dd>
              </dl>
            </li>
          </ul>
          
        </div>

      </div>
    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/intro/intro-js.jsp"%>
</html>

