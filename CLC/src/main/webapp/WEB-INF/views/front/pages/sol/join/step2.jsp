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
        <h3 class="hide">지원서 작성</h3>
        <ul class="step_div step3">
          <li>
            <span class="step_num">Step 01</span>
            <span class="step_txt">실명인증</span>
          </li>
          <li class="on">
            <span class="step_num">Step 02</span>
            <span class="step_txt">지원서 작성</span>
          </li>
          <li>
            <span class="step_num">Step 03</span>
            <span class="step_txt">지원완료</span>
          </li>
        </ul>
     
        <h4 class="bar_tit1">지원서 작성</h4>
        <div class="write_cont_box">
          <fieldset class="form_div">
            <legend>이름</legend>
            <div class="ipt_div">
              <input type="text" name="" placeholder="홍길동">
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>생년월일</legend>
            <div class="ipt_div birth">
              <select class="">
                <option>년</option>
              </select>
              <select class="">
                <option>월</option>
              </select>
              <select class="">
                <option>일</option>
              </select>
              <span>만 OO세</span>
            </div>
          </fieldset> 
          <fieldset class="form_div">
            <legend>성별</legend>
            <div class="ipt_div pdt">
              <div class="ipt_rdo_div2">
                <input type="radio" id="male" name="sex" checked="checked">
                <label for="male"><span>남성</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="female" name="sex">
                <label for="female"><span>여성</span></label>
              </div>
            </div>
          </fieldset>

          <fieldset class="form_div">
            <legend>최종학력</legend>
            <div class="ipt_div pdt">
              <div class="ipt_rdo_div2">
                <input type="radio" id="edu0" name="edu" checked="checked">
                <label for="edu0"><span>고졸</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="edu1" name="edu">
                <label for="edu1"><span>전문대졸</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="edu2" name="edu">
                <label for="edu2"><span>대졸</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="edu3" name="edu">
                <label for="edu3"><span>기타</span></label>
              </div>
            </div>
          </fieldset>

          <fieldset class="form_div">
            <legend>휴대전화</legend>
            <div class="ipt_div phone">
              <select class="">
                <option>010</option>
              </select>
              <span>-</span>
              <input type="text" name="" placeholder="1234">
              <span>-</span>
              <input type="text" name="" placeholder="5678">
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
            <legend>주소</legend>
            <div class="ipt_div address">
              <div><input type="text" name="" disabled="disabled" class="ipt_a1"><a href="javascript:void(0)" class="btn-st1 btn-gray">우편번호 찾기</a></div>
              <div><input type="text" name="" class="ipt_a2"><input type="text" name="" placeholder="나머지 주소" class="ipt_a2 mrx"></div>
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>이전 활동경험</legend>
            <div class="ipt_div activity">
              <div class="div pdt">
                <div class="ipt_rdo_div2">
                  <input type="radio" id="exp0" name="exp" checked="checked">
                  <label for="exp0"><span>유</span></label>
                </div>
                <div class="ipt_rdo_div2">
                  <input type="radio" id="ex1" name="exp">
                  <label for="ex1"><span>무</span></label>
                </div>
              </div>
              <div class="div">
                <label for="" class="label2">회사명</label><input type="text" name="" class="ipt_1">
                <label for="" class="label2 l_h">근무기간<small>(년월)</small></label><input type="text" name="" class="ipt_1">
                <label for="" class="label2">활동지역</label><input type="text" name="" class="ipt_1 mrx">
              </div>
              <div class="div">
                <label for="" class="label2">활동내용</label>
                <textarea></textarea>
              </div>
              <div class="div"><button type="button" class="btn-st1 btn-gray w100">+ 이전 활동이력 등록</button></div>
            </div>
          </fieldset>

          <fieldset class="form_div">
            <legend>희망활동지역</legend>
            <div class="ipt_div area">
              <select class="">
                <option>1순위</option>
              </select>
              <select class="">
                <option>2순위</option>
              </select>
            </div>
          </fieldset>

          <div class="feildset_wrap">
            <fieldset class="form_div">
              <legend>운전면허</legend>
              <div class="ipt_div pdt">
                <div class="ipt_rdo_div2">
                  <input type="radio" id="d0" name="dd" checked="checked">
                  <label for="d0"><span>유</span></label>
                </div>
                <div class="ipt_rdo_div2">
                  <input type="radio" id="d1" name="dd">
                  <label for="d1"><span>무</span></label>
                </div>
              </div>
            </fieldset>
            <fieldset class="form_div">
              <legend>차량소유여부</legend>
              <div class="ipt_div pdt">
                <div class="ipt_rdo_div2">
                  <input type="radio" id="c0" name="cc" checked="checked">
                  <label for="c0"><span>유</span></label>
                </div>
                <div class="ipt_rdo_div2">
                  <input type="radio" id="c1" name="cc">
                  <label for="c1"><span>무</span></label>
                </div>
              </div>
            </fieldset>
          </div>
          
          <fieldset class="form_div">
            <legend>지원경로</legend>
            <div class="ipt_div pdt">
              <div class="ipt_rdo_div2">
                <input type="radio" id="path0" name="path" checked="checked">
                <label for="path0"><span>지인소개</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="path1" name="path">
                <label for="path1"><span>홈페이지</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="path2" name="path">
                <label for="path2"><span>팜플렛</span></label>
              </div>
              <div class="ipt_rdo_div2">
                <input type="radio" id="path3" name="path">
                <label for="path3"><span>기타</span></label>
              </div>
            </div>
          </fieldset>

          <fieldset class="form_div">
            <legend>파일 첨부</legend>
            <div class="ipt_div">
              <div>
                <div class="add_file_div">
                  <label for="ex_filename" class="btn_file">파일 선택</label>
                  <input class="upload-name" value="선택된 파일 없음" disabled="disabled">

                  <input type="file" id="ex_filename" class="upload-hidden">
                </div>
                <button class="btn-st1 btn-gray">저장</button>
              </div>
              <p class="txt_small">※ 이력서 및 기타 개인활동 증빙 서류를 하나의 파일로 업로드 해주세요.  <span class="br"></span>※ 5Mb 이하의 서류만 업로드 가능합니다.</p>
            </div>
          </fieldset>
          <fieldset class="form_div">
            <legend>신용인증송부</legend>
            <div class="ipt_div">
              <a href="#" class="btn-st1 btn-gray w220">신용인증송부 신청하기</a> 
              <!-- <a href="javascript:void(0);" class="btn-st1 btn-gray w220" disabled>신용인증송부 완료</a> -->
              <p class="txt_small">* 신용인증송부서비스는 본인인증 및 확인절차를 거쳐 본인의 신용정보를 안전하고 신속하게 타인에게 송부해드리는 서비스 입니다.(NICE 평가정보)</p>
            </div>
          </fieldset>

        </div>



        <div class="btm_btn_div">
          <button type="button" onclick="goStep3();" class="btn-st2"><span>제출하기</span></button>
        </div>
        
      </div>
    </div>

  </div>

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/sol/join/step2-js.jsp"%>
</body>

</html>

