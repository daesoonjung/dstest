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
    <div class="sub_visual_cont bg_solution_air">
      <div class="sub_title_div">
        <span class="txt1">CESCO Air Care Solution</span>
        <h2 class="txt2"><strong>CESCO 공기질<span class="br mo"></span> 안심관리 솔루션(Air)</strong></h2>
        <p class="txt3">라돈방사능은 물론 (극)초미세먼지, CO₂,<span class="br mo"></span> VOCs(냄새), 온도, 습도 등<span class="br pc"></span>다양한 공기질 진단부터 세스코 에어만의 안심 관리 솔루션까지 생활환경 속 실내공기를 안전하게 관리해 드립니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu2">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solution/air"><span>솔루션소개</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>세스코 공기질 안심관리 솔루션(Air)</span></a>
          <ul class="active">
            <li><a href="/front/solution/water"><span>세스코 수질 안심관리 솔루션(Water)</span></a></li>
            <li><a href="/front/solution/vcs"><span>세스코 바이러스케어 시스템 (VCS)</span></a></li>
            <li><a href="/front/solution/life"><span>세스코 생활환경위생 솔루션</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3>공기질 안심관리 솔루션<span class="br mo"></span>(Air Care Solution)이란?</h3>
        <p class="txt1"><b>세스코는 공기질관리 통합상황실을 운영하고 있습니다.</b><br>
          세스코 에어 공기질 안심관리 솔루션은 전문 교육을 이수한 공기질 관리 전문가가 직접 가정과 사업장을 방문하는것으로 시작됩니다.<br>
        하이테크 센서를 탑재한 세스코만의 IoT 공기질 측정을 통해 실시간으로 정확하게 공기의 질을 체크하고 정확한 진단과 분석을 통해 고객 한 분 한 분에게 꼭 필요한 맞춤 솔루션을 제공하는 서비스입니다.</p>
      </div>

      <section class="solution_info_section bg_s_air sBox">
        <img src="/resources/front/assets/images/bg/bg_s_air_m.jpg" alt="" class="img_air_care mo">
        <div class="solution_info_div">
          <p class="txt1">사람에게 유해한 공기는<span class="br mo"></span> 모두 찾아서 <em>실시간으로 알려드립니다.</em></p>
          <ul class="air_icon_div">
            <li>
              <i class="ico_air ico_air01"></i>
              <span class="txt_air">라돈 방사능 센서</span>
            </li>
            <li>
              <i class="ico_air ico_air02"></i>
              <span class="txt_air">(극)초미세먼지 센서</span>
            </li>
            <li>
              <i class="ico_air ico_air03"></i>
              <span class="txt_air">CO<small>2</small> 센서</span>
            </li>
            <li>
              <i class="ico_air ico_air04"></i>
              <span class="txt_air">VOC<small>2</small>(냄새) 센서</span>
            </li>
            <li>
              <i class="ico_air ico_air05"></i>
              <span class="txt_air">온도 센서</span>
            </li>
            <li>
              <i class="ico_air ico_air06"></i>
              <span class="txt_air">습도 센서</span>
            </li>
          </ul>
          <p class="txt3">미세먼지만 위험한 게 아닙니다. <span class="br mo"></span>땅속에서 뿜어져 나오는 1급 발암물질 라돈 방사능, 어린아이와 학생의 수면장애, 학습장애를 유발하는 CO₂,<span class="br pc"></span>
            가구나 벽지에서 뿜어져 나와 아토피와 기형아를 유발하는 VOCs 등 눈으로 보이지 않는 공기 중에는 미세먼지보다 위험한 유해물질들이 더 많이 있습니다. <br>
          세스코 Air 공기청정기는 공기 중 위험 물질을 감지할 수 있는 6개의 초정밀 센서가 탑재되어 있습니다.</p>
        </div>
      </section>

      <section class="solution_card_section">
        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_air_card01.jpg" alt="" class="s_card_img fL pc">
          <img src="/resources/front/assets/images/img_s_air_card01_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text fL">
            <div class="div">
              <p class="tit">당신이 잠든 사이에도 세스코 에어는 <span class="br pc"></span>당신의 생명을 위협하는 유해 공기와 싸우겠습니다.</p>
              <p class="txt">세스코에어 공기청정기는 혼자 일하지 않습니다.<br>세스코 통합상황실과 실시간으로 연결되어 고객님 주변의 공기질 정보를 전송받아 진단 분석하고, 매우 위험한 공기질 상황이 반복 지속되면 세스코 공기질 전문가가 긴급출동 합니다.</p>
              <p class="txt_small3 mt15">IoT 사용 고객에 한함</p> 
              <p class="txt_small3">고객님의 스마트폰 사양 및 인터넷 환경에 따라 IoT 기능 지원이 어려울 수 있으니, <span class="br pc"></span>구매 전 호환 가능 여부를 확인해 주시기 바랍니다.</p> 
              </p> 
            </div> 
          </div>
        </div>

        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_air_card02.jpg" alt="" class="s_card_img fR pc">
          <img src="/resources/front/assets/images/img_s_air_card02_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text fR">
            <div class="div">
              <p class="tit">24시간<br>최적의 환기타이밍을 알려드립니다.</p>
              <p class="txt">실내공기질 LED 표시등을 통해 보이는 색상 변화를 통해 실내 공기질 뿐만 아니라 <span class="br pc"></span>
                실외 공기질까지 직관적으로 확인할 수 있습니다.<br>
              디스플레이에서는 세스코만의 통합지수를 확인할 수 있어 공기질 상태를 확인하여 <span class="br pc"></span>
            가장 효과적인 공기청정기 작동 타이밍과 환기 타이밍을 24시간 알려드립니다.</p> 
            </div>
          </div>
        </div>

        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_air_card03.jpg" alt="" class="s_card_img fL pc">
          <img src="/resources/front/assets/images/img_s_air_card03_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text fL">
            <div class="div">
              <p class="tit">모바일 IoT를 통해 어디서나<br>공기청정기를 통제할 수 있습니다.</p>
              <p class="txt">당신이 머무는 집안 곳곳은 물론, 우리 아이가 혼자 있는 집에도, 사랑하는 부모님이 계시는 <span class="br pc"></span>
              고향댁에도 IoT 기능이 탑재된 세스코 공기청정기는 오염 수준에 따라 스스로 작동하고<span class="br pc"></span> 
              세스코 App을 통해 여러 기기를 동시에 원격제어할 수 있습니다.<br>
              우리집 공기청정기가 수집한 데이터와 세스코 통합상황실에서 수집된 데이터가 모아져 <span class="br pc"></span>
              긴급상황이 생겼을 때에는 휴대폰으로 알림이 전송되고, 일간, 주간, 월간 공기질 패턴을 진단하여 <span class="br pc"></span>
              당신의 생활에 꼭 맞는 맞춤형 솔루션을 제공해드립니다.</p>
              <p class="txt_small3 mt15"><span>고객님의 스마트폰 사양 및 인터넷 환경에 따라 IoT 기능 지원이 어려울 수 있으니, 구매 전 호환 가능여부를<span class="br pc"></span> 확인해 주시기 바랍니다.</span></p> 
            </div> 
          </div>
        </div>

        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_air_card04.jpg" alt="" class="s_card_img fR pc">
          <img src="/resources/front/assets/images/img_s_air_card04_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text fR">
           <div class="div">
              <p class="tit">정기방문시 <br>세스코만의 리포트를 제공해드립니다.</p>
              <p class="txt">해당 리포트는 수천 시간동안 고객님 생활반경의 공기질 데이터를 분석한 자료로써 <span class="br pc"></span> 
              미처 알지 못했던 생활패턴과 공기질을 망치는 잘못된 습관을 파악하는 귀중한 자료가 될 것입니다.<br>
              알레르기, 유해가스, 음식 조리 중 발생되는 연기나 냄새까지.  고객님의 생활 환경에 따른 <span class="br pc"></span> 
              맞춤형 필터를 제공하고,최고 수준의 헤파필터를 적용하여 최상의 공기를 만들겠습니다.</p>
              <p class="txt_small3 mt15">정기 방문 진단 서비스 | 정밀 센서 점검/필터 교체 서비스/정기 리포트 제공 및 결과 분석 보고서</p> 
            </div> 
          </div>
        </div>
      </section>
      <section class="solution_system_section">
        <div class="solution_system_cont">
          <h4 class="tit">극 초미세먼지를 <em>99.99% 제거</em>하는<span class="br mo"></span>다중 필터 시스템</h4>
          <p class="txt">창문을 닫아도 들어오는 초미세먼지부터<span class="br mo"></span>  강력한 냄새제거까지. 깐깐하게 청정합니다.</p>
          <img src="/resources/front/assets/images/img_solution_air_system_m.jpg" alt="다중 필터 시스템 관련 이미지" class="mo">
          <div class="filter_div">
            <dl>
              <dt class="bg-c1">헤파 필터</dt>
              <dd>극초미세먼지부터 유해물질까지<br>제거하는 고성능 필터</dd>
            </dl>
            <dl>
              <dt class="bg-c2">탈취 필터</dt>
              <dd>활성탄 성분을 이용하여<br>악취, 음식냄새 등을 제거</dd>
            </dl>
            <dl class="mlx">
              <dt class="bg-c3">맞춤형 필터</dt>
              <dd>오일미스트, 유해가스, <br>알레르겐 필터 중 택1</dd>
            </dl>
            <dl>
              <dt class="bg-c4">극세사망 프리필터</dt>
              <dd>큰 먼지와 머리카락,<br>애완동물의 털 등을 집진</dd>
            </dl>
          </div>
          <div class="text_div">
            <p class="txt_small3">각 필터는 고객 사용 환경에 따라 교체주기가 달라질 수 있습니다.</p>
            <p class="txt_small3">한국건설생활환경시험연구원 0.3 μm 이하 극초미세먼지 감소율 실험결과 기준 (실험환경:30.2m² 챔버, 20분 이상 가동)<span class="br mo"></span> (실험실 측정 기준으로 실사용 환경에서는 달라질 수 있습니다.)</p>
          </div>
        </div>

      </section>

      <section class="solution_card_section">
        <div class="s_card">
          <img src="/resources/front/assets/images/img_s_air_card05.jpg" alt="" class="s_card_img fR pc">
          <img src="/resources/front/assets/images/img_s_air_card05_m.jpg" alt="" class="s_card_img mo">
          <div class="s_card_text fR">
            <div class="div">
              <p class="tit">위험한 실내공기는<span class="br pc"></span>프레쉬팩으로 강제 환기를 도와드립니다.</p>
              <p class="txt">강력한 듀얼팬을 장착한 세스코 공기청정기에<span class="br mo"></span> 프레쉬팩을 장착하면 인공지능(AI) 시스템이 <br>스스로 작동하여, 정화된 외부 공기를 강제 주입하고, <span class="br mo"></span>오염된 실내 공기는 몰아냅니다.</p>
              <p class="txt_small3 mt15 inlineB">프래쉬 팩(강제환기장치) 옵션은 일부 제품에만 적용 가능합니다. </p> <!-- 수정 -->
              <p class="txt_small3 inlineB">설치비는 제품구입비와 별도입니다.</p>  
            </div> 
          </div>
        </div>
      </section>

    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/solution/air-js.jsp"%>
</body>

</html>

