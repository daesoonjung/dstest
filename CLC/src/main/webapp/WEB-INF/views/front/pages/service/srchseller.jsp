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
<div class="wrapper">
  <%@ include file="/WEB-INF/views/front/include/header.jsp"%>
  <div class="container" id="srchSeller">
    <div class="sub_visual_cont bg_srch">
      <div class="sub_title_div">
        <h2 class="txt2"><strong>판매인검색</strong></h2>
        <p class="txt3"><span>세스코 라이프케어의</span> <span>SOL플래너를 확인해보세요.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li><a href="#" class="last"><span>판매인검색</span></a></li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="content">

        <section class="srch_cont bg_srch_seller">
          <div>
            <p class="txt1"><span>판매인 이름을 입력하시면<br></span><span>세스코 라이프케어의</span><span> <b>SOL플래너를 확인</b>하실 수 있습니다.</span></p>
            <p class="txt2">세스코 라이프케어는, 국내 최고의 첨단교육 시스템을 갖춘 전문 센터에서 교육을 이수한 SOL플래너를 통해서만 서비스를 제공하고있습니다.</p>
            <div class="srch_div">  
              <form action="#" method="get">
                <input type="search" name="q" placeholder="판매인 이름을 입력해 주세요." class="ipt_srch">
                <input type="submit" value="검색" class="btn_srch">
              </form>
            </div>
          </div>
        </section>
        <section>
           <table class="tbl-st1">
            <colgroup>
              <col width="31.5%">
              <col width="*">
              <col width="31.5%">
            </colgroup>
            <thead>
              <tr>
                <th>이름</th>
                <th>소속</th>
                <th>전화번호</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>홍길동</td>
                <td>의정부 지국</td>
                <td>031-123-1234</td>
              </tr>
              <tr>
                <td>홍길동</td>
                <td>부산지국</td>
                <td>1-123-1234</td>
              </tr>
            </tbody>
            
          </table>
          
          <table class="tbl-st1" style="margin-top:50px;">
            <colgroup>
              <col width="31.5%">
              <col width="*">
              <col width="31.5%">
            </colgroup>
            <thead>
              <tr>
                <th>이름</th>
                <th>소속</th>
                <th>전화번호</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td colspan="3" class="td_none">판매인 검색결과가 없습니다.</td>
              </tr>
            </tbody>
          </table>
          
        </section>
        
      </div>

    </div>


  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/service/srchseller-js.jsp"%>
</body>


</html>

