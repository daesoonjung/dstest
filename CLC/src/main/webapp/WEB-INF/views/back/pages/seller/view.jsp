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
			<h2>판매인 목록</h2>
		</div>

		<h3 class="bar_tit">판매인 정보</h3>

		<form action="" method="">
		<table class="writeT">
			<colgroup>
	    		<col width="140px">
	    		<col width="*">
	    		<col width="140px">
	    		<col width="*">
	    	</colgroup>
	    	<tbody>
	    		<tr>
	    			<th>이름</th>
	    			<td>
	    				<div class="ipt_div">
			              <input type="text" name="" placeholder="홍길동" class="ipt_w1">
			            </div>
	    			</td>
	    			<th>생년월일</th>
	    			<td>
	    				<div class="ipt_div">
			              <input type="date" class="ipt_date ipt_w1" id="">
			            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>성별</th>
	    			<td>
	    				<div class="ipt_div pdt">
		              <div class="ipt_rdo_div">
		                <input type="radio" id="male" name="sex" checked="checked">
		                <label for="male"><span>남성</span></label>
		              </div>
		              <div class="ipt_rdo_div">
		                <input type="radio" id="female" name="sex">
		                <label for="female"><span>여성</span></label>
		              </div>
		            </div>
	    			</td>
	    			<th>최종학력</th>
	    			<td>
	    				<div class="ipt_div pdt">
		              <div class="ipt_rdo_div">
		                <input type="radio" id="edu0" name="edu" checked="checked">
		                <label for="edu0"><span>고졸</span></label>
		              </div>
		              <div class="ipt_rdo_div">
		                <input type="radio" id="edu1" name="edu">
		                <label for="edu1"><span>전문대졸</span></label>
		              </div>
		              <div class="ipt_rdo_div">
		                <input type="radio" id="edu2" name="edu">
		                <label for="edu2"><span>대졸</span></label>
		              </div>
		              <div class="ipt_rdo_div">
		                <input type="radio" id="edu3" name="edu">
		                <label for="edu3"><span>기타</span></label>
		              </div>
		            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>소속</th>
	    			<td>
						<select class="s_w1">
							<option>부산지국</option>
						</select>
	    			</td>
	    			<th>직책</th>
	    			<td>
						<div class="ipt_div pdt">
							<div class="ipt_rdo_div">
								<input type="radio" id="posi0" name="posi" checked="checked">
								<label for="posi0"><span>지국장</span></label>
							</div>
							<div class="ipt_rdo_div">
								<input type="radio" id="posi1" name="posi">
								<label for="posi1"><span>지국팀장</span></label>
							</div>
							<div class="ipt_rdo_div">
								<input type="radio" id="posi3" name="posi">
								<label for="posi3"><span>SOL플래너</span></label>
							</div>
						</div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>휴대전화</th>
	    			<td>
						<div class="ipt_div phone">
							<select class="s_w2">
								<option>010</option>
							</select>
							<span class="line">-</span>
							<input type="text" name="" maxlength="4" placeholder="1234" class="ipt_w2">
							<span class="line">-</span>
							<input type="text" name="" maxlength="4" placeholder="5678" class="ipt_w2">
						</div>
	    			</td>
	    			<th>이메일</th>
	    			<td>
						<div class="ipt_div email">
							<input type="text" name="" placeholder="" class="ipt_w2">
							<span class="line">@</span>
							
							<input type="text" name="" placeholder="직접입력" class="ipt_w3">
							<select class="s_w3">
								<option>선택</option>
								<option>naver.com</option>
							</select>
						</div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>주소</th>
	    			<td colspan="3">
						<div class="ipt_div address">
							<div class="mb10">
								<input type="text" name="" disabled="disabled" class="ipt_a1" value="12345">
								<a href="javascript:void(0)" class="btn btn-gray2">우편번호 찾기</a>
							</div>
							<div>
								<input type="text" name="" class="ipt_a2">
								<input type="text" name="" placeholder="나머지 주소" class="ipt_a2 mrx">
							</div>
						</div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>이전 활동경험</th>
	    			<td colspan="3" class="activity">
						<div class="div pdt">
							<div class="ipt_rdo_div">
								<input type="radio" id="exp0" name="exp" checked="checked">
								<label for="exp0"><span>유</span></label>
							</div>
							<div class="ipt_rdo_div">
								<input type="radio" id="ex1" name="exp">
								<label for="ex1"><span>무</span></label>
							</div>
						</div>
						<div class="div">
							<label for="" class="label2 mlx">회사명</label><input type="text" name="" class="ipt_w1">
							<label for="" class="label2">근무기간<small>(년월)</small></label><input type="text" name="" class="ipt_w1">
							<label for="" class="label2">활동지역</label><input type="text" name="" class="ipt_w1 mrx">
						</div>
						<div class="div">
							<label for="" class="label2 mlx">활동내용</label><textarea class="txtarea1">시설진단, 환경 솔루션 제공, 통합해충방제, 식품안전, 공기질안심관리 등 </textarea><a href="#" class="btn btn-gray2 btn_del"><i class="fas fa-times"></i></a>
						</div>
						<div class="div"><button type="button" class="btn btn-gray2 w100">+ 이전 활동이력 추가 등록</button></div>

						<div class="add_write_box active">
							<div class="div">
								<label for="" class="label2 mlx">회사명</label><input type="text" name="" class="ipt_w1">
								<label for="" class="label2">근무기간<small>(년월)</small></label><input type="text" name="" class="ipt_w1">
								<label for="" class="label2">활동지역</label><input type="text" name="" class="ipt_w1 mrx">
							</div>
							<div class="div">
								<label for="" class="label2 mlx">활동내용</label><textarea class="txtarea1"></textarea><a href="#" class="btn btn_register">등록</a>
							</div>
						</div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>운전면허</th>
	    			<td>
						<div class="ipt_div pdt">
							<div class="ipt_rdo_div">
								<input type="radio" id="d0" name="dd" checked="checked">
								<label for="d0"><span>유</span></label>
							</div>
							<div class="ipt_rdo_div">
								<input type="radio" id="d1" name="dd">
								<label for="d1"><span>무</span></label>
							</div>
						</div>
	    			</td>
	    			<th>차량소유여부</th>
	    			<td>
						<div class="ipt_div pdt">
							<div class="ipt_rdo_div">
								<input type="radio" id="c0" name="cc" checked="checked">
								<label for="c0"><span>유</span></label>
							</div>
							<div class="ipt_rdo_div">
								<input type="radio" id="c1" name="cc">
								<label for="c1"><span>무</span></label>
							</div>
						</div>
	    			</td>
	    		</tr>
	    	</tbody>
		</table>
		</form>

    <div class="btm_btn_div">
      <button type="submit" class="btn btn_regi"><span>등록</span></button>
      <a href="#" class="btn btn-gray">돌아가기</a>
    </div>

	</div>

</div>

<%@ include file="/WEB-INF/views/back/pages/seller/view-js.jsp"%>
</body>

</html>