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
  <div class="container">
    <div class="sub_visual_cont bg_check">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>SOL플래너 지원 확인</strong></h2>
        <p class="txt3"><span>SOL플래너 입사 지원 내역을</span> <span>확인합니다.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li><a href="#" class="last"><span>SOL플래너 지원 확인</span></a></li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="content">

        <div class="auth_box auth_support">
          <div class="div">
            <p class="txt1 pc"><b>SOL플래너 지원 내역 확인</b>을 위하여<br>본인인증이 필요합니다.</p>
            <p class="txt1 mo"><b>SOL플래너 지원 내역 확인</b>을<br> 위하여 본인인증이 필요합니다.</p>
            <button class="btn-st1 btn_auth1"><span>본인 인증하기</span></button>
          </div>
        </div>
        <section>
          <!-- PC -->
          <table class="tbl-st1 pc">
            <colgroup>
              <col width="31.3%">
              <col width="26.3%">
              <col width="*">
              <col width="13.5%">
            </colgroup>
            <thead>
              <tr>
                <th>상태</th>
                <th>이름</th>
                <th>입사지원 일자</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="#" class="open-pop">지원중</a></td>
                <td><a href="#" class="open-pop">홍길동</a></td>
                <td>2021. 07. 20</td>
                <td><button class="btn-st3 btn_cancel{">취소하기</button></td>
              </tr>
              <tr>
                <td>지원취소</td>
                <td>홍길동</td>
                <td>2021. 07. 20</td>
                <td></td>
              </tr>
            </tbody>
          </table>
          <table class="tbl-st1 pc" style="margin-top:50px;">
            <colgroup>
              <col width="31.3%">
              <col width="26.3%">
              <col width="*">
              <col width="13.5%">
            </colgroup>
            <thead>
              <tr>
                <th>상태</th>
                <th>이름</th>
                <th>입사지원 일자</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td colspan="4" class="td_none">지원 내역이 없습니다.</td>
              </tr>
            </tbody>
          </table> 
          <!-- //PC -->

          <!-- Mobile -->
          <table class="tbl-st1 mo">
            <colgroup>
              <col width="35%">
              <col width="*">
              <col width="35%">
            </colgroup>
            <thead>
              <tr>
                <th>상태</th>
                <th>이름</th>
                <th>입사지원 일자</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="#" class="open-pop">지원중</a></td>
                <td><a href="#" class="open-pop">홍길동</a></td>
                <td>2021. 07. 20</td>
              </tr>
              <tr>
                <td colspan="3" class="td_cancel">
                  <button class="btn-st3 btn_cancel">취소하기</button>
                </td>
              </tr>
              <tr>
                <td>지원취소</td>
                <td>홍길동</td>
                <td>2021. 07. 20</td>
              </tr>
              <tr>
                <td colspan="3" class="td_cancel">
                </td>
              </tr>
            </tbody>
          </table>
          <!-- //Mobile -->

          

        </section>
        
      </div>

    </div>
  
  </div><!-- //container -->
  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>

<div class="modal" style="display:block;">
  <div class="modal_bg"></div>
  <div class="modal_wrap modal_pop1">
    <div class="modal_cont">
      <div class="m_content chk_conts">
        <div class="posi_top"><span class="txt2">지원일자 : 2021 - 07 - 21</span></div><!-- 수정 -->
        <div class="chk_support_div">
          <span class="label">이름</span>
          <div class="txt_div">
            <span class="txt1">홍길동</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">생년월일</span>
          <div class="txt_div"><!-- 수정 -->
            <span class="txt1 w180">1984 - 06 - 07</span>
            <span class="txt1 w180 txt_r">만 37 세</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">성별</span>
          <div class="txt_div">
            <span class="txt1">여성</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">최종학력</span>
          <div class="txt_div">
            <span class="txt1">대졸</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">휴대전화</span>
          <div class="txt_div">
            <span class="txt1">010 - 1234 - 5678</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">이메일</span>
          <div class="txt_div">
            <span class="txt1">abcd@abcd.efg</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">주소</span>
          <div class="txt_div">
            <span class="txt1">05288 | 서울특별시 강동구 상일로 6길 67 세스코맴버스시티</span>
          </div>   
        </div>

        <div class="chk_support_div">
          <div>
            <span class="label">이전 활동경험</span>
            <div class="txt_div">
              <span class="txt1">유</span>
            </div>
          </div>  
         
            <ul class="txt_div activity">
              <li>
                <span class="label2">회사명</span>
                <span class="txt2">(주)세스코</span>
              </li>
              <li>
                <span class="label2 l_h">근무기간<small>(년월)</small></span>
                <span class="txt2">2018 . 05 ~ 2020 . 07</span>
              </li>
              <li>
                <span class="label2">활동지역</span>
                <span class="txt2">서울</span>
              </li>
              <li>
                <span class="label2 mt10">활동내용</span>
                <span class="txt2  mt10">시설진단, 환경 솔루션 제공, 통합해충방제, 식품안전, 공기질안심관리 등</span>
              </li>
            </ul>
            
        </div>

        <div class="chk_support_div">
          <span class="label">희망활동지역</span>
          <div class="txt_div activity hope">
            <ul class="">
              <li>
                <span class="label2">1순위</span>
                <span class="txt2">서울</span>
              </li>
              <li>
                <span class="label2">2순위</span>
                <span class="txt2">경기북부</span>
              </li>
            </ul>
          </div>
        
        </div>
        <div class="chk_support_div w50">
          <span class="label">운전면허</span>
          <div class="txt_div w50">
            <span class="txt1">무</span>
          </div> 
        </div>
        <div class="chk_support_div w50">
          <span class="label">차량소유 여부</span>
          <div class="txt_div w50">
            <span class="txt1">무</span>
          </div>  
        </div>

        <div class="chk_support_div">
          <span class="label">지원경로</span>
          <div class="txt_div">
            <span class="txt1">홈페이지</span>
          </div>   
        </div>
        <div class="chk_support_div">
          <span class="label">파일 첨부</span>
          <div class="txt_div">
            <span class="txt1"><a hrer="#" class="file">이력서_홍길동.hwp</a></span>
          </div>   
        </div>
         
      </div>
      <button class="btn_close close-pop">닫기</button>
    </div>
  </div>
</div>

<%@ include file="/WEB-INF/views/front/pages/sol/join/check-js.jsp"%>

</body>

</html>

