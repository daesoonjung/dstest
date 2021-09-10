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

		<div class="srch_box">
			<div class="div">
				<label class="label2">지국</label>
				<select class="s_01">
					<option>전체</option>
				</select>

                <div class="chk_div">
		            <div class="ipt_chk_div">
		              <input type="checkbox" id="view0" name="view" class="ipt_chk">
		              <label for="view0" class="lable_chk"><span>지국장</span></label>
		            </div>
		            <div class="ipt_chk_div ml">
		              <input type="checkbox" id="view1" name="view" class="ipt_chk">
		              <label for="view1" class="lable_chk"><span>지국팀장</span></label>
		            </div>
		            <div class="ipt_chk_div ml">
		              <input type="checkbox" id="view2" name="view" class="ipt_chk">
		              <label for="view2" class="lable_chk"><span>SOL플래너</span></label>
		            </div>
		        </div>
		        <input type="text" name="" class="ipt_srch3">
				<button class="btn btn_srch">검색</button>
			</div>
		</div>

		<div class="tbl_wrap">
			<!-- 테이블영역 -->
			<div style="text-align:center;width:100%;border:1px solid #ddd;height:500px;vertical-align:middle;line-height:500px">임시 테이블영역(개발)</div>

			<div class="tbl_foot">
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
				<a href="/back/seller/view" class="btn btn-offer">판매인 신규등록</a>
			</div>
		</div>
		
	</div>

</div>

<%@ include file="/WEB-INF/views/back/pages/seller/list-js.jsp"%>

</body>
</html>