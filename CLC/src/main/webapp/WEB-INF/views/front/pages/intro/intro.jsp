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
  <div class="container" id="intro">
    <div class="sub_visual_cont bg_introduce">
      <div class="sub_title_div">
        <span class="txt1">CESCO Lifecare</span>
        <h2 class="txt2"><strong>CESCO Lifecare 소개</strong></h2>
        <p class="txt3"><span>세스코 라이프케어는</span> <span>세스코의 과학으로 생활공간의 위해요소를 체계적으로 파악하고 고객 라이프 스타일에 맞는 쾌적한 환경과 건강한 삶을 약속합니다.</span></p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu1">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/intro/main"><span>CESCO Lifecare</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>CESCO Lifecare 소개</span></a>
          <ul class="active">
            <li><a href="/front/intro/map"><span>찾아오시는 길</span></a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="content_wrap">

      <div class="content">
        <img src="/resources/front/assets/images/img_introduce.jpg" alt="세스코 라이프케어 이미지" class="img_intro pc">
        <img src="/resources/front/assets/images/img_introduce_m.jpg" alt="세스코 라이프케어 이미지" class="img_intro mo">

        <div class="intro_cont">
          <span class="sub_tit">CESCO Lifecare</span>
          <h3 class="tit">세스코 과학으로 관리합니다<br>CESCO Science care. On Life</h3>
          <p class="txt1">‘세스코 라이프케어’ 는 세스코 생활환경 위생제품의 전문적인
            Science Care Service를 위해 출발하였으며,<br>
            세스코 과학으로  설계된 전문적인 관리 서비스를 제공하는
            서비스 전문기업입니다.</p>

          <p class="txt2">사람이 마시는 물과 공기이기에, 우리의 일상을 위협하는 바이러스기에,
            눈에 보이지 않는 곳까지 믿고 안심할 수 있는 세상을 만들어가는 이곳.<br><br>
            ‘세스코 라이프케어’는 세스코의 과학으로 생활공간의 위해요소를
            체계적으로 파악하고 고객 라이프 스타일에 맞는 쾌적한 환경과 <span class="pc"></span>
            건강한 삶을 약속합니다. </p>
        </div>
        
      </div>
    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/intro/intro-js.jsp"%>
</body>

</html>

