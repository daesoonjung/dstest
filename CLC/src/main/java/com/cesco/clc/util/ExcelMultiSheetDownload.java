package com.cesco.clc.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.MapUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;

/**
 * Excel 생성
 * @author KHJ
 *
 */
public class ExcelMultiSheetDownload {
	HSSFWorkbook wb = new HSSFWorkbook();
	//HSSFSheet sheet = wb.createSheet();
	ArrayList<HSSFSheet> sheets = null;
	HSSFCellStyle styleHeader = wb.createCellStyle();
	HSSFCellStyle styleNumber = wb.createCellStyle();
	HSSFCellStyle styleDate = wb.createCellStyle();
	HSSFCellStyle styleText = wb.createCellStyle();
	
	HttpServletResponse response;
	//int startRow = 2;
	//int startCol = 0;
	int [] startRows = null;
	int [] startCols = null;
	
	public ExcelMultiSheetDownload(HttpServletResponse res, ArrayList<String> sheetTitles){
		this.response = res;
		defaultStyle();
		int sheetCount = sheetTitles.size();
		this.startRows = new int[sheetCount];
		this.startCols = new int[sheetCount];
		
		this.sheets = new ArrayList<HSSFSheet>();
		
		for (int i=0; i<sheetCount; i++)
		{
			this.sheets.add(wb.createSheet(sheetTitles.get(i)));
			this.setRow(i, 0);
			this.setCol(i, 0);
		}
	}
	
	/**
	 * 시작열 세팅
	 * @param row
	 */
	public void setRow(int sheetIndex, int row){
		if (sheets.size()-1 > sheetIndex)
			return;
		this.startRows[sheetIndex] = row;
	}
	
	/**
	 * 시작행 세팅
	 * @param col
	 */
	public void setCol(int sheetIndex, int col){
		if (sheets.size()-1 > sheetIndex)
			return;
		this.startCols[sheetIndex] = col;
	}
	
	/**
	 * 제목 설정
	 * @param title
	 * @throws UnsupportedEncodingException 
	 */
	public void setTitle(int sheetIndex, String title) throws UnsupportedEncodingException{
		HSSFCellStyle style = wb.createCellStyle();
		HSSFFont titleFont = wb.createFont();
		titleFont.setFontName("굴림체");
		titleFont.setFontHeightInPoints((short) 14);
		titleFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		style.setFont(titleFont);
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);

		HSSFSheet objsheet = this.sheets.get(sheetIndex);
		HSSFRow objRow = objsheet.createRow(0);
		this.setRow(sheetIndex, 2);
		
		HSSFCell cell = objRow.createCell(startCols[sheetIndex]);
		cell.setCellStyle(style);
		cell.setCellValue(title);
		
