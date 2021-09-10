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
			<h2>FAQ 관리</h2>
		</div>

		<form action="" method="">
		<table class="writeT">
			<colgroup>
	    		<col width="140px">
	    		<col width="*">
	    	</colgroup>
	    	<tbody>
	    		<tr>
	    			<th><em class="point">*</em> 구분</th>
	    			<td>
	    				<div class="ipt_div mr50">
			              <div class="ipt_rdo_div">
			                <input type="radio" id="faqAll" name="faq" checked="checked">
			                <label for="faqAll"><span>전체</span></label>
			              </div>
			              <div class="ipt_rdo_div">
			                <input type="radio" id="faq0" name="faq">
			                <label for="faq0"><span>SOL플래너 지원하기</span></label>
			              </div>
			              <div class="ipt_rdo_div">
			                <input type="radio" id="faq1" name="faq">
			                <label for="faq1"><span>SOL플래너 교육</span></label>
			              </div>
			              <div class="ipt_rdo_div">
			                <input type="radio" id="faq2" name="faq">
			                <label for="faq2"><span>SOL플래너 활동지원</span></label>
			              </div>
			              <div class="ipt_rdo_div">
			                <input type="radio" id="faq3" name="faq">
			                <label for="faq3"><span>기타</span></label>
			              </div>
			            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th><em class="point">*</em> 질문</th>
	    			<td>
		    			<div class="ipt_div">
			              <input type="text" class="" id="" value="지원자격은 어떻게되나요?">
			            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th><em class="point">*</em> 답변</th>
	    			<td>
		    			<textarea class="txtarea"></textarea>
	    			</td>
	    		</tr>
	    	</tbody>
		</table>

		<div class="btm_btn_div">
	      <button type="submit" class="btn btn_regi"><span>등록</span></button>
	      <a href="#" class="btn btn-gray">돌아가기</a>
	    </div>
		</form>
		
	</div>

</div>
<%@ include file="/WEB-INF/views/back/pages/community/faq/view-js.jsp"%>
</body>

</html>