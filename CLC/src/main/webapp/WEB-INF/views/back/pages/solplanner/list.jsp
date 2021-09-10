<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/back/include/head.jsp"%>
</head>

<body>
<div class="content-wrap">
	<%@ include file="/WEB-INF/views/back/include/top.jsp"%>
	<div class="content">
		<div class="cont_tit">
			<h2>입사지원</h2>
		</div>

		<div class="srch_box">
			<div class="div">
				<label class="label">지국</label>
				<select class="s_01">
					<option>전체</option>
				</select>

		        <input type="text" name="" class="ipt_srch">
				<button class="btn btn_srch">검색</button>
			</div>
		</div>

		<div class="tbl_wrap">
			<!-- 테이블영역 -->
			<div style="text-align:center;width:100%;border:1px solid #ddd;height:500px;vertical-align:middle;line-height:500px">임시 테이블영역(개발)</div>

			<div class="tbl_foot">
				<div class="paging">
					<a href="#" class="p_first"><i class="fas fa-angle-double-left"></i></a>
					<a href="#" class="p_prev"><i class="fas fa-angle-left"></i></a>
					<a href="javascript:void(0);" class="on">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a href="#">6</a>
					<a href="#">7</a>
					<a href="#">8</a>
					<a href="#">9</a>
					<a href="#">10</a>
					<a href="#" class="p_next"><i class="fas fa-angle-right"></i></a>
					<a href="#" class="p_last"><i class="fas fa-angle-double-right"></i></a>
				</div>
			</div>
		</div>
		
	</div>

</div>

<!-- 팝업 - 입사지원서 -->
<div class="modal" style="display:block;">
  <div class="modal_bg"></div>
  <div class="modal_wrap modal_pop1">
    <div class="modal_cont">
      <div class="content_wrap">
        <section class="m_content chk_conts">
          <div class="mo posi_top"><span class="txt2">지원일자 : 21 .07. 21</span></div>

          <div class="chk_support_div">
            <span class="label">이름</span>
            <div class="txt_div">
              <span class="txt1">홍길동</span>
              <span class="txt2 pc">지원일자 : 2021 - 07 - 21</span>
            </div>   
          </div>
          <div class="chk_support_div">
            <span class="label">생년월일</span>
            <div class="txt_div">
              <span class="txt1">1984 - 06 - 07</span>
              <span class="txt1">만 37 세</span>
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
                  <span class="label2">근무기간<small>(년월)</small></span>
                  <span class="txt2">2018 . 05 ~ 2020 . 07</span>
                </li>
                <li>
                  <span class="label2">활동지역</span>
                  <span class="txt2">서울</span>
                </li>
                <li class="last">
                  <span class="label2 mt">활동내용</span>
                  <span class="txt2 mt">시설진단, 환경 솔루션 제공, 통합해충방제, 식품안전, 공기질안심관리 등</span>
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

          <div class="chk_support_div">
            <span class="label">메모 작성</span>
            <div class="txt_div">
              <textarea></textarea>
              <a href="#" class="btn btn-gray btn_save">저장</a>
            </div>   
          </div>

          <div class="chk_support_div comment">
      			<span class="label">코멘트</span>  
      			<div class="txt_div">
      				<div>
      					<span class="t1">의정부지국</span>
      					<span class="t2">이전 활동경험 유사도 높음. 긍정적 검토</span>
      					<span class="t3">2021. 01. 15 08:15</span>
      					<a href="#" class="btn btn-gray2 btn_del"><i class="fas fa-times"></i></a>
      				</div>
      				<div>
      					<span class="t1">서울지국</span>
      					<span class="t2">서울지국 입사 확정되었습니다.(21.04.15일부터 근무)</span>
      					<span class="t3">2021.03.31   17:08</span>
      					<a href="#" class="btn btn-gray2 btn_del"><i class="fas fa-times"></i></a>
      				</div>
      			</div>
          </div>
          <div class="btn_div">
            <a href="#" class="btn btn-st1">신용정보 조회</a>
          </div>
        </section><!-- //m_content -->
      </div>
      <button class="btn_close close-pop">✕</button>
    </div>
  </div>
</div>
<%@ include file="/WEB-INF/views/back/pages/solplanner/list-js.jsp"%>

</body>
</html>