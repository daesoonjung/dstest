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
        <h3 class="hide">실명인증</h3>
        <ul class="step_div step3">
          <li class="on">
            <span class="step_num">Step 01</span>
            <span class="step_txt">실명인증</span>
          </li>
          <li>
            <span class="step_num">Step 02</span>
            <span class="step_txt">지원서 작성</span>
          </li>
          <li>
            <span class="step_num">Step 03</span>
            <span class="step_txt">지원완료</span>
          </li>
        </ul>
     
        <h4 class="bar_tit1">SOL플래너 지원을 위하여 본인인증이 필요합니다.</h4>
        <div class="auth_box">
          <div class="div">
            <button class="btn-st1 btn_auth1"><span>본인 인증하기</span></button>
            <!-- <button class="btn_auth1 disabled"><span>인증완료</span></button> -->
          </div>
        </div>

        <h4 class="bar_tit1">개인정보 수집 및 이용 동의 (필수)</h4>
        <section class="agree_section">
          <p class="txt">(주)세스코라이프케어는 SOL플래너(프리랜서)를 모집하기 위하여 지원자의 개인정보를 수집 및 이용하고 있습니다.<br>
          하단의 개인정보 수집 및 이용에 대한 안내를 확인하신 후 동의 의사를 표시하여 주시기 바랍니다.</p>

          <div class="agree_txt_box">
            <div class="div div1">
              <div class="div_th"><span>수집, 이용 항목</span></div>
              <div class="div_td">
                <ul class="ul-st1">
                  <li>성명, 생년월일, 연령, 성별, 최종학력, 연락처(휴대폰),<span class="bg pc"></span> 이메일, 주소, 이전 활동경험 유무, 이동 활동경험 이력<span class="bg pc"></span>(회사명, 활동내용, 활동지역, 활동기간), <span class="bg pc"></span>희망활동지역(1순위, 2순위) 운전면허 유무, 차량소유 유무, <span class="bg pc"></span>지원경로, 기타 채용을 위하여 본인이 작성한 정보 및 <span class="bg pc"></span>제출한 자료</li>
                </ul>
              </div>
            </div>
            <div class="div div2">
              <div class="div_th"><span>수집, 이용 목적</span></div>
              <div class="div_td">
                <ul class="ul-st1">
                  <li>수집한 개인정보를 바탕으로 SOL플래너 지원자에 대한 창업설명회 심사</li>
                  <li>SOL플래너 위촉직(프리랜서) 심사 대상자로 선정된 인원에게 교육지원 및 활동에 필요한 사항 안내</li>
                  <li>보유기간 동안 지원자 정보를 활용하여 Pool로 관리하며, SOL플래너 필요 시 지원의사 문의</li>
                </ul>
              </div>
            </div>
            <div class="div div3">
              <div class="div_th"><span>보유기간</span></div>
              <div class="div_td">
                <ul class="ul-st1">
                  <li>지원일로부터 1년</li>
                </ul>
              </div>
            </div>
          </div>
          
          <p class="txt">귀하는 본 동의를 거절하실 권리가 있습니다. 단, 동의를 거부할 시 정상적인 지원절차 진행이 불가합니다.</p>

          <div class="chk_div agree_chk_div mt30">
            <div class="ipt_rdo_div">
              <input type="radio" id="agree0" name="agree_1" class="ipt_chk">
              <label for="agree0" class="lable_chk"><span>동의합니다.</span></label>
            </div>
            <div class="ipt_rdo_div ml">
              <input type="radio" id="agree1" name="agree_1" class="ipt_chk">
              <label for="agree1" class="lable_chk"><span>동의하지 않습니다.</span></label>
            </div>
          </div>
        </section><!-- //agree_section -->

        <h4 class="bar_tit1">개인(신용)정보 수집&middot;이용&middot;제공&middot;조회 동의(필수)</h4>
        <section class="agree_section">
          <p>(주)세스코라이프케어의 채용 및 근로계약 체결 절차와 관련하여 (주)세스코라이프케어가 본인의 개인(신용)정보를 수집·이용하고자 하는 경우에는 「개인정보 보호법」 제15조 제1항 제1호, 
            제 23조 제1호, 제24조 제1항 제1호 및 제24조의 2, 「신용정보의 이용 및 보호에 관한 법률」 제15조 제2항, 제32조 제1항, 제33조 및 제 34조, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조 제1항, 제24조의2 제1항에 따라 본인의 동의를 얻어야 합니다. <br>
          이에 본인은 (주)세스코라이프케어가 아래의 내용과 같이 본인의 개인(신용)정보를 수집·이용·제공·조회 하는 것에 대한 동의여부를 선택하여 주십시오.</p>
          <div class="text_box">
            <p class="txt_c t1">- 아&nbsp;&nbsp;&nbsp;래 -</p>
            <p class="t1">1. 개인(신용)정보 수집&middot;이용에 관한 사항</p>
            <p class="t2">가. 수집&middot;이용목적</p>
            <p class="t3">(1) 채용 및 근로계약 체결 절차의 진행 및 관리, 경력·자격 등 확인(조회 및 검증), 채용 여부의 결정</p>
            <p class="t3">(2) 민원처리, 분쟁해결 등 법령상 의무이행</p>
            <p class="t3">(3) 상거래 설정 및 유지를 위한 신용정보 조회<br><br></p>

            <p class="t2">나. 수집&middot;이용할 항목</p>
            <p class="t3">(1) 개인식별정보</p>
            <p class="t4"> - 성명, 생년월일 등 고유식별정보, 주소 및 거주지, 전자우편 주소, 휴대폰번호</p>
            <p class="t3">(2) 개인식별정보 외에 입사지원서 등에 제공한 정보</p>
            <p class="t4"> - 최종학력, 신상정보사항, 경력사항, 자격사항, 기타 채용을 위하여 본인이 작성한 정보사항<br><br></p>
               
            <p class="t2">다. 보유&middot;이용기간</p>
            <p class="_ml5">위 개인(신용)정보는 제공된 날로부터 12개월 동안 위 이용목적을 위하여 보유·이용됩니다. 단, 지원자가 근로계약 체결을 거절한 경우에는 
            분쟁 해결, 법령상 의무이행을 위하여 필요한 범위 내에서만 보유·이용됩니다.<br><br></p>

            <p class="_ml30">귀하는 본 동의를 거절하실 권리가 있습니다. 단, 동의를 거부할 시 정상적인 지원절차 진행이 불가합니다.</p>
          </div>

          <p class="bar_txt mb">개인(신용)정보 수집&middot;이용 동의여부 : (주)세스코라이프케어가 위와 같이 본인의 개인(신용)정보를 수집·이용하는 것에 동의 하십니까?</p>
          <div class="chk_div agree_chk_div mb">
            <div class="ipt_rdo_div">
              <input type="radio" id="agree2" name="agree_2" class="ipt_chk">
              <label for="agree2" class="lable_chk"><span>동의합니다.</span></label>
            </div>
            <div class="ipt_rdo_div ml">
              <input type="radio" id="agree3" name="agree_2" class="ipt_chk">
              <label for="agree3" class="lable_chk"><span>동의하지 않습니다.</span></label>
            </div>
          </div>
          <div class="text_box">
            <p class="t1">2. 개인(신용)정보 제공에 관한 사항</p>
            <p class="t2">가. 제공 목적</p>
            <p class="t3">- 본인인증·식별확인, 신용도평가, 신용정보관리·활용, 주민등록번호 대체키(safekey) 발급</p>
            <p class="t2">나. 제공 항목</p>
            <p class="t3">- 개인식별정보(성명, 생년월일, 성별, 연락처)</p>
            <p class="t2">다. 제공기관</p>
            <p class="t3">- NICE평가정보</p>
            <p class="t2">라. 보유·이용기간</p>
            <p class="t3">- 업무목적 달성 시 까지<br><br></p>

            <p class="_ml30">귀하는 본 동의를 거절하실 권리가 있습니다. 단, 동의를 거부할 시 거래관계의 설정 또는 유지가 불가능할 수 있음을 알려드립니다.</p>
          </div>
          <p class="bar_txt mb">개인(신용)정보 제공 동의여부  : <span> (주)세스코라이프케어가 위와 같이 본인의 개인(신용)정보를 수집·이용하는 것에 동의 하십니까?</span></p>
          <div class="chk_div agree_chk_div">
            <div class="ipt_rdo_div">
              <input type="radio" id="agree4" name="agree_3" class="ipt_chk">
              <label for="agree4" class="lable_chk"><span>동의합니다.</span></label>
            </div>
            <div class="ipt_rdo_div ml">
              <input type="radio" id="agree5" name="agree_3" class="ipt_chk">
              <label for="agree5" class="lable_chk"><span>동의하지 않습니다.</span></label>
            </div>
          </div>

          <div class="text_box">
            <p class="t1">3. 개인(신용)정보 조회에 관한 사항</p>
            <p class="t2">가. 제공 목적</p>
            <p class="t3">- 상거래 설정/유지 및 채권추심 등을 위한 신용정보 조회</p>
            <p class="t2">나. 조회 항목</p>
            <p class="t3">- 개인식별정보(성명, 생년월일, 성별, 연락처)</p>
            <p class="t2">다. 조회기관</p>
            <p class="t3">- NICE평가정보</p>
            <p class="t2">라. 보유·이용기간</p>
            <p class="t3">- 동의서 제출 시 부터 조회 목적의 효력이 종료되는 시점<br><br></p>

            <p class="_ml30">귀하는 본 동의를 거절하실 권리가 있습니다. 단, 동의를 거부할 시 거래관계의 설정 또는 유지가 불가능할 수 있음을 알려드립니다.</p>
          </div>
          <p class="bar_txt mb">개인(신용)정보 조회 동의여부 : <span> (주)세스코라이프케어가 위와 같이 본인의 개인(신용)정보를 수집·이용하는 것에 동의 하십니까?</span></p>
          <div class="chk_div agree_chk_div">
            <div class="ipt_rdo_div">
              <input type="radio" id="agree6" name="agree_4" class="ipt_chk">
              <label for="agree6" class="lable_chk"><span>동의합니다.</span></label>
            </div>
            <div class="ipt_rdo_div ml">
              <input type="radio" id="agree7" name="agree_4" class="ipt_chk">
              <label for="agree7" class="lable_chk"><span>동의하지 않습니다.</span></label>
            </div>
          </div>

        </section><!-- //agree_section -->

        <div class="btm_btn_div">
          <button type="button" onclick="goStep2();" class="btn-st2"><span>SOL플래너 지원서 작성하기</span></button>
        </div>
      </div>
    </div>

  </div>

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/sol/join/step1-js.jsp"%>
</body>

</html>

