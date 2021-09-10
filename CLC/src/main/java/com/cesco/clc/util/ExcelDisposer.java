package com.cesco.clc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelDisposer {
	
	private String excelFilePath = "";
	private String excelFileExt = "";
	
	public ArrayList<String> colNames = new ArrayList<String>();
	

	public ExcelDisposer(String excelFilePath, String excelFileExt){
		this.excelFilePath = excelFilePath;
		this.excelFileExt = excelFileExt.toLowerCase();
	}
	

	
	public ArrayList<HashMap<String, String>> dispose()
	{
        Iterator<Row> rowIterator = null;
        ArrayList<HashMap<String, String>> entriesExcel = new ArrayList<HashMap<String, String>> ();
        //ArrayList<String> colNames = new ArrayList<String>();

        try {
            FileInputStream file = new FileInputStream(new File(excelFilePath));
            if(excelFileExt.equals("xlsx"))
            {
                XSSFWorkbook workbook = new XSSFWorkbook(file);
                XSSFSheet sheet = workbook.getSheetAt(0);	
                rowIterator = sheet.iterator();	
            }
            else if(excelFileExt.equals("xls"))
            {
                HSSFWorkbook workbook = new HSSFWorkbook(file);
                HSSFSheet sheet = workbook.getSheetAt(0);
                rowIterator = sheet.iterator();
            }
            int rowIndex = 0;
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            while (rowIterator.hasNext()) 
            {
                Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                HashMap<String, String> entryExcelRow = new HashMap<String, String>();
					//int cellIndex = 0;
                while (cellIterator.hasNext()) 
                {
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) 
                    {
                        case Cell.CELL_TYPE_NUMERIC:
                            if (HSSFDateUtil.isCellDateFormatted(cell))
                            {
                                Date date = cell.getDateCellValue();
                                entryExcelRow.put(colNames.get(cell.getColumnIndex()), dateFormat.format(date));
                            }
                            else
                                entryExcelRow.put(colNames.get(cell.getColumnIndex()), Integer.toString((int)cell.getNumericCellValue()));
                            break;
                        case Cell.CELL_TYPE_STRING:
                            if(rowIndex == 0){
                                colNames.add(cell.getStringCellValue());
                            }
                            else
                            {
                                entryExcelRow.put(colNames.get(cell.getColumnIndex()), cell.getStringCellValue());
                            }
                            break;
                    }
                }
                if(rowIndex > 0)
                {						
                    entriesExcel.add(entryExcelRow);
                }
                rowIndex++;
            }
            file.close();				
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return entriesExcel;
    }
	
}
