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

		<div class="srch_box posiR">
			<div class="div mb10">
				<label class="label">제목</label>
				<input type="text" name="" class="ipt_srch2">	
				<button class="btn btn_srch">검색</button>	
			</div>
			<div class="div mb10">
				<label class="label">구분</label>
				<div class="ipt_div mr50">
	              <div class="ipt_rdo_div">
	                <input type="radio" id="qnaAll" name="qna" checked="checked">
	                <label for="qnaAll"><span>전체</span></label>
	              </div>
	              <div class="ipt_rdo_div">
	                <input type="radio" id="qna0" name="qna">
	                <label for="qna0"><span>답변완료</span></label>
	              </div>
	              <div class="ipt_rdo_div">
	                <input type="radio" id="qna1" name="qna">
	                <label for="qna1"><span>답변대기</span></label>
	              </div>
	            </div>
	        </div>    
	        <div class="div">
	            <label class="label">노출여부</label>
				<div class="ipt_div">
	              <div class="ipt_rdo_div">
	                <input type="radio" id="openAll" name="open" checked="checked">
	                <label for="openAll"><span>전체</span></label>
	              </div>
	              <div class="ipt_rdo_div">
	                <input type="radio" id="open0" name="open">
	                <label for="open0"><span>공개</span></label>
	              </div>
	              <div class="ipt_rdo_div">
	                <input type="radio" id="open1" name="open">
	                <label for="open1"><span>비공개</span></label>
	              </div>
	            </div>
	           
			</div>

			
		</div>

		<div class="tbl_wrap">
			<!-- 테이블영역 -->
			<div style="text-align:center;width:100%;border:1px solid #ddd;height:500px;vertical-align:middle;line-height:500px">임시 테이블영역(개발)</div>

			<div class="tbl_foot">
				<a href="NO_02.html" class="btn btn-gray fL">선택 삭제</a>
				<div class="paging">
					<a href="#" class="p_first"><i class="fas fa-angle-double-left"></i></a>
					<a href="#" class="p_prev"><i class="fas fa-angle-left"></i></a>
					<a href="javascript:void(0);" class="on">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a href="#">6</a>
					<a href="#">7</a>
					<a href="#">8</a>
					<a href="#">9</a>
					<a href="#">10</a>
					<a href="#" class="p_next"><i class="fas fa-angle-right"></i></a>
					<a href="#" class="p_last"><i class="fas fa-angle-double-right"></i></a>
				</div>
				<a href="/back/community/qna/view" class="btn btn-offer">등록</a>
			</div>
		</div>
		
	</div>

</div>
<%@ include file="/WEB-INF/views/back/pages/community/qna/list-js.jsp"%>
</body>
</html>