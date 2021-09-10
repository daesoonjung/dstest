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
        <p class="txt3">SOL플래너 모집에 대한 다양한 궁금증에 대해 답변해드립니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu3">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solplanner/intro"><span>SOL플래너</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>FAQ/Q&A</span></a>
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

      <h3 class="hide">Q&A</h3>
      <ul class="tab_div">
        <li>
          <a href="/front/solplanner/faq">
            <span class="tab_txt1">FAQ</span>
            <span class="tab_txt2">(자주하는 질문)</span>
          </a>
        </li>
        <li class="on">
          <a href="javascript:void(0);">
            <span class="tab_txt1">Q&A</span>
            <span class="tab_txt2">(1:1문의하기)</span>
          </a>
        </li>
      </ul>
      <div class="content">
        <div class="qna_top">
          <a href="#" class="btn-st1 btn-gray btn_qna">1:1 문의 작성</a>
          <p>문의하시기 전에 FAQ에서 문의사항을 먼저 확인해 보세요!<br>문의주신 내용에 대한 답변은 Q&A 게시판 및 등록하신 이메일을 통하여 확인하실 수 있습니다.</p>
        </div>

        <div class="qna_list_wrap">
          <div class="qna_list_header">
            <div>
              <span class="th1">제목</span>
              <span class="th2">작성자</span>
              <span class="th3">작성일자</span>
            </div>
          </div>
          <ul class="qna_list">
            <li>
              <div class="qna_Q">
                <div class="q_left">
                  <p>합격하면 언제부터 교육을 받나요?</p>
                  <span class="ico_lock">비밀글</span>
                  <span class="badge_answer wait">답변 대기</span>
                </div>
                <div class="q_right">
                  <span class="td1">김*수</span>
                  <span class="td2"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>

              <div class="qna_A">
                <div class="lock">
                  <div class="lock_div">
                    <p>비밀번호를 입력하세요</p>
                    <input type="password" name="" class="ipt_pw">
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="qna_Q">
                <div class="q_left">
                  <p>지원서 지금 수정 가능한가요?</p>
                  <span class="ico_lock">비밀글</span>
                  <span class="badge_answer">답변 완료</span>
                </div>
                <div class="q_right">
                  <span class="td1">김*수</span>
                  <span class="td2"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>

              <div class="qna_A">
                <div class="lock">
                  <div class="lock_div">
                    <p>비밀번호를 입력하세요</p>
                    <input type="password" name="" class="ipt_pw">
                  </div>
                </div>
              </div>
            </li>
            <li>
              <div class="qna_Q">
                <div class="q_left">
                  <p>교육비는 언제 주나요?</p>
                  <span class="ico_unlock"></span>
                  <span class="badge_answer">답변 완료</span>
                </div>
                <div class="q_right">
                  <span class="td1">김*수</span>
                  <span class="td2"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>

              <div class="qna_A">
                <div class="q_div">
                    <strong>Q.</strong>
                    <div>
                      <p>안녕하세요 오늘 입사지원했습니다.<br>합격하게 되면 교육을 받고 교육비를 받을 수 있다고 알고 있는데<br>교육비는 언제 받을 수 있나요?</p>
                    </div>
                  </div>
                  <div class="a_div">
                    <strong>A.</strong>
                    <div>
                      <p>안녕하세요.  SOL플래너에 지원해 주셔서 감사합니다.<br>
                        문의주신 내용에 답변 드립니다.<br>
                        지원서는 검토 결과  SOL플래너에 합격하시게 되면, 국내 최고의 첨단교육 시스템을 갖춘 전문 센터에서  SOL플래너 입문 교육이 진행되며,<br>교육비는 SOL플래너 입문 교육 이수 시 지급됩니다.<br>만족스러운 답변이었길 바라겠습니다. 감사합니다.</p>
                    </div>
                  </div>
              </div>
            </li>

            <li>
              <div class="qna_Q">
                <div class="q_left">
                  <p>지원서가 잘 제출되었는지 확인할 수 있나요?비밀글</p>
                  <span class="ico_lock">비밀글</span>
                  <span class="badge_answer">답변 완료</span>
                </div>
                <div class="q_right">
                  <span class="td1">김*수</span>
                  <span class="td2"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>

              <div class="qna_A">
                <div class="lock">
                  <div class="lock_div">
                    <p>비밀번호를 입력하세요</p>
                    <input type="password" name="" class="ipt_pw">
                  </div>
                </div>
              </div>
            </li>

             <li>
              <div class="qna_Q">
                <div class="q_left">
                  <p>지원서 검토결과 알려주세요.</p>
                  <span class="ico_lock">비밀글</span>
                  <span class="badge_answer">답변 완료</span>
                </div>
                <div class="q_right">
                  <span class="td1">김*수</span>
                  <span class="td2"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>

              <div class="qna_A">
                <div class="lock">
                  <div class="lock_div">
                    <p>비밀번호를 입력하세요</p>
                    <input type="password" name="" class="ipt_pw">
                  </div>
                </div>
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
<%@ include file="/WEB-INF/views/front/pages/sol/qna-js.jsp"%>
</body>

</html>

