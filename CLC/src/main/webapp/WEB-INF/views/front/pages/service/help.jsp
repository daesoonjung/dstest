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
  <div class="container" id="service">
    <div class="sub_visual_cont bg_service">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>고객지원</strong></h2>
        <p class="txt3"><span>건강한 우리집을 위해 최선을 다하겠습니다.<br></span> <span>무엇이든 물어보세요!</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1 last"><a href="#" class="more"><span>고객지원</span></a>
          <ul class="active">
            <li><a href="/front/intro/main" class="more"><span>CESCO Lifecare</span></a></li>
            <li><a href="/front/solution/air" class="more"><span>솔루션소개</span></a></li>
            <li><a href="/front/solplanner/intro" class="more"><span>SOL플래너</span></a></li>
            <li><a href="/front/board/notice"><span>공지사항</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3><span>CESCO Lifecare의 솔루션과</span><br><span>관련된 다양한 궁금증을</span> <span>해결해 드립니다!</span></h3>
      </div>
      <div class="content service">
        <div class="service_box box1 sBox">
          <img src="/resources/front/assets/images/bg/bg_serviece_1_m.png" alt="" class="mo">
          <div class="div">
            <p>무료 방문 공기질 측정 서비스<br>고객님의 생활환경에 직접 방문하여<br>고객님 주변의 공기질을 측정해 드립니다!</p>
            <a href="#" class="btn_link"><span>공기질 측정 서비스 신청 바로가기</span></a>
          </div>
        </div>
        <div class="service_box_wrap">
          <div class="service_box box2 sBox">
            <img src="/resources/front/assets/images/bg/bg_serviece_2_m.png" alt="" class="mo">
            <div class="div">
              <p>CESCO FAQ/Q&A 를 통해<br>고객님의 궁금증을 빠르게<br>해결해드리겠습니다.</p>
              <a href="#" class="btn_link"><span>CESCO FAQ/Q&A 바로가기</span></a>
            </div>
          </div>
          <div class="service_box box3 sBox">
            <img src="/resources/front/assets/images/bg/bg_serviece_3_m.png" alt="" class="mo">
            <div class="div">
              <p>이용 중 불편하신 점이 있으신가요?<br>고객님의 불편사항을<br>빠르게 처리해 드리겠습니다.</p>
              <a href="#" class="btn_link"><span>CESCO 고객의 소리 바로가기</span></a>
            </div>
          </div>
        </div>
        <div class="service_box box4 sBox">
          <img src="/resources/front/assets/images/bg/bg_serviece_4_m.png" alt="" class="mo">
          <div class="div2">
            <div class="service_info">
              <p>도움이 필요하신가요?<br>언제든 친절한 답변으로<br>궁금증을 해결해드리겠습니다.</p>
            </div>
            <div class="service_info">
              <p class="txt1">고객센터 1588-1119</p>
              <p class="txt2">상담시간<br>평일 08:30~18:00,<br>토요일 08:30~15:00<br>일요일/공휴일 휴무</p>
            </div>
          </div>
        </div>

       
      </div>
    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/service/help-js.jsp"%>
</body>

</html>