		//this.response.setHeader("Content-Disposition", "inline; filename=" + URLEncoder.encode(title, "utf-8") + ".xls");		
	}
	
	public void setOnlyFileName(String title) throws UnsupportedEncodingException{
		this.response.setHeader("Content-Disposition", "inline; filename=" + URLEncoder.encode(title, "utf-8") + ".xls");		
	}
	
	/**
	 * 리스트 해더명 설정
	 * @param headerColumn
	 */
	public void setHeader(int sheetIndex, String[][] data){
		HSSFSheet objsheet = this.sheets.get(sheetIndex);
		HSSFRow objRow = objsheet.createRow(startRows[sheetIndex]);
		objRow.setHeight( ( short )500);
		int col = startCols[sheetIndex];
		
		for(int i=0;i<data.length;i++){
			HSSFCell cell = objRow.createCell(col);
			
			cell.setCellStyle(getStyleTitle(data[i][0]));
	        cell.setCellValue(data[i][0]);
	        int maxColumnWidth = 255*256;
	        int width = (data[i][0].toString().length() + 1) * 1000;
	        if (width > maxColumnWidth) { 
                width = maxColumnWidth; 
            } 
			objsheet.setColumnWidth(col, width);
	        col++;
	        /*
	         int col = startCols[sheetIndex];
            double width = objsheet.getColumnWidth(col);
            if (width != -1)
            {
                width *= 256; 
                int maxColumnWidth = 255*256;
                if (width > maxColumnWidth) { 
                    width = maxColumnWidth; 
                } 
                objsheet.setColumnWidth(col, (int)(width)); 
            }
	         * */
		}
	}
	
	/**
	 * 데이터 바인드
	 * @param list
	 * @param dataColumn
	 */
	public void setData(int sheetIndex, List<Map<String, Object>> list, String[][] data) {
		HSSFSheet objsheet = this.sheets.get(sheetIndex);
		int row = startRows[sheetIndex] + 1; // 행 시작 번호
		int lastCol = data.length-1; // 마지막 열 번호
		
		setHeader(sheetIndex, data);
		
		for(int i=0;i<list.size();i++){
			HSSFRow objRow = objsheet.createRow(row);
			Map<String, Object> tMap = list.get(i);

			int col = startCols[sheetIndex];	
			for(int j=0;j<data.length;j++){
				String column = data[j][1];
				HSSFCell cell = objRow.createCell(col);
				String value = column == "ROWNUM" ? String.valueOf(i+1) : MapUtils.getString(tMap, column, "");
								
				cell.setCellStyle(getStyle(value));
				cell.setCellValue(value);
				col++;
			}
			row++;
		}
		
		//제목병합
		//this.sheet.addMergedRegion(new CellRangeAddress(0, 0, startCol, lastCol));
		//objsheet.addMergedRegion(new CellRangeAddress(0, 0, startCols[sheetIndex], lastCol));
	}

	/**
	 * 엑셀 출력
	 */
	public void getFlush(){
		try {			
			this.response.setContentType( "application/vnd.ms-exel;charset=euc-kr" );	        
			OutputStream output = this.response.getOutputStream();
			this.wb.write(output);
			output.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 해더 스타일
	 * @param value
	 * @return
	 */
	private HSSFCellStyle getStyleTitle(String value){
		return getStyle(value, true);
	}
	
	/**
	 * 데이터 스타일
	 * @param value
	 * @return
	 */
	private HSSFCellStyle getStyle(String value){
		return getStyle(value, false);
	}
	
	/**
	 * 데이터그리드 스타일
	 * @param value
	 * @param title
	 * @return
	 */
	private HSSFCellStyle getStyle(String value, boolean header){
		HSSFCellStyle style;
		//해더
		if(header){
			style = styleHeader;
			style.setFillForegroundColor( HSSFColor.PALE_BLUE.index );
	        style.setFillPattern( HSSFCellStyle.SOLID_FOREGROUND );
	        style.setAlignment( HSSFCellStyle.ALIGN_CENTER );
	    //데이터
		}else{		
			if(NumberUtil.isNumber(value)){
				style = styleNumber;
		        style.setAlignment( HSSFCellStyle.ALIGN_RIGHT );
			}else if(DateUtil.isDate(value)){
				style = styleDate;
		        style.setAlignment( HSSFCellStyle.ALIGN_CENTER );
			}else{
				style = styleText;
				style.setAlignment( HSSFCellStyle.ALIGN_LEFT );
			}
		}
		
		return style;        
	}
	
	/**
	 * 기본 스타일
	 */
	private void defaultStyle(){
		HSSFCellStyle style = wb.createCellStyle();
		
		style.setBorderBottom( HSSFCellStyle.BORDER_THIN );
        style.setBorderLeft( HSSFCellStyle.BORDER_THIN );
        style.setBorderRight( HSSFCellStyle.BORDER_THIN );
        style.setBorderTop( HSSFCellStyle.BORDER_THIN );
        style.setVerticalAlignment( HSSFCellStyle.ALIGN_FILL );
        
        styleHeader.cloneStyleFrom(style);
        styleNumber.cloneStyleFrom(style);
        styleDate.cloneStyleFrom(style);
        styleText.cloneStyleFrom(style);
	}
}