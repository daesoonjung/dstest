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
  <div class="container" id="solution">
    <div class="sub_visual_cont bg_solution_water">
      <div class="sub_title_div">
        <span class="txt1">CESCO Air Care Solution</span>
        <h2 class="txt2"><strong>CESCO 수질 안심관리 <span class="br mo"></span>솔루션(Water)</strong></h2>
        <p class="txt3">매일 먹고 마시는 물. <span class="br mo"></span>우리의 일상에 세스코 과학을 더한 세스코 워터의 시작.<br>세스코만의 과학으로 더욱 안전하고, <span class="br mo"></span>안심할 수 있는 물을 제공하는 것이 세스코 워터 <span class="br mo"></span>안심관리 솔루션 시작의 이유입니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu2">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solution/air"><span>솔루션소개</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>세스코 수질 안심관리 솔루션(Water)</span></a>
          <ul class="active">
            <li><a href="/front/solution/air"><span>세스코 공기질 안심관리 솔루션(Air)</span></a></li>
            <li><a href="/front/solution/vcs"><span>세스코 바이러스케어 시스템 (VCS)</span></a></li>
            <li><a href="/front/solution/life"><span>세스코 생활환경위생 솔루션</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3>수질 안심관리 솔루션<span class="br mo"></span>(Water Care Solution)이란?</h3>
        <p class="txt1"><b>매일 먹고 마시는 물, 우리의 일상에<span class="br mo"></span> 세스코 과학을 더한 세스코 워터의 시작. </b><br>     
        해충 없는 청정구역부터 식품의 안전지대, 공기질 안심까지. <span class="br mo"></span>매일 숨 쉬고, 먹고, 마시는 환경 위생을 살피고 있는 세스코가 더욱 믿고 안심할 수 있는 세상을 만들기 위해 시작한 일.  <br>     
        기본 정수 성능에 중금속 및 박테리아와 바이러스까지 제거하는 세스코 워터 시스템은 국민의 건강을 위해 먹는 물 뿐 아니라 조리하는 물 까지 안전한 물을 공급하겠다는 사명감으로 수질 안심 솔루션을 만들어 갑니다. <br>     
        세스코만의 과학으로 더욱 안전하고, 안심할 수 있는 물을 제공하는 것이 세스코 워터 안심관리 솔루션 시작의 이유입니다.</p>
      </div>

      <section class="solution_info_section bg_s_water">
        <div class="solution_info_div water">
          <p class="txt1">세스코 워터 수질 관리 솔루션으로<br><em>세스코 워터만의 3가지 약속을</em><span class="br mo"></span> 드리겠습니다.</p> <!-- 수정 -->
          <ul class="water_icon_div">
            <li>
              <i class="ico_water ico_water01"></i>
              <span class="txt_water">생활의 <span class="br mo"></span>가치향상</span>
            </li>
            <li>
              <i class="ico_water ico_water02"></i>
              <span class="txt_water">안전한 물을 만드는 기술</span>
            </li>
            <li>
              <i class="ico_water ico_water03"></i>
              <span class="txt_water">과학적인 수질관리</span>
            </li>
          </ul>
          <img src="/resources/front/assets/images/bg/bg_s_water_m.jpg" alt="" class="mo img_water">
        </div> 
      </section>
      <section class="solution_service_section">
        <div class="care_service_cont">
          <div class="care_service_top">
            <div class="tit_div fR">
              <h4 class="tit">세스코 워터만의 <span class="br mo"></span>과학적인 관리 서비스</h4>
              <p>CESCO Science Care Service는 세스코만의 전문적인 교육을 수료한 전문가가 세스코 과학으로 <span class="br pc"></span>설계된 전문적인 관리 도구로 고객에게 체계적인 서비스를 제공하는 세스코 렌탈 관리 전문 서비스 브랜드입니다.</p>
            </div>
            <div class="img_div fR">
              <img src="/resources/front/assets/images/txt_science_care.png" alt="세스코 사이언스 케어">
            </div>
          </div>

          <ul class="care_service">
            <li>
              <span>수질관리 전문가</span>
              <img src="/resources/front/assets/images/img_water_care1.png" alt="수질관리 전문가 관련 이미지">
            </li>
            <li>
              <span>과학적인 관리도구</span><!-- 수정 -->
              <img src="/resources/front/assets/images/img_water_care2.png" alt="과학적 관리도구 관련 이미지">
            </li>
            <li>
              <span>세스케어 워터존 케어 서비스</span>
              <img src="/resources/front/assets/images/img_water_care3.png" alt="세스케어 워터존 케어 서비스 관련 이미지">
            </li>
          </ul>
          
          <div class="tit_div txt_c">
            <h4 class="tit">과학적인 관리 도구</h4>
            <p>세스코 과학으로 설계된 전문적인 도구로 관리합니다.</p>
          </div>

          <ul class="care_service_card">
            <li class="s_card">
              <div class="s_card_text">
                <h5 class="tit">세스코 워터 전해수 살균 서비스</h5>
                <p class="txt">물이 흐르는 유로관을 전해수 살균수로 관리하며, 혹시라도 있을 수 있는 오염을 제거하여 정수된 물이 재 오염되지 않도록 합니다.</p>
              </div>
              <img src="/resources/front/assets/images/img_s_water_card01.jpg" alt="" class="card_img">
            </li>
            <li class="s_card">
              <div class="s_card_text">
                <h5 class="tit">세스코 워터 정수기 전용 서비스 팩</h5>
                <p class="txt">한국 국가 인증기관(FITI 시험연구원)을 통해 
                검증된 구성품으로 1회 사용 후 폐기하여 더욱 위생적입니다.</p>
              </div>
              <img src="/resources/front/assets/images/img_s_water_card02.jpg" alt="" class="card_img">
            </li>
            <li class="s_card">
              <div class="s_card_text">
                <h5 class="tit">세스코 워터 UV-C 살균서비스 가방</h5>
                <p class="txt">서비스 제공을 위한 도구들의 위생적인 보관을 위해 전용 가방을 사용하며, UV-C 살균 램프가 가동하여 도구들을 보다 더 청결하게 관리합니다.</p>
              </div>
              <img src="/resources/front/assets/images/img_s_water_card03.jpg" alt="" class="card_img">
            </li>
          </ul>
        </div>
      </section>

      <section class="waterzone_care_service_section sBox">
        <img src="/resources/front/assets/images/bg/bg_waterzone_care_service_m.jpg" alt="" class="img_waterzone_care mo">
        <h3 class="tit">세스케어 워터존 케어 서비스</h3>
        <p class="txt">세스코 과학으로 개발한 ‘곡물발효 살균소독제’로 정수기 및 주방을 살균하고 <span class="br pc"></span>악취와 이물질 제거에 탁월한 기능을 발휘하는 세스케어 ‘배수구클리너’로 정수기의 주변 환경까지 케어해 드립니다.</p>
        <div class="care_div">
          <dl>
            <dt class="bg-c5">세스케어 배수구 클리너</dt>
            <dd>탁월한 배수구 세정 및 살균력</dd>
          </dl>
          <dl>
            <dt class="bg-c6">세스케어 곡물발효 살균소독제</dt>
            <dd>곡물발효 에탄올 함유하여 표면 살균 관리</dd>
          </dl>
        </div>

      </section>

      <section class="care_card_section">
        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_water_card04.jpg" alt="" class="s_card_img fR pc">
          <img src="/resources/front/assets/images/img_s_water_card04_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text card_text fR">
            <div class="div">
              <p class="tit">세스케어 배수구클리너</p>
              <p class="tit2">탁월한 배수구 세정 및 살균력</p>
              <p class="txt">배수구 내부의 유기물을 녹이는 강력한 <span class="br pc"></span>
              발포력과 세정력을 가진 세정제로<span class="br pc"></span> 
              물에 빠르게 녹아 배수구 악취와 세균의 <span class="br pc"></span>
              원인을 효과적으로 제거합니다.</p>
              </p> 
            </div> 
          </div>
        </div>
        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_water_card05.jpg" alt="" class="s_card_img fR pc">
          <img src="/resources/front/assets/images/img_s_water_card05_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text card_text fR">
            <div class="div">
              <p class="tit">세스케어 곡물발효 살균소독제</p>
              <p class="tit2">곡물과 효모로 생성된 에탄올이 함유되어 모든 기물 표면 살균 관리</p>
              <p class="txt">합성 에탄올 성분이 아닌 곡물과 효모로 생성된 에탄올과 감초추출물로 만들어져 식기류, 어린이용품 등 모든 기물 표면에 직접 분무가 가능합니다. 
              빠른 휘발성과 살균 효과로 자연건조 후
              추가 헹굼 없이 정수기는 물론 정수기
              주변까지 살균해드립니다. </p>
              <p class="txt_small3 mt15">식약처 신고 [식품첨가물 혼합제제와 기구 등의 살균 소독제]</p> <!-- 수정 -->
              <p class="txt_small3">환경부 신고 [안전확인대상 생활화학제품 살균제]</p> 
              </p> 
            </div> 
          </div>
        </div>
      </section>


    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/solution/water-js.jsp"%>
</body>

</html>

