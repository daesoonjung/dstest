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
			<h2>공지사항 관리</h2>
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
	    				<div class="ipt_div pdt">
			              <div class="ipt_rdo_div">
			                <input type="radio" id="notice" name="noti" checked="checked">
			                <label for="notice"><span>공지</span></label>
			              </div>
			              <div class="ipt_rdo_div">
			                <input type="radio" id="new" name="noti">
			                <label for="new"><span>새소식</span></label>
			              </div>
			            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th><em class="point">*</em> 제목</th>
	    			<td>
		    			<div class="ipt_div">
			              <input type="text" class="" id="">
			            </div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th><em class="point">*</em> 내용</th>
	    			<td>
		    			<div class="editor_div">에디터영역</div>
	    			</td>
	    		</tr>
	    		<tr>
	    			<th>파일첨부</th>
	    			<td>
	    				<div class="add_file_div inlineB">
	        				<div class="filebox">
	        					<label for="ex_filename1" class="btn btn-gray">파일선택</label>
	        					<input class="upload-name ipt" value="선택된 파일 없음" disabled="disabled">
	        					<input type="file" id="ex_filename1" class="upload-hidden">
	        					<button class="btn btn-gray2">저장</button>
	        				</div>
	        				<p class="small_txt">※ 5Mb 이하의 하나의 파일만 업로드 가능합니다.</p>
        				</div>
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
<%@ include file="/WEB-INF/views/back/pages/community/notice/view-js.jsp"%>
</body>
</html>