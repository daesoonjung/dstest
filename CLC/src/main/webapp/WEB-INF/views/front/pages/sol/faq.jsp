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
  <div class="container" id="faq">
    <div class="sub_visual_cont bg_qna">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>FAQ / Q&A</strong></h2>
        <p class="txt3"><span>SOL플래너 모집에 대한</span> <span>다양한 궁금증에 대해 답변해드립니다.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu3">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solplanner/intro"><span>SOL플래너</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>FAQ / Q&A</span></a>
          <ul class="active">
            <li><a href="/front/solplanner/intro"><span>SOL플래너란?</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      
      <div class="srch_div">
        <form action="#" method="get">
          <input type="search" name="q" placeholder="검색어를 입력해 주세요." class="ipt_srch">
          <input type="submit" value="검색" class="btn_srch">
        </form>
      </div>

      <h3 class="hide">FAQ</h3>
      <ul class="tab_div">
        <li class="on">
          <a href="javascript:void(0);">
            <span class="tab_txt1">FAQ</span>
            <span class="tab_txt2">(자주하는 질문)</span>
          </a>
        </li>
        <li>
          <a href="/front/solplanner/qna">
            <span class="tab_txt1">Q&A</span>
            <span class="tab_txt2">(1:1문의하기)</span>
          </a>
        </li>
      </ul>

      <div class="content">
        <div class="faq_tab_wrap">
          <ul class="faq_tab">
            <button type="button" class="tab_m active">전체</button>
            <button type="button" class="tab_m">SOL플래너 지원하기</button>
            <button type="button" class="tab_m">SOL플래너 교육</button>
            <button type="button" class="tab_m">SOL플래너 활동지원</button>
            <button type="button" class="tab_m">기타</button>
          </ul>
        </div>

        <div id="faqTabCont">
          <ul class="faq_list active">
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">SOL플래너 지원할 때 나이 제한이 있나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div class="div">
                  <ul>
                    <li>작업 일시 : 2021년 6월 3일 (토)18:00 ~ 22:00(4시간)</li>
                    <li>작업 내용 :<br>
                       1) 시스템 안정화를 위한 정기 서버 점검</li>
                    <li>서비스 영향 : 홈페이지 사용 제한<br> 
                      궁금하신 점이나 보다 자세한 안내가 필요하신 경우 고객센터(1588-1119)로 문의 주시기 바랍니다. <br>감사합니다.</li>
                  </ul>
                </div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">SOL플래너 교육은 반드시 참여해야 하나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 활동지원</span></span>
                <span class="q_txt">SOL플래너 활동 시, 차량지원이 되나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>

            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">지원하고 언제 검토결과를 알려주시나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">장애인 및 보훈대상자는 가산점이 있나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">복수지원/재지원이 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">지원자격은 어떻게 되나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 교육</span></span>
                <span class="q_txt">SOL플래너 교육 일정은 선택이 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">온라인 지원만 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">지원을 취소하려면 어떻게 해야하나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
          </ul>

          <ul class="faq_list"><!-- 수정 -->
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">SOL플래너 지원할 때 나이 제한이 있나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br>SOL플래너 지원에는 나이제한이 없습니다.</div>
              </div>
            </li>

            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">복수지원/재지원이 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">지원자격은 어떻게 되나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 지원하기</span></span>
                <span class="q_txt">온라인 지원만 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
          </ul>

           <ul class="faq_list">
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 교육</span></span>
                <span class="q_txt">SOL플래너 교육 일정은 선택이 가능한가요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
          </ul>

          <ul class="faq_list">
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>SOL플래너 활동지원</span></span>
                <span class="q_txt">SOL플래너 활동 시, 차량지원이 되나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
          </ul>

          <ul class="faq_list">
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">SOL플래너 교육은 반드시 참여해야 하나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>

            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">지원하고 언제 검토결과를 알려주시나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">장애인 및 보훈대상자는 가산점이 있나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>

            <li>
              <a href="#" class="question">
                <span class="q_cat"><strong>Q.</strong><span>기타</span></span>
                <span class="q_txt">지원을 취소하려면 어떻게 해야하나요?</span>
              </a>
              <div class="answer">
                <strong>A.</strong>
                <div>안녕하세요 세스코 라이프케어입니다.<br></div>
              </div>
            </li>
          </ul>

          <button class="btn-st1 btn-gray btn_more"><span>더보기</span></button>
          
        </div>
     


      

        
      </div>

    </div>


  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/sol/faq-js.jsp"%>

</body>

</html>

