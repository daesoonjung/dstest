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
  <div class="container" id="solution">
    <div class="sub_visual_cont bg_solution_life">
      <div class="sub_title_div">
        <span class="txt1">CESCO cescare System</span><!-- 수정 -->
        <h2 class="txt2"><strong>CESCO <span class="br mo"></span>생활환경위생 솔루션<span class="br mo"></span></strong></h2>
        <p class="txt3">업종별·환경별로 발생되는 다양한 환경위생 문제를 광범위한 통합 모니터링과 체계적인 컨설팅,<br>
        세스코 환경위생용품 솔루션(세스케어)을 통해<br>
        가장 쉽고 효과적으로 관리해 드리는<span class="br mo"></span> 토탈 환경위생 솔루션 입니다.</p>
      </div>
    </div>
    <div class="location_wrap">
      <ul class="loca menu2">
        <li><a href="/front/main" class="loca_home"><span>Home</span></a></li>
        <li class="depth depth1"><a href="/front/solution/air"><span>솔루션소개</span></a></li>
        <li class="depth depth2 last"><a href="#" class="more"><span>세스코 생활환경위생 솔루션</span></a>
          <ul class="active">
            <li><a href="/front/solution/air"><span>세스코 공기질 안심관리 솔루션(Air)</span></a></li>
            <li><a href="/front/solution/water"><span>세스코 수질 안심관리 솔루션(Water)</span></a></li>
            <li><a href="/front/solution/vcs"><span>세스코 바이러스케어 시스템 (VCS)</span></a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="content_wrap">
      <div class="cont_tit">
        <h3>세스케어(cescare) 란?</h3>
        <p class="txt1"><b>깨끗하고 건강한 삶을 위해 유해 환경으로부터 나를 보호해주는 환경위생 토탈 솔루션 DIY브랜드 입니다.</b><br>
        세스코는 40여 년간 축적해 온 세스코 ‘Science’를 바탕으로 특급 호텔부터 동네 맛집에 이르기까지, 국내의 다양한 주방 환경과 생활 환경을 구석구석 관찰하고 케어해왔습니다.<br>
      세스코 과학으로 관리하는 [생활위생 브랜드] 세스케어, 세스케어는 세스코가 개발하여 자신 있게 선보이는 환경위생솔루션 브랜드입니다.</p>
      </div>

      <section class="solution_info_section bg_s_life sBox">
        <img src="/resources/front/assets/images/bg/bg_s_life_m.jpg" alt="" class="img_life mo">
        <div class="solution_info_div life">
          <h4 class="txt1">Essential Science, <em>cescare</em></h4>
          <p class="txt2">환경을 위협하는 요소만을 연구하는 세스코 과학 연구소에서<span class="br pc"></span> 안전한 세상에 꼭 필요한 생활환경위생용품<span class="br mo"></span> 세스케어를 만듭니다.</p><!-- 수정 -->
          <ul class="life_icon_div">
            <li>
              <i class="ico_life ico_life01"></i>
              <span class="txt_life">과학<br>Science On Life</span>
              <p class="txt_life2">안전한 삶을 위협하는 모든 위해요소를
              찾아내고, 솔루션을 만드는 과학에 집중</p>
            </li>
            <li>
              <i class="ico_life ico_life02"></i>
              <span class="txt_life">안심<br>Safe On Life</span>
              <p class="txt_life2">제품 성분이<span class="br mo"></span> 위해요소가<span class="br pc"></span>되지 않도록 안전한 성분에 집착</p>
            </li>
            <li>
              <i class="ico_life ico_life03"></i>
              <span class="txt_life">함께<br>Together On Life</span>
              <p class="txt_life2">함께하는 미래를 꿈꾸고, 안전한<span class="br pc"></span>미래를 약속하는 친환경 과학 실천</p>
            </li>
          </ul>
        </div>
      </section>

      <section class="life_goods_section">
        <div class="cont_tit">
          <h3>세스케어의 대표상품을 소개합니다.</h3>
        </div>
        <ul>
          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_01.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 기름때세정제 파워</p>
            <p class="txt">가스레인지, 후드 등의 눌어붙은 찌든 기름때 제거</p>   
          </li>
          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_02.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 주방세제 프리미엄</p>
            <p class="txt">프로폴리스 추출물이 함유되어 풍성한 거품으로 야채, 과일까지 세척</p>   
          </li>
          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_03.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 곡물발효 살균소독제</p>
            <p class="txt">곡물과 효모로 생성된 에탄올이 함유되어 식기류 등<br>모든 기물의 표면을 살균</p>   
          </li>

          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_04.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 핸드워시 퓨어폼</p>
            <p class="txt">무향의 풍성한 거품과뛰어난 세정력</p>   
          </li>
          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_05.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 곰팡이제거 파워젤</p>
            <p class="txt">욕실 타일과 실리콘에 있는 곰팡이 제거</p>   
          </li>
          <li class="goods_card">
            <img src="/resources/front/assets/images/goods_06.jpg" alt="세스케어 기름때세정제 파워">
            <p class="tit">세스케어 배수구클리너</p>
            <p class="txt">강력한 발포력 및 세정력으로 배수구 및 트렌치 내부의 유기물 제거</p>   
          </li>
        </ul>
      </section>

      <section class="total_solution_section">
        <div class="cont_tit">
          <h3>세스케어 TOTAL 솔루션</h3>
        </div>
        <div class="total_cont">
          <div class="div h126">
            <div class="total_tit">
              <span>
                <i class="ico_t ico_t1"></i>
                <h4>주방/청소세제</h4>
              </span>
            </div>  
            <div class="total_list">
              <ul>
              <li>주방세제 라이트</li>
              <li>주방세제 프리미엄</li>
              <li>식기세척기 세제</li>
              <li>기름세정제 파워</li>

              <li>곰팡이제거 파워젤</li>
              <li>베이킹소다</li>
              <li>바닥벽면세정제</li>
              <li>바닥벽면세정제 욕실용</li>

              <li>배수구클리너</li>
              <li>세탁조클리너</li>
              </ul>
            </div>
          </div>
          <div class="div">
            <div class="total_tit">
              <span>
              <i class="ico_t ico_t2"></i>
              <h4>세탁세제/섬유유연제</h4>
              </span>
            </div>  
            <div class="total_list">
              <ul>
              <li>세탁세제 퓨어</li>
              <li>섬유유연제 퓨어</li>
              </ul>
            </div>
          </div>
          <div class="div">
            <div class="total_tit">
              <span>
              <i class="ico_t ico_t3"></i>
              <h4>탈취/제습제</h4>
              </span>
            </div>  
            <div class="total_list">
              <ul>
              <li>섬유탈취제</li>
              <li>살균탈취제</li>
              <li>습기제거제</li>
              </ul>
            </div>
          </div>
          <div class="div h126">
            <div class="total_tit">
              <span>
              <i class="ico_t ico_t4"></i>
              <h4>위생용품</h4>
              <span>
            </div>  
            <div class="total_list">
              <ul>
              <li>미세먼지 마스크</li>
              <li>비말차단 마스크</li>

              <li>핸드워시 퓨어폼</li>
              <li>핸드워시 소프트폼</li>

              <li>곡물 발효 살균소독제</li>
              <li>곡물발표 살균소독제 75</li>

              <li>손소독제 네이처겔</li>
              <li>손소독제 파워겔</li>

              <li>손소독제 퓨어겔</li>
              <li>세스코 안심물티슈</li>

              <li>세스케어 안심물티슈</li>
              <li>세스코 안심물티슈 맞춤형</li>
              </ul>
            </div>
          </div>
          <div class="div">
            <div class="total_tit">
              <span>
              <i class="ico_t ico_t5"></i>
              <h4>살충/기피제</h4>
              </span>
            </div>  
            <div class="total_list">
              <ul>
              <li>플라이스틱</li>
              <li>초파리유인제</li>
              <li>모기 에어로솔</li>
              </ul>
            </div>
          </div>
          <div class="div h126">
            <div class="total_tit">
              <span>
              <i class="ico_t ico_t6"></i>
              <h4>기타/도구 용품</h4>
              </span>
            </div>  
            <div class="total_list">
              <ul>
              <li>바닥솔/브러쉬/<br> 스크래퍼/세척폼건/ <br>보호안경/소분용 펌프</li>
              <li>랩&라벨 스테이션/ <br>청소도구걸이/ <br>식품안전위생 스티커</li>
              <li>주방수세미/<br>강력 손잡이 수세미</li>
              </ul>
            </div>
          </div>
          
        </div>
      </section>

    </div>

  </div><!-- //container -->

  <%@ include file="/WEB-INF/views/front/include/footer.jsp"%>
</div>
<%@ include file="/WEB-INF/views/front/pages/solution/life-js.jsp"%>
</body>

</html>
