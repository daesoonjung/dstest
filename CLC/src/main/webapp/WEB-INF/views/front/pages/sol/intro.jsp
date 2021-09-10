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
  <div class="container" id="SOLplanner">
    <div class="sub_visual_cont bg_SOLplanner">
      <div class="sub_title_div">
        <span class="txt1">SOL Planner</span>
        <h2 class="txt2"><strong>SOL플래너란?</strong></h2>
        <p class="txt3">‘세스코 Science care’서비스를 제공하며<span class="br mo"></span> 고객 생활공간의 위생환경 관리에 대한 <br>전문적인 가이드를 제공하는 위생환경 전문가 입니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu3">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solplanner/intro"><span>SOL플래너</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>SOL플래너란?</span></a>
          <ul class="active">
            <li><a href="/front/solplanner/faq"><span>FAQ / Q&A</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3><span class="fw_R">세스코 라이프케어</span><span class="br mo"></span> SOL플래너는 누구일까요?</h3>
        <p class="txt1"><b>세스코 라이프케어는</b><span class="br mo"></span> 세스코의 과학으로 생활공간의 위해요소를<span class="br mo"></span> 체계적으로 파악하고 고객 라이프 스타일에 맞는<span class="br mo"></span> 쾌적한 환경과 건강한 삶을 약속합니다.</p>
      </div>

      <section class="solution_info_section bg_s_SOLplanner sBox">
        <img src="/resources/front/assets/images/bg/bg_s_SOLplanner_m.jpg" alt="" class="mo img_planner">
        <div class="solution_info_div SOLplanner">
          <p class="txt1">세스코 라이프케어 <em>SOL플래너</em>는</p>
          <p class="txt3">세스코 라이프케어 제품을 더욱 편리하고 안전하게<span class="br mo"></span> 사용하실 수 있도록 정기적으로 방문하여<br>‘세스코 Science care’ 서비스를 제공하며,  고객 생활공간의 환경위생 관리에 대해 전문적인 가이드를 제공합니다.</p>
          <!-- <ul class="SOLplanner_icon_div">
            <li><span>케어 서비스</span></li>
            <li><span>제품 컨설팅</span></li>
            <li><span>고객관리</span></li>
          </ul> -->
        </div> 
      </section>

      <section class="SOL_mean_section content">
        <strong>SOL = S<span class="fw_R">cience care</span> O<span class="fw_R">n</span> L<span class="fw_R">ife</span></strong>
        <p class="txt">방문 서비스 ‘<b>S</b>cience care’를 통해 고객과 가까이에서 소통하며, 세스코와 고객간의 관계에 불을 밝혀주는<span class="br mo"></span>(<b>O</b>n <b>L</b>ife) 허브 역할을 합니다.</p>
        <div class="text_card_wrap">
          <div class="text_card fL">
            <p class="tit"><span>40년 이상의 </b><span class="br mo"></span>세스코 연구기술을 바탕으로 개발한<br>‘생활환경 위해요소 전문 교육 프로그램’</b><span class="br mo"></span>을 수료한 전문가</span></p>
            <p class="txt">세스코의 40여 년간 축적된 연구기술로 개발한<br>
            <em>생활환경 위해요소 전문 교육 프로그램을 수료한 전문가로<span class="br pc"></span>
            체계적이고 전문적인 ‘Science care’ 서비스를 제공</em>합니다.<br>
            국내 최고의 첨단 교육 시스템을 갖춘 전문 센터에서<span class="br pc"></span>
            세스코 라이프케어 생활환경위생 전문가를 양성합니다.</p>
          </div>
          <div class="text_card fR">
            <p class="tit"><span>세스코 라이프케어만의<span class="br mo"></span> 안심 솔루션을 제공하고<br>공간별 환경위생 관리를 도와주는 설계자</span></p>
            <p class="txt"><em>공간별 위해요소를 파악하여 환경위생 관리를 위한 <span class="br pc"></span>
            안심 솔루션을 Planning하고 조언</em>합니다.<br> 세스코 노하우가 담긴 위생정보 콘텐츠를 제공함으로써<span class="br pc"></span> <em>배수구 위생관리부터 전문적인 바이러스 관리 방법까지 쉽고 친절하게 안내</em>하며 세스코의 <em>다양한 제품과 서비스를 체험할 수 있는 기회를 제공합니다.</em></p>
          </div>
        </div>
        <div class="SOL_badge">
          <div class="fL badge_logo"><img src="/resources/front/assets/images/badge_logo.png" alt="세스코 사이언스 케어"></div>
          <div class="fL">
            <strong>세스코 사이언스 케어 서비스란?</strong>
            <p>세스코 과학으로 설계된 전문적인 관리 도구로 고객에게 체계적인 서비스를 제공하는 세스코의 렌탈 관리 전문 서비스 브랜드입니다.</p>
          </div>
        </div>
      </section>

      <section class="about_SOLplanner_section content">
        <h4 class="tit">SOL플래너는 <span class="br mo"></span>어떤 일을 할까요?</h4>
        <ul class="about_SOLplanner">
          <li>
            <img src="/resources/front/assets/images/img_about1.png">
            <p class="tit">과학적이고 체계적인 방문 관리</p>
            <p class="txt">주기적으로 방문하여<br>제품 성능 정검, 필터 교체, 살균케어 등의<br>세스코 사이언스 케어 서비스를 제공합니다.</p>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_about2.png">
            <p class="tit">전문적인 토탈 솔루션 컨설팅</p>
            <p class="txt">전문 지식을 바탕으로 생활공간의 위해요소를<br>체계적으로 파악하고 고객 라이프 스타일에 맞는<br>세스코 라이프케어만의 토탈 솔루션을 추천합니다.</p>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_about3.png">
            <p class="tit">꼼꼼하고 세심한 고객관리</p>
            <p class="txt">지속적인 고객관리를 통하여 고객에게 유익한<br>환경위생 정보를 제공하며 고객 니즈에 맞는<br>쾌적한 환경과 건강한 삶을 약속합니다.</p>
          </li>
        </ul>
        <div class="work_div">
          <dl>
            <dt class="bg-c1">바이러스 케어 솔루션</dt>
            <dd><p>공기살균기, 방향탈취기,<span class="br pc"></span> 변기세정살균기, 손소독기, 손세정기</p></dd>
          </dl>
          <dl>
            <dt>공기질 안심관리 솔루션</dt>
            <dd><p>IoT 공기청정기, 라돈 공기청정기,<span class="br pc"></span> 공기질측정기</p></dd>
          </dl>
          <dl>
            <dt>수질 안심관리 솔루션</dt>
            <dd><p>직수 정수기, 미니 정수기,<span class="br pc"></span> 스텐드 정수기</p></dd>
          </dl>
          <dl>
            <dt>생활환경위생 솔루션</dt>
            <dd><p>살균소독제, 주방세제, 핸드워시 등<span class="br pc"></span> 환경위생용품</p></dd>
          </dl>
        </div>
        <p class="txt_small3 txt_r">예정 : 비데, 매트리스케어, 에어퍼퓸 등 </p><!-- 수정 -->

        <ul class="solution_product_list">
          <li>
            <img src="/resources/front/assets/images/img_product01.jpg" alt="공기 살균기">
            <span>공기 살균기</span>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_product02.jpg" alt="공기 살균기">
            <span>방향 탈취기</span>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_product03.jpg" alt="공기 살균기">
            <span>변기세정 살균기</span>
          </li>

          <li class="mlx">
            <img src="/resources/front/assets/images/img_product04.jpg" alt="공기 살균기">
            <span>공기 청정기</span>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_product05.jpg" alt="공기 살균기">
            <span>정수기</span>
          </li>
          <li>
            <img src="/resources/front/assets/images/img_product06.jpg" alt="공기 살균기">
            <span>환경위생 용품</span>
          </li>
        </ul>

        <h4 class="tit">그렇다면, 왜 SOL플래너에 <span class="br mo"></span>지원해야 할까요?</h4>
        <ol class="circle_div">
          <li>
            <div>
              <strong>1.</strong>
              <p>합리적인<span class="br pc"></span> 수수료 및 지원제도</p>
            </div>
          </li>
          <li>
            <div>
              <strong>2.</strong>
              <p>체계적인<br>교육지원 시스템</p>
            </div>
          </li>
          <li>
            <div>
              <strong>3.</strong>
              <p>우수 실적자에 대한<br>커리어 개발기회 제공</p>
            </div>
          </li>
        </ol>

        <h5 class="bar_tit1">수수료 및 지원제도</h5>
        <table class="tbl-st2">
          <colgroup>
            <col width="25.4%">
            <col width="*">
          </colgroup>
          <tbody>
            <tr>
              <th>수수료</th>
              <td>
                <p class="t1">- 서비스수수료 + 영업수수료</p>
                <p class="t1">- 최대 12개월 정착지원금 지급</p>
              </td>
            </tr>
          </tbody>
        </table>

        <div class="tbl_wrap">
          <div class="th fL">
            <span>지원제도</span>
          </div>
          <table class="tbl-st3 fL">
            <colgroup>
              <col width="21%">
              <col width="55.5%">
              <col width="23.5%">
            </colgroup>
            <thead>
              <tr>
                <th>구분</th>
                <th>지원내용</th>
                <th>지원기준</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>교육 <span class="br mo"></span>지원비</td>
                <td class="txt_l"><p class="t1">- SOL플래너 입문교육 <span class="br mo"></span>이수 시 지급</p></td>
                <td>-</td>
              </tr>
              <tr>
                <td>경조사<span class="br mo"></span>지원금</td>
                <td class="txt_l">
                  <p class="t1">- 결혼(본인, 자녀) 및 환갑<span class="br mo"></span>(본인, 부모)</p>
                  <p class="t1">- 조사(본인, 배우자, 부모, 자녀)</p>
                  <p class="t2">*조사물품 별도 지원</p>
                </td>
                <td rowspan="2">3개월 이상 활동자</p></td>
              </tr>
              <tr>
                <td>기타</td>
                <td class="txt_l">
                  <p class="t1">- 상해보험</p>
                  <p class="t1">- 자녀 입학축하금<span class="br mo"></span>(초, 중, 고, 대)</p>
                  <p class="t1">- 기념일 선물(설날, 추석 등)</p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="planner_info_div">
          <div class="div fL">
            <h5 class="bar_tit1">교육시스템</h5>
            <p class="t1">- 국내 최고의 첨단교육 시스템을 갖춘 전문 센터에서 교육 지원</p>
            <p class="t1">- 생활환경위생 전문 강사진을 통하여 체계적인 제품, 서비스 교육 지원</p>
          </div>
          <ul class="program fR">
            <li>
              <div>
                <p>Beginner 프로그램</p>
                <span>(1개월차)</span>
              </div>
            </li>
            <li>
              <div>
                <p>Jump up 프로그램</p>
                <span>(2~3개월차)</span>
              </div>
            </li>
            <li>
              <div>
                <p>Master 프로그램</p>
                <span>(4개월차~)</span>
              </div>
            </li>
          </ul>
        </div>
        <div class="planner_info_div mb">
          <div class="div fL">
            <h5 class="bar_tit1">커리어 비전</h5>
            <p class="t1">- 실적이 우수한 인원은 커리어 개발(관리자 전환 등) 기회 제공</p>
            <p class="t2">*관리자(지국팀장)전환 시, 기존 위임계약 해지 및 근로계약 체결</p>
          </div>
          <ul class="vision fR">
            <li>
              <span>SOL 플래너</span>
            </li>
            <li>
              <span>지국팀장</span>
            </li>
            <li>
              <span>지국장</span>
            </li>
            <li>
              <span>총국장</span>
            </li>
          </ul>
        </div>

        <h4 class="tit">지금, 세스코 라이프케어 SOL플래너에 지원하세요.</h4>
        <div class="app_planner">
          <h5 class="bar_tit1">모집 부문 및 자격 요건</h5>
          <div class="tbl_wrap2 mb30 pc"> <!-- PC -->
            <table class="tbl-st3">
             <colgroup>
               <col width="195px">
               <col width="153px">
               <col width="139px">
               <col width="212px">
               <col width="257px">
               <col width="*">
             </colgroup>
             <thead>
               <tr>
                 <th class="bl">모집 부문</th>
                 <th>지원자격</th>
                 <th>모집 지역/기간</th>
                 <th>주요 활동</th>
                 <th>모집 형태</th>
                 <th>지원 방법</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td class="bl">세스코 라이프케어<br>SOL플래너<br><small>(프리랜서)</small></td>
                 <td class="txt_left">
                   <p class="t1">- 고졸 이상</p>
                   <p class="t1">- 경력 무관</p>
                   <p class="t1">- 경험자 우대</p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- 전국</p>
                   <p class="t1">- 수시 모집</p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- 제품 정기 관리서비스</p>
                   <p class="t1">- 제품 영업 및 판매</p>
                   <p class="t1">- 고객 관리</p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- 위촉직<br>(프리랜서 / 자유직업소득자)<br><small>*소속 : 세스코 라이프케어</small></p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- SOL플래너 지원사이트</p>
                 </td>
               </tr>
             </tbody>
            </table>
          </div>

          <div class="tbl_wrap2 mo"> <!-- Mobile -->
            <table class="tbl-st3">
             <colgroup>
               <col width="35.3%">
               <col width="35.3%">
               <col width="*">
             </colgroup>
             <thead>
               <tr>
                 <th class="bl">모집 부문</th>
                 <th>지원자격</th>
                 <th>모집 지역/기간</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td class="bl">세스코 라이프케어<br>SOL플래너<br><small>(프리랜서)</small></td>
                 <td class="txt_left">
                   <p class="t1">- 고졸 이상</p>
                   <p class="t1">- 경력 무관</p>
                   <p class="t1">- 경험자 우대</p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- 전국</p>
                   <p class="t1">- 수시 모집</p>
                 </td>
               </tr>
             </tbody>
            </table>
            <table class="tbl-st3">
             <colgroup>
               <col width="35.3%">
               <col width="35.3%">
               <col width="*">
             </colgroup>
             <thead>
               <tr>
                 <th class="bl">주요 활동</th>
                 <th>모집 형태</th>
                 <th>지원 방법</th>
               </tr>
             </thead>
             <tbody>
               <tr>
                 <td class="txt_left bl">
                   <p class="t1">- 제품 정기 관리서비스</p>
                   <p class="t1">- 제품 영업 및 판매</p>
                   <p class="t1">- 고객 관리</p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- 위촉직<br>(프리랜서 / 자유직업소득자)<br><small>*소속 : 세스코 라이프케어</small></p>
                 </td>
                 <td class="txt_left">
                   <p class="t1">- SOL플래너 지원사이트</p>
                 </td>
               </tr>
             </tbody>
            </table>
          </div>

          <h5 class="bar_tit1">모집 부문 및 자격 요건</h5>
          <div class="app_process">
            <img src="/resources/front/assets/images/app_process.jpg" class="pc" alt="지원하기>SOL플래너 설명회>프리랜서 계약 체결">
            <img src="/resources/front/assets/images/app_process_m.jpg" class="mo" alt="지원하기>SOL플래너 설명회>프리랜서 계약 체결">
          </div>

          <div class="app_wrap">
            <div class="div">
             <h5 class="bar_tit1">결과 발표</h5>
             <p class="t1">- SOL플래너 설명회 기준, 2주일 이내 발표<br>(개별연락, 문자, 이메일 등)</p>
            </div>
            <div class="div">
             <h5 class="bar_tit1">지원 문의</h5>
             <p class="t1">- SOL플래너 지원사이트 문의 게시판</p>
            </div>
            <div class="div">
             <h5 class="bar_tit1">기타 사항</h5>
             <p class="t1">- 제출된 지원서는 모집목적 외에는 활용되지 않으며, <br> 개인정보보호법 등 관련 법령에 근거하여 보관 및 파기를 실시합니다.</p>
            </div>
          </div>

          <div class="btm_btn_div">
            <button type="button" onclick="goJoin();" class="btn-st2 btn-dark"><span>SOL플래너 입사지원하기</span></button>
          </div>
            
        </div>
      </section>



    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/sol/intro-js.jsp"%>
</body>

</html>

