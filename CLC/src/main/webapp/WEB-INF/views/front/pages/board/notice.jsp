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
<body>
<div class="wrapper">
  <%@ include file="/WEB-INF/views/front/include/header.jsp"%>
  <div class="container" id="notice">
    <div class="sub_visual_cont bg_notice">
      <div class="sub_title_div">
        <span class="txt1"></span>
        <h2 class="txt2"><strong>공지사항</strong></h2>
        <p class="txt3"><span>CESCO Lifecare의</span> <span>새로운 소식과 행사내용을 전해드립니다.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1 last"><a href="#" class="more"><span>공지사항</span></a>
          <ul class="active">
            <li><a href="/front/intro/main" class="more"><span>CESCO Lifecare</span></a></li>
            <li><a href="/front/solution/air" class="more"><span>솔루션소개</span></a></li>
            <li><a href="/front/solplanner/intro" class="more"><span>SOL플래너</span></a></li>
            <li><a href="/front/help"><span>고객지원</span></a></li>
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


      <div class="content">
        <div class="notice_wrap">
          <div class="noti_list_header">
            <div>
              <span class="th1">제목</span>
              <span class="th2">등록일</span>
            </div>
          </div>
          <ul class="noti_list">
            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 라이프 케어 서비스 정책 안내</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <p>안녕하세요 세스코 라이프케어입니다.<br>SOL플래너 지원에는 나이제한이 없습니다.</p>
              </div>
            </li>
            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti new">새소식</span>
                  <p class="tit">세스코 바이러스케어 시스템 특별할인 프로모션</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <p>안녕하세요 세스코 라이프케어입니다.<br><br></p>
              </div>
            </li>

            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 바이러스케어 서비스 정책 안내</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <p>안녕하세요 세스코 라이프케어입니다.<br><br></p>
              </div>
            </li>

            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 수질안심관리 솔루션 특별할인 프로모션</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <p>안녕하세요 세스코 라이프케어입니다.<br><br></p>
              </div>
            </li>
            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 라이프케어 서비스 약관 개정 안내</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <p>안녕하세요 세스코 라이프케어입니다.<br><br></p>
              </div>
            </li>

            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">6월 3일(토) 시스템 안정화를 위한 정기 서버 점검 안내</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <ul>
                  <li>작업 일시 : 2021년 6월 3일 (토)18:00 ~ 22:00(4시간)</li>
                  <li>작업 내용 :<br>
                     1) 시스템 안정화를 위한 정기 서버 점검</li>
                  <li>서비스 영향 : 홈페이지 사용 제한<br> 
                    궁금하신 점이나 보다 자세한 안내가 필요하신 경우 고객센터(1588-1119)로 문의 주시기 바랍니다. <br>감사합니다.</li>
                </ul>
              </div>
            </li>
            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 공기질 안심관리 솔루션 특별할인 프로모션</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                <ul>
                  <li>작업 일시 : 2021년 6월 3일 (토)18:00 ~ 22:00(4시간)</li>
                  <li>작업 내용 :<br>
                     1) 시스템 안정화를 위한 정기 서버 점검</li>
                  <li>서비스 영향 : 홈페이지 사용 제한<br> 
                    궁금하신 점이나 보다 자세한 안내가 필요하신 경우 고객센터(1588-1119)로 문의 주시기 바랍니다. <br>감사합니다.</li>
                </ul>
              </div>
            </li>
            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">이용약관 변경내용 안내</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                 <p>안녕하세요 세스코 라이프케어입니다.</p>
              </div>
            </li>

            <li>
              <div class="noti_title">
                <div class="tit_left">
                  <span class="badge_noti">공지</span>
                  <p class="tit">세스코 바이러스케어 시스템 특별할인 프로모션</p>
                </div>
                <div class="tit_right">
                  <span class="noti_date"><span class="pc">2021.</span> 07. 12</span>
                </div>
              </div>
              
              <div class="notice_detail">
                 <p>안녕하세요 세스코 라이프케어입니다.</p>
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

<%@ include file="/WEB-INF/views/front/pages/board/notice-js.jsp"%>

</body>

</html>

