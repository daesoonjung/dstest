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
  <div class="container" id="qna">
    <div class="sub_visual_cont bg_qna">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>FAQ / Q&A</strong></h2>
        <p class="txt3"><span>SOL플래너 모집에 대한 </span><span>다양한 궁금증에 대해 답변해드립니다</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu3">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solplanner/intro"><span>SOL플래너</span></a></li>
        <li class="depth depth2"><a href="/front/solplanner/qna"><span>FAQ/Q&A</span></a>
        </li>
        <li class="depth depth3 last">
          <a href="/front/solplanner/qna/write"><span>1:1문의작성</span></a>
        </li>
      </ul>
    </div>


    <div class="content_wrap">
      <div class="cont_tit">
        <h3>1:1문의작성</h3>
        <p class="txt1"><span>SOL플래너 모집과 관련된 1:1 문의를 남겨주세요.</span>  <span>담당자가 내용을 확인 후 바로 답변해 드리겠습니다.</span></p>
        <p class="txt2">* 표시 항목은 필수 입력 항목입니다.</p>
      </div>

      <div class="content qna_write">
        <div class="write_cont_box">
          <fieldset class="form_div">
            <legend>이름 <em>*</em></legend>
            <div class="ipt_div">
              <input type="text" name="" placeholder="홍길동">
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>비밀번호 <em>*</em></legend>
            <div class="ipt_div">
              <div><input type="password" name="" placeholder=""></div> <!-- 수정 -->
              <p class="txt_small"><span>비밀번호는 숫자 및 영문자를 사용하여 4~8자리로 설정해주세요. </span> <span>비밀번호는 분실 시 재설정 및 찾기가 불가능합니다.</span></p>
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>이메일</legend>
            <div class="ipt_div email">
              <input type="text" name="" placeholder="" class="ipt_e1">
              <span>@</span>
              <input type="text" name="" placeholder="직접입력" class="ipt_e2">
              <select class="">
                <option>선택</option>
              </select>
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>제목 <em>*</em></legend>
            <div class="ipt_div">
              <input type="text" name="" placeholder=""> <!-- 수정 -->
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>내용 <em>*</em></legend>
            <div class="ipt_div">
              <textarea></textarea>
            </div>
          </fieldset>

          <h4 class="bar_tit1">개인정보 수집 및 이용 동의 (필수)</h4>
          <div class="text_box">
            <p>(주)세스코라이프케어 서비스와 관련하여, 본인은 동의 내용을 숙지하였으며, 이에 따라 귀사 ((주)세스코라이프케어)가 수집한 본인의 개인 정보를 아래와 같이 제3자에게 제공하는 것에 대해 동의합니다.<br>
              수집항목 : 이름, e-mail 주소<br>
              수집·이용목적 : SOL플래너 지원 관련 문의 등에 대한 개인 맞춤 상담·정보 제공<br>
              보유 및 이용 기간 : 수집 일로부터 1년</p>
            <p class="txt_small2">
              <span>본 동의는 서비스의 본질적 기능 제공을 위한 개인정보 수집/이용에 대한 동의로서, 동의하지 않으실 경우 서비스 제공이 불가능합니다.</span>
              <span>법령에 따른 개인정보의 수집/이용, 계약의 이행/편의증진을 위한 개인정보 취급위탁 및 개인정보 취급과 관련된 일반 사항은 서비스의 개인정보 취급방침에 따릅니다.</span>
            </p>
          </div>
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
        </div><!-- //write_cont_box -->

        <div class="btm_btn_div">
          <button type="submit" class="btn-st2 btn-dark">등록</button>
          <button type="submit" class="btn-st2">취소</button>
        </div>

        
      </div>

    </div>


  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/sol/qna_write-js.jsp"%>
</body>

</html>

