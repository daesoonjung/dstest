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
			<h2>Q&amp;A 관리</h2>
		</div>

		<form action="" method="">
		<table class="writeT">
			<colgroup>
	    		<col width="140px">
	    		<col width="*">
	    		<col width="140px">
	    		<col width="*">
	    		<col width="*">
	    	</colgroup>
	    	<tbody>
	    		<tr>
	    			<th>이름</th>
	    			<td>신*근</td>
	    			<th>이메일</th>
	    			<td>abc@abcd.efg</td>
	    			<td class="td_state">비밀글</td>
	    		</tr>
	    		<tr>
	    			<th>질문내용</th>
	    			<td colspan="4">안녕하세요 오늘 입사지원했습니다.<br>
	    				합격하게되면 교육을 받고 교육비를 받을 수 있다고 알고있는데
	    				교육비는 언제 받을수있나요?
	    			</td>
	    		</tr>
	    		<tr>
	    			<th><em class="point">*</em> 답변</th>
	    			<td colspan="4">
		    			<textarea class="txtarea">안녕하세요 SOL플래너에 지원해 주셔서 감사합니다. 
		    			</textarea>
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
<%@ include file="/WEB-INF/views/back/pages/community/qna/view-js.jsp"%>
</body>
</html>