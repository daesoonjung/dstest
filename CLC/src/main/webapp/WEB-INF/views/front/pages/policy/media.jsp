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
  <div class="container">
    <div class="sub_visual_cont bg_policy_media">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>영상정보처리기기<span class="br mo"></span>운영관리방침</strong></h2>
        <p class="txt3">세스코 라이프케어의<span class="br mo"></span> 영상정보처리기기운영관리방침 입니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu_foot">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>영상정보처리기기 운영관리방침</span></a>
          <ul class="active">
            <li><a href="/front/policy/privacy"><span>개인정보처리방침</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="content policy">
        <h3 class="tit">영상정보처리기기 운영관리방침</h3>
        <p class="txt">(주)세스코라이프케어는(이하 “회사”라 함) 물리보안 지침에 근거하여 영상정보처리기기 운영 ∙ 관리 방침을 통해 본 사에서 처리하는 영상정보가 어떠한 용도와 방식으로 이용 ∙ 관리되고 있는지 알려드립니다.</p>
        <div class="txt_cont">
         
          <div class="policy_list_box">
            <ul>
              <li>01 | 영상정보처리기기의 설치 근거 및 설치 목적</li>
              <li>02 | 설치 대수, 설치 위치 및 촬영범위</li>
              <li>03 | 관리책임자 및 접근권한자</li>
              <li>04 | 영상정보의 촬영시간, 보관기간, 보관장소 및 처리방법</li>
              <li>05 | 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항</li>
              <li>06 | 개인영상정보의 확인 방법 및 장소에 관한 사항</li>
              <li>07 | 정보주체의 영상정보 열람 등 요구에 대한 조치</li>
              <li>08 | 영상정보의 안전성 확보조치</li>
            </ul>
            <ul>
              <li>09 | 개인정보 처리방침 변경에 관한 사항</li>
            </ul>
          </div>
        </div>

        <h3 class="tit">제 1 조 | 영상정보처리기기의 설치 근거 및 설치 목적</h3>
        <p class="txt">회사는 개인정보보호법 제25조 제1항에 따라 다음과 같은 목적으로 영상정보처리기기를 설치․운영 합니다.<br><br></p>
        <div class="txt_cont">
          <ul class="ul_st3 ml20">
            <li>- 시설안전 및 화재 예방</li>
            <li>- 고객의 안전을 위한 범죄 예방</li>
            <li>- 차량도난 및 파손방지</li>
          </ul>
        </div>
        
        <h3 class="tit">제 2 조 | 설치 대수, 설치 위치 및 촬영범위</h3>
        <p class="txt">회사는 다음과 같은 목적으로 영상정보처리기기를 설치&middot;운영 합니다.</p>
        <div class="txt_cont">
          <table class="tbl_p1">
              <colgroup class="pc">
                <col width="41%">
                <col width="41%">
                <col width="*">
              </colgroup>
              <colgroup class="mo">
                <col width="59.3%">
                <col width="20.3%">
                <col width="*">
              </colgroup>
              <thead>
                <tr>
                  <th class="bl">설치 위치 및 <span class="br mo"></span>촬영 범위</th>
                  <th>설치 대수</th>
                  <th>비고</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="bl">CMC 1층 출입구</td>
                  <td>1대</td>
                  <td>C72</td>
                </tr>
                <tr>
                  <td class="bl">CMC 1층 뒤쪽 출입구</td>
                  <td>1대</td>
                  <td>C73</td>
                </tr>
                <tr>
                  <td class="bl">CMC 1층 엘리베이터 입구 왼쪽</td>
                  <td>1대</td>
                  <td>C69</td>
                </tr>
                <tr>
                  <td class="bl">CMC 1층 엘리베이터 입구 오른쪽</td>
                  <td>1대</td>
                  <td>C70</td>
                </tr>
                <tr>
                  <td class="bl">CMC 지하 3층 CLC본사 내부</td>
                  <td>1대</td>
                  <td>C48</td>
                </tr>
                <tr>
                  <td class="bl">CMC 지하 3층 엘리베이터 출입구</td>
                  <td>1대</td>
                  <td>C46</td>
                </tr>
                <tr>
                  <td class="bl">CMC 지하 3층 CLC 본사 출입구 안쪽</td>
                  <td>1대</td>
                  <td>C45</td>
                </tr>
                <tr>
                  <td class="bl">CMC 지하 3층 비상계단 출입구</td>
                  <td>1대</td>
                  <td>C44</td>
                </tr>
              </tbody>
            </table>
        </div>

        <h3 class="tit">제 3 조 | 관리책임자 및 접근권한자</h3>
        <p class="txt">귀하의 영상정보를 보호하고 개인영상정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인영상정보 관리책임자를 두고 있습니다.</p>
        <div class="txt_cont">
           <table class="tbl_p1">
              <colgroup class="pc">
                <col width="*">
                <col width="*">
                <col width="*">
                <col width="*">
                <col width="*">
              </colgroup>
              <colgroup class="mo">
                <col width="20%">
                <col width="15%">
                <col width="13.4%">
                <col width="18.4%">
                <col width="*">
              </colgroup>
              <thead>
                <tr>
                  <th class="bl">직책</th>
                  <th>이름</th>
                  <th>직위</th>
                  <th>소속</th>
                  <th>연락처</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="bl">관리책임자</td>
                  <td>이정훈</td>
                  <td>팀장</td>
                  <td>운영지원팀</td>
                  <td>02-2140-2251</td>
                </tr>
              </tbody>
            </table>
        </div>
        <h3 class="tit">제 4 조 | 영상정보의 촬영시간, 보관기간, 보관장소 처리방법</h3>
        <p class="txt">귀하의 영상정보를 보호하고 개인영상정보와 관련한 불만을 처리하기 위하여 아래와 같이 보관하고 있습니다.</p>
        <div class="txt_cont">
           <table class="tbl_p1">
              <colgroup class="pc">
                <col width="41%">
                <col width="41%">
                <col width="*">
              </colgroup>
              <colgroup class="mo">
                <col width="25.3%">
                <col width="36.9%">
                <col width="*">
              </colgroup>
              <thead>
                <tr>
                  <th class="bl">촬영시간</th>
                  <th>보관기간</th>
                  <th>보관장소</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="bl">24시간</td>
                  <td>촬영일로부터 30일</td>
                  <td>CMC 방재실</td>
                </tr>
              </tbody>
            </table>
        </div>

        <h3 class="tit">제 5 조 | 영상정보처리기기 설치 및 관리 등의 위탁에 관한 사항</h3>
        <p class="txt">본 사는 아래와 같이 영상정보처리기기 관리 등을 위탁하고 있으며, 관계 법령에 따라 위탁계약시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.</p>
        <div class="txt_cont">
           <table class="tbl_p1">
              <colgroup class="pc">
                <col width="41%">
                <col width="41%">
                <col width="*">
              </colgroup>
              <colgroup class="mo">
                <col width="25.3%">
                <col width="36.9%">
                <col width="*">
              </colgroup>
              <thead>
                <tr>
                  <th class="bl">수탁업체</th>
                  <th>담당자</th>
                  <th>연락처</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="bl">S&amp;I</td>
                  <td>정종수 센터장</td>
                  <td>02-2140-0112</td>
                </tr>
              </tbody>
            </table>
        </div>

        <h3 class="tit">제 6 조 | 개인영상정보의 확인 방법 및 장소에 관한 사항</h3>
        <div class="txt_cont">
          <ul class="ul_st1">
            <li>- 확인 방법 : 개인영상정보 관리책임자에게 미리 연락하시고 회사에 방문하시면 확인 가능합니다.</li>
            <li>- 확인 장소 : CMC 방재센터</li>
          </ul>
        </div>

        <h3 class="tit">제 7 조 | 정보주체의 영상정보 열람 등 요구에 대한 조치</h3>
        <div class="txt_cont">
          <ul class="ul_st1">
            <li>- 귀하는 개인영상정보에 관하여 열람 또는 존재확인·삭제를 원하는 경우 언제든지 영상정보처리기기 운영자에게 요구하실 수 있습니다.<br>
            단, 귀하가 촬영된 개인영상정보 및 명백히 정보주체의 급박한 생명, 신체, 재산의 이익을 위하여 필요한 개인영상정보에 한정됩니다.</li>
            <li>- 쇠하는 개인영상정보에 관하여 열람 또는 존재확인·삭제를 요구한 경우 지체없이 필요한 조치를 하겠습니다.</li>
            <li>
              <p class="mb10">- 개인정보 열람 장소에 오실 때에는 개인영상정보 존재확인·열람·삭제 통지서를 지참하셔야 하며, 요구인 본인 또는 그 정당한 대리인임을 확인하기 위하여 다음의 구분에 따른 증명서를 지참하셔야 합니다.</p>
              <ul class="ul_st1">
                <li>① 요구인 본인에게 공개할 때 : 요구인 본인의 신분증명서</li>
                <li>② 요구인의 대리인에게 공개할 때 : 대리인임을 증명할 수 있는 서류(위임장 등)와 대리인의 신원을 확인할 수 있는 신분증명서</li>
              </ul>
            </li>
          </ul>
        </div>

        <h3 class="tit">제 8 조 | 영상정보의 안전성 확보조치</h3>
        <p class="txt">회사에서 처리하는 영상정보는 암호화 조치 등을 통하여 안전하게 관리되고 있습니다. 또한 본 사는 개인영상정보보호를 위한 관리적 대책으로서 개인영상정보에 대한 접근 권한을 차등부여하고 있고,<br>개인영상정보의 위 ∙ 변조 방지를 위하여 개인영상정보의 생성 일시, 열람시 열람 목적 ∙ 열람자 ∙ 열람 일시 등을 기록하여 관리하고 있습니다. 이 외에도 개인영상정보의 안전한 물리적 보관을 위하여 잠금장치를 설치하고 있습니다.<br><br><br><br></p>


        <h3 class="tit">제 9 조 | 개인정보 처리방침 변경에 관한 사항</h3>
        <p class="txt mb10">이 영상정보처리기기 운영․관리방침은 2021년 6월 01일에 제정되었으며 법령ㆍ정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 시행하기 최소 7일전에 본 사 홈페이지를 통해 변경사유 및 내용 등을 공지하도록 하겠습니다.</p>
        <div class="txt_cont">
          <ul class="ul_st1">
            <li>- 공고일자 : 2021년 06월 01일</li>
            <li>- 시행일자 : 2021년 06월 01일</li>
          </ul>
        </div>



      </div>
    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/policy/media-js.jsp"%>
</body>
</html>

