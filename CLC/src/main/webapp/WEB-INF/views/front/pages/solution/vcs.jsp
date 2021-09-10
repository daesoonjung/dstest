
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
    <div class="sub_visual_cont bg_solution_vcs">
      <div class="sub_title_div">
        <span class="txt1">CESCO Viruscare System</span>
        <h2 class="txt2"><strong>CESCO <span class="br mo"></span>바이러스케어 시스템<span class="br mo"></span>(VCS)</strong></h2>
        <p class="txt3">호흡기와 손을 통해 감염되는 바이러스 &middot; 박테리아 질환을 효과적으로 예방할 수 있는 안심 솔루션으로서<span class="br pc"></span> 탈취, 유해세균 및 바이러스 제거로<span class="br mo"></span> 쾌적한 환경을 지켜드립니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu2">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solution/air"><span>솔루션소개</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>세스코 바이러스케어 시스템 (VCS)</span></a>
          <ul class="active">
            <li><a href="/front/solution/air"><span>세스코 공기질 안심관리 솔루션(Air)</span></a></li>
            <li><a href="/front/solution/water"><span>세스코 수질 안심관리 솔루션(Water)</span></a></li>
            <li><a href="/front/solution/life"><span>세스코 생활환경위생 솔루션</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3>바이러스케어 시스템<span class="br mo"></span>(Viruscare System)이란?</h3>
        <p class="txt1"><b>메르스, 신종플루, 사스, 독감, 코로나 등<span class="br mo"></span> 바이러스와 박테리아에 대처하는 세스코만의 가장<span class="br mo"></span> 과학적이고 체계적인 시스템을 말합니다. </b><br>세스코 바이러스케어 시스템은 항균력과 안전성이 검증된 약제를 사용하여 고객님의 생활반경을 위생적이고 안전하게 유지합니다.</p>
      </div>

      <section class="solution_info_section bg_s_vcs sBox">
        <img src="/resources/front/assets/images/bg/bg_s_vcs_m.jpg" alt="" class="img_vcs mo">
        <div class="solution_info_div vcs">
          <h4 class="txt1">보이지 않는 위혐 - 바이러스 & 박테리아</h4>
          <p class="txt2">감염자가 기침이나 재채기를 하는 순간,<span class="br mo"></span> 입 밖으로 나온 <em>비말의 긴 여행</em>이 시작됩니다</p>
          <ul class="vcs_icon_div">
            <li>
              <i class="ico_vcs ico_vcs01"></i>
              <span class="txt_vcs">감염자 재채기 시</span>
              <p class="txt_vcs2">5분 안에 약 150명 감염 가능<br> 재채기 시 내뿜는 침방울<br> 약 10만개</p>
            </li>
            <li>
              <i class="ico_vcs ico_vcs02"></i>
              <span class="txt_vcs">변기 물 내릴 시</span>
              <p class="txt_vcs2">세균 수 억 마리가<br> 최고 반경 6m까지 확산</p>
            </li>
            <li>
              <i class="ico_vcs ico_vcs03"></i>
              <span class="txt_vcs">오염된 손잡이 접촉 시</span>
              <p class="txt_vcs2">많은 사람들의 손 접촉이<br> 이루어지는 손잡이 등으로<br> 인한 전염</p>
            </li>
            <li>
              <i class="ico_vcs ico_vcs04"></i>
              <span class="txt_vcs">오염된 비누 사용 시</span>
              <p class="txt_vcs2">공기 중 부유하던 바이러스가<br> 고체형 혹은 리필형 액상비누에<br> 유입되어 사용 시 교차오염</p>
            </li>
          </ul>
        </div>
      </section>

      <section class="vcs_system_section">
        <h4 class="tit1">
          <strong>바이러스 예방 관리 시스템</strong>
          <span>바이러스 및 세균 <em>상시</em> 예방 관리</span>
        </h4>

        <h5 class="tit2">1. 오염된 공기에 대한 24시간 <span class="br mo"></span>공기 관리 시스템</h5>
        <p class="txt">사람의 기침 한 번에, 침방울이 사방에 튀고<span class="br mo"></span> 에어로졸화되어 바이러스가 빠르게 전파될 수 있습니다.<br>
        사람이 수시로 드나드는 공간에는<span class="br mo"></span> 24시간 공기 관리 시스템으로 상시 관리가 필요합니다.<br>
        세스코의 3가지 상시 공기 바이러스 케어 시스템을 소개합니다.</p>

        <div class="s_card">
          <div class="fL posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card01.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card01_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p class="w90">오염된 공기를 흡입하여 살균하는<br> 세스코 UV 파워 공기살균기</p>
            </div>
          </div>
          <div class="s_card_text fL">
            <div class="div">
              <p class="tit">UV 파워 공기살균기</p>
              <p class="txt">UV 파워 공기살균기는 오염된 공기를 흡입하여 99% 살균력의 UV-C 램프로 정화한 살균 공기를 내보냅니다. <br>
              흡입된 공기는 카본 필터로 정화 ▶ 강력한 UV-C 램프를 통과한 살균된 공기가 배출되는 방식으로 공기 중 세균과 바이러스를 효과적으로 제어하여 24시간 공기를 살균합니다.</p>
              <p class="txt_small3 mt15">고려대학교 의과대학 바이러스병연구소와 공동연구, 880L 챔버에서 30분 가동 조건, 코로나19,  <br>
              인플루엔자(H1N1) 바이러스 99.9% 이상 살균 (항바이러스 효능 분석 연구결과)</p> 
              <p class="txt_small3">공인시험기관(KTL) 시험평가, 60m3 대형 챔버에서, 30분(바이러스), 1시간(세균) 가동 조건, 박테리오파지 바이러스와    
              표피포도상구균을 70~80% 이상 살균 (시험성적서)</p> 
              <p class="txt_small4">제한된 조건에서 진행된 실험으로 실제 환경에서의 살균율은 사용 환경(공간 크기, 공기 유입량 등)에 따라 다를 수 있습니다.</p> 
              <p class="txt_small5 mt15"><span>관련 장소 | </span> <span>병원, 진료실, 입원실, 식품취급장소, 백화점, 영화관, 회의실, 피트니스, 요양시설, 산후조리원, 유치원 등</span></p> 
            </div> 
          </div>
        </div>

        <div class="s_card">
          <div class="fR posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card02.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card02_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p>자동분사 공기방향탈취기<br>세스코 에어제닉</p>
            </div>
          </div>
          <div class="s_card_text fR">
            <div class="div">
              <p class="tit">에어제닉</p>
              <p class="txt">환경부 신고를 완료한 '에어제닉'은 강력한 탈취력 및 발향력을 갖춘 자동분사<br>
                공기방향탈취기로써 프리미엄 디자인, 다양한 향기 라인업, 분사 조절 기능을 통해<br> 쾌적한 실내 공간 유지에 도움을 드립니다.</p>
              <p class="txt_small3 mt15">환경부 신고 완료한 자동분사 공기방향탈취기</p> 
              <p class="txt_small3">친환경 인증 향을 포함한 다양한 향기 - 환경유해물질 성분 미포함, 안전성 검증</p> 
              <p class="txt_small3">악취 유발 주요 발생가스 저감 효과 (한국화학융합시험연구원 공인시험 완료)</p> 
              <p class="txt_small3">공간에 어울리는 다양한 향기 선택 가능 - 발향력 우수한 고급향료 16종</p> 
              <p class="txt_small3">친환경 인증향(프리제닉, 스위트솝, 플로럴, 프레시가든 향) 4종</p> 
              <p class="txt_small3">벽면, 스탠드 등 다양한 실내 공간에 설치 가능</p> 
              <p class="txt_small3">저소음 및 사용자 편의에 따라 분사량 및 분사주기 3단계 조절</p> 
              <p class="txt_small3">설치환경 디자인을 고려한 색상(화이트, 블랙) - 2012 대한민국 굿디자인 어워드 수상 </p> 
              <p class="txt_small5 mt15"><span>관련 장소 | </span> <span>화장실, 복도 등</span></p> 
            </div>
          </div>
        </div>

        <h5 class="tit2">2. 오염된 기물의 표면 살균 관리</h5>
        <p class="txt">다수의 접촉이 발생하는 물건의 표면은 수시로 살균 소독이 필요합니다. 곡물, 과일 등과 효모로 인해 생성된<span class="br pc"></span> 천연 에탄올을 함유한 세스케어 곡물발효 살균소독제는 기물 표면의 세균을 안전하게  제거해줍니다.</p>

        <div class="s_card">
          <div class="fL posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card03.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card03_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p>세균 비산 위험 예방<br>자동변기세정살균기<br>세스코 프레쉬제닉</p>
            </div>
          </div>
          <div class="s_card_text fL">
            <div class="div">
              <p class="tit">프레쉬제닉</p>
              <p class="txt">세스코 프레쉬제닉은 강력한 세정력과 살균력으로 변기의 오염 물질을 제거합니다.<br>
                물 내림 시 감염자 대변으로 인한 세균 비산 위험을 예방하기 위해 강력한 변기 표면 세정과 탈취,<br>
              살균력으로 악취, 스케일 제거는 물론 악취를 유발하는 주요 발생 가스까지 제거하는 자동 변기세정살균기인 '프레쉬제닉' 을 설치하는 것이 필요합니다.</p>
              <p class="txt_small5 mt15"><span>관련 장소 | </span> <span>화장실</span></p> 
            </div> 
          </div>
        </div>

        <div class="s_card">
          <div class="fR posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card04.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card04_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p>곡물 효모로 생성된<br>에탄올을 함유한 세스케어<br> 곡물발효 살균소독제</p>
            </div>
          </div>
          <div class="s_card_text fR">
            <div class="div">
              <p class="tit">세스케어 곡물발효 살균소독제</p>
              <p class="txt">다수의 접촉이 발생하는 물건의 표면에 남아있는 감염원의 전파 예방을 위해 <span class="br pc"></span>수시로 살균 소독이 필요합니다.<br>
              합성 에탄올 성분이 아닌 곡물 효모로 생성된 에탄올을 함유한 세스케어 곡물발효 <span class="br pc"></span>살균소독제(주정살균소독제)는 빠른 휘발성과 살균효과로 자연건조 후, 추가 헹굼 <span class="br pc"></span>없이 기물의 표면 세균을 안전하게 제거합니다.</p>
              <p class="txt_small3 mt15">식약처 신고 <span class="br mo"></span>[식품첨가물 혼합제제와 기구 등의 살균소독제]</p> 
              <p class="txt_small3">환경부 신고 <span class="br mo"></span>[안전확인대상생활화학제품 살균제 : 일반용-일반물체용, 특수목적용-어린이용품 전용]</p> 
      
              <p class="txt_small5 mt15"><span>관련 장소 | </span><span>가정집, 식품 공장의 주방용 기구/집기, 다중이용시설, 일상생활용품, 대중교통 내부,<span class="br pc"></span>
                  모든 기물의 표면, 어린이용품 등</span></p> 
            </div> 
          </div>
        </div>

        <h5 class="tit2">3. 개인 위생 전문 솔루션</h5>
        <p class="txt">공공장소에서는 다수의 손 접촉에도 교차오염 위험이 없는 자동디스펜서 기기를 사용해야 합니다. <span class="br mo"></span>자동센서 방식의 '핸드제닉'과 '새니제닉'은<span class="br pc"></span><span class="br mo"></span>비접촉식으로 유해세균 교차오염 위험이 없으며,기기 내의 손세정제와 손소독제는 세균에 대한 뛰어난 살균력을 가지고 있습니다.</p>

        <div class="s_card">
          <div class="fL posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card05.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card05_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p class="w76">교차오염 걱정없는 손 세정기<br>세스코 핸드제닉</p>
            </div>
          </div>
          <div class="s_card_text fL">
            <div class="div">
              <p class="tit">핸드제닉(손 세정기)</p>
              <p class="txt">공공장소에서 사용하는 공용 손 세정기기는 다수 사람들의 손접촉에도 교차오염 위험이 없는 
                자동디스펜서 기기를 사용해야 합니다.<br>세스코 핸드제닉 은 비접촉식 거품형 손세정제로, 교차오염에 대한 위험이 없습니다.</p>
              <p class="txt_small3 mt15">발암가능성 물질을 포함한 환경유해물질 11종이 미포함되었다는 안전성 검증 완료 (한국화학융합시험연구원)</p> 
              <p class="txt_small3">에탄올, 인공색소가 미 첨가되어 피부자극이 없음[ 피부자극 지수 0점 : 무자극]</p> 
              <p class="txt_small3">자동 센서 방식으로 감염 전파, 교차 오염 예방에 뛰어남</p> 
              <p class="txt_small3">손에 있는 유해 요소까지 완벽히 제거하는 손세정 기능</p> 
              <p class="txt_small5 mt15"><span>관련 장소 | </span><span>화장실 세면대 등 물을 사용할 수 있는 곳</span></p> 
            </div> 
          </div>
        </div>

        <div class="s_card">
          <div class="fR posi_R">
            <img src="/resources/front/assets/images/img_s_vcs_card06.jpg" alt="" class="s_card_img pc">
            <img src="/resources/front/assets/images/img_s_vcs_card06_m.jpg" alt="" class="s_card_img mo">
            <div class="txt_box">
              <p>자동센서 방식 손 소독기<br>세스코 새니제닉</p>
            </div>
          </div>
          <div class="s_card_text fR">
            <div class="div">
              <p class="tit">새니제닉(손 소독기)</p>
              <p class="txt">세스코 새니제닉 내 소독제는 세균에 대한 99.999% 살균력을 가지고 있습니다.<br>
              자동센서방식의 비 접촉식 방식으로 유해세균 교차오염이 없으며, 물로 닦아낼 <span class="br pc"></span> 필요 없이 간편하게 사용 가능합니다.</p><!-- 수정 -->
              <p class="txt_small3 mt15">식약처에 의약외품 외용소독제로 허가 완료</p> 
              <p class="txt_small3">손에 서식하는 대장균, 황색포도상구균 에 대한 뛰어난 살균력 (99.999% 이상 제거)</p> 
              <p class="txt_small5 mt15"><span>관련 장소 | </span><span> 병원, 요식업장, 프론트 데스크, 공용 회의실, 출입구, 진료대기실 등</span></p> 
            </div> 
          </div>
        </div>
      </section>

      <section class="vcs_bottom_section">
        <strong>세스코 과학으로 관리합니다<br>CESCO Science. ON Life</strong>
        <p>글로벌 시대에서 다양한 인적교류가 일상화된 오늘날 앞으로 어떤 신종 바이러스가 유행할지는 그 누구도 예측할 수 없습니다.<br>
          많은 전문가들은 4~5년 내에 또다른 국제적 감염병 발생을 예견하고 있습니다. <br>
        바이러스의 침입을 막을 수 없다면, 세스코 바이러스케어 시스템이 필요합니다.</p>
      </section>

    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/solution/vcs-js.jsp"%>
</body>

</html>