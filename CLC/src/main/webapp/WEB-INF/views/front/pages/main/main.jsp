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
  <script type="text/javascript" src="/resources/front/assets/plugins/owlcarousel/owl.carousel.min.js"></script>
</head>
<body id="mainBody">
<%@ include file="/WEB-INF/views/front/include/header.jsp"%>
<div class="main_container" id="fullpage">
  <section class="section" id="section1">
    <div class="main_content">
      <h2 class="hide">CESCO Lifecare</h2>
    
      <div class="text_div">
        <span class="txt1">건강하고 쾌적한 Life Style의 시작</span>
        <strong class="txt2">CESCO Lifecare</strong>
        <p class="txt3 pc">세스코의 과학으로 생활공간의 위해요소를 체계적으로 파악하여 <br>고객님의 Life Style에 맞는 쾌적한 환경을 약속합니다.</p>
        <p class="txt3 mo">세스코의 과학으로 생활공간의 위해요소를<br> 체계적으로 파악하여 고객님의 Life Style에 맞는<br> 쾌적한 환경을 약속합니다.</p>
        <a href="#" class="btn_go"><span>회사소개 바로가기</span></a>
      </div>
      <img class="img_1" src="/resources/front/assets/images/img_section1.jpg" class="pc"></img>
      <img class="img_1" src="/resources/front/assets/images/img_section1_m.jpg" class="mo"></img>
      <span class="bg_sec1_line pc">CESCO Lifecare</span>

      <a class="scroll_down pc" href="#page2">Scroll_down</a>
    </div>
  </section>
  <section class="section" id="section2">
    <div class="main_content">
      <div class="sec_tit">
        <h2>CESCO Lifecare 주요 솔루션</h2>
        <p class="pc">CESCO Lifecare의 주요 솔루션을 소개합니다</p>
      </div>
      <div class="main_solution_wrap">
        <!-- <div class="slides_numbers mo">
          <span class="active">01</span> / <span class="total"></span>
        </div> -->

        <!-- 수정 -->
        <div class="main_solution_cont">
          <div class="solution_div bg_1">
            <img src="/resources/front/assets/images/main_solution_bg1.jpg">
            <div class="div">
              <span class="ico_s ico_s1"></span>
              <strong class="tit">Air Solution</strong>
              <span class="txt">세스코 공기질 안심관리 솔루션</span>
              <a href="#" class="btn_view"><span>자세히 보기</span></a>
            </div>
            <div class="num">
              <span class="active">01</span> / <span class="total">04</span>
            </div>
          </div>
          <div class="solution_div bg_2">
            <img src="/resources/front/assets/images/main_solution_bg2.jpg">
            <div class="div">
              <span class="ico_s ico_s2"></span>
              <strong class="tit">Water Solution</strong>
              <span class="txt">세스코 수질 안심관리 솔루션</span>
              <a href="#" class="btn_view"><span>자세히 보기</span></a>
            </div>
            <div class="num">
              <span class="active">02</span> / <span class="total">04</span>
            </div>
          </div>
          <div class="solution_div bg_3">
            <img src="/resources/front/assets/images/main_solution_bg3.jpg">
            <div class="div">
              <span class="ico_s ico_s3"></span>
              <strong class="tit">Viruscare System</strong>
              <span class="txt">세스코 바이러스케어 솔루션</span>
              <a href="#" class="btn_view"><span>자세히 보기</span></a>
            </div>
            <div class="num">
              <span class="active">03</span> / <span class="total">04</span>
            </div>
          </div>
          <div class="solution_div bg_4">
            <img src="/resources/front/assets/images/main_solution_bg4.jpg">
            <div class="div">
              <span class="ico_s ico_s4"></span>
              <strong class="tit">Cescare Solution</strong>
              <span class="txt">세스코 생활환경위생 솔루션</span>
              <a href="#" class="btn_view"><span>자세히 보기</span></a>
            </div>
            <div class="num">
              <span class="active">04</span> / <span class="total">04</span>
            </div>
          </div>
        </div>
        <!-- //수정 -->
        
      </div>
    </div>
  </section>
  <section class="section" id="section3">
    <div class="main_content">
      <div class="sec_tit">
        <h2>CESCO 과학으로 관리합니다</h2>
        <p class="pc">CESCO Lifecare는 세스코의 과학으로 건강한 삶을 만들어갑니다</p>
      </div>
      <div class="sec_sub_tit">
        <span>CESCO Air</span>
        <p>공기질 무료진단 서비스</p>
      </div>
      <div class="card_slider_wrap">
        <div class="card_slide slide_01">
          <div class="card_st1">
            <ul class="service_step">
              <li class="on"><span>01</span> <span class="pc">상담신청</span></li>
              <li><span>02</span> <span class="pc">방문상담</span></li>
              <li><span>03</span> <span class="pc">솔루션제공</span></li>
            </ul>
            <strong class="service_step_number">01</strong>
            <strong class="service_step_title">상담 신청</strong>
            <p class="service_step_txt">고객센터(1588-1119) 또는 홈페이지<i></i>(www.cesco.co.kr)에서  무료방문상담 신청하세요!</p>
          </div>
          <div class="card_st2">
            <div class="bg_circle">
              <p class="txt1"><b>1급 발암물질 라돈, <br>(극)초미세먼지, CO<small>2</small>,등</b><br>공기질 유해요소 진단</p>  <!-- 수정 -->
            </div>
            <p class="txt2 pc">우리집 건강한 호흡을 위해<br>공기질 유해요소 정확한 진단 받으세요!</p>
            <a href="#" class="btn_go"><span><b>공기질 무료진단</b> 신청하기</span></a>
          </div>
        </div>

        <div class="card_slide slide_02">
          <div class="card_st1">
            <ul class="service_step">
              <li><span>01</span> <span class="pc">상담신청</span></li>
              <li class="on"><span>02</span> <span class="pc">방문상담</span></li>
              <li><span>03</span> <span class="pc">솔루션제공</span></li>
            </ul>
            <strong class="service_step_number">02</strong>
            <strong class="service_step_title">방문 상담</strong>
            <p class="service_step_txt">세스코 전문가가 방문하여 무료진단해 드립니다.</p>
          </div>
          <div class="card_st2">
            <div class="bg_circle">
              <p class="txt1"><b>1급 발암물질 라돈, <br>(극)초미세먼지, CO<small>2</small>,등</b><br>공기질 유해요소 진단</p> <!-- 수정 -->
            </div>
            <p class="txt2 pc">우리집 건강한 호흡을 위해<br>공기질 유해요소 정확한 진단 받으세요!</p>
            <a href="#" class="btn_go"><span>공기질 무료진단 신청하기</span></a>
          </div>
        </div>

        <div class="card_slide slide_03">
          <div class="card_st1">
            <ul class="service_step">
              <li><span>01</span> <span class="pc">상담신청</span></li>
              <li><span>02</span> <span class="pc">방문상담</span></li>
              <li class="on"><span>03</span> <span class="pc">솔루션제공</span></li>
            </ul>
            <strong class="service_step_number">03</strong>
            <strong class="service_step_title">솔루션 제공</strong>
            <p class="service_step_txt">진단 결과를 분석하여 맞춤 솔루션을 제공합니다.</p>
          </div>
          <div class="card_st2">
            <div class="bg_circle">
              <p class="txt1"><b>1급 발암물질 라돈, <br>(극)초미세먼지, CO<small>2</small>,등</b><br>공기질 유해요소 진단</p> <!-- 수정 -->
            </div>
            <p class="txt2 pc">우리집 건강한 호흡을 위해<br>공기질 유해요소 정확한 진단 받으세요!</p>
            <a href="#" class="btn_go"><span>공기질 무료진단 신청하기</span></a>
          </div>
        </div>
      </div>
    </div>


  </section>
  <section class="section" id="section4">
    <div class="main_content">
      <div class="section4_wrap">
        <div class="sec_tit">
          <h2>CESCO Lifecare SOL플래너</h2>
          <p class="pc">SOL플래너와 함께 CESCO제품을 더욱 편리하고 안전하게 사용해보세요</p>
        </div>

        <div class="planner_box_wrap">
          <div class="planner_box1">
            <div class="text_div">
              <span class="txt1">Science care On Life</span>
              <span class="txt2"><em>SOL 플래너</em>는,</span>
              <p class="txt3">세스코 라이프케어 제품을 더욱 편리하고 안전하게 사용하실 수 있도록
              정기적으로 방문하여 ‘세스코 Science care’ 서비스를 제공하며,
              <span>고객 생활공간의 환경위생 관리에 대한 전문적인 가이드를 제공합니다.</span></p>
            </div>
          </div>
          <div class="planner_box2"></div>
        </div>

        <span class="bg_sec4_text pc">CESCO Lifecare <br>SOL플래너</span>
        <span class="bg_sec4_line pc">CESCO Lifecare SOL플래너</span>
      </div>
    </div>
  </section>

  <section class="section fp-auto-height" id="section5">
    <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
  </section>

</div>
<%@ include file="/WEB-INF/views/front/pages/main/main-js.jsp"%>
</body>

</html>

