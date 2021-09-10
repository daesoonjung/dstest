package com.cesco.clc.util;

import java.awt.Image;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.swing.ImageIcon;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUploadUtil {
	
    public static final int BUFF_SIZE = 2048;
    
    /**
     * 파일확장자 체크(복수)
     */
    public static boolean fileCheck(HttpServletRequest req, String[] paramNm, String[] ext) throws Exception{
    	MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) req;
    	boolean extchk = false;
    
		for(String param : paramNm){
	    	List<MultipartFile> files = multiRequest.getFiles(param);
	       	String[] notExt = {"jsp", "js", "java", "class", "css", "exe", "com", "bat"};
	    	
	    	if(files != null){
				for (MultipartFile multipartFile : files) {
					if(!multipartFile.isEmpty()){
						extchk = false;
						String fileName = multipartFile.getOriginalFilename();
						int index = fileName.lastIndexOf(".");
						String fileExt = fileName.substring(index + 1);
						//허용된 확장자
						if(ext != null){
							for(String tmp : ext){
								if(fileExt.toLowerCase().equals(tmp.toLowerCase())){
									extchk = true;
									break;
								}
							}
						}
						else
						{
							extchk = true;
							for(String tmp : notExt){
								if(fileExt.toLowerCase().equals(tmp)) return true;
							}

						}
						
						//허용되지 않는 확장자
						if(!extchk)
							return true;
					}
				}
	    	}
		}
    	
		return false;
    }
    
    /**
     * 파일확장자 체크(단수)
     */
    public static boolean fileCheck(HttpServletRequest req, String paramNm, String[] ext) throws Exception{
    	MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) req;
    	boolean extchk = false;

    	MultipartFile file = multiRequest.getFile(paramNm);
       	String[] notExt = {"jsp", "js", "java", "class", "css", "exe", "com", "bat"};
    	
    	if(file != null){
			if(!file.isEmpty()){
				extchk = false;
				String fileName = file.getOriginalFilename();
				int index = fileName.lastIndexOf(".");
				String fileExt = fileName.substring(index + 1);
				//허용된 확장자
				if(ext != null){
					for(String tmp : ext){
						if(fileExt.toLowerCase().equals(tmp.toLowerCase())){
							extchk = true;
							break;
						}
					}
				}
				else
				{
					extchk = true;
					for(String tmp : notExt){
						if(fileExt.toLowerCase().equals(tmp)) return true;
					}

				}
				
				//허용되지 않는 확장자
				if(!extchk)
					return true;
			}
    	}
	
    	
		return false;
    }
    
    public static boolean fileCheckMultiPartFile(MultipartFile file, String[] ext) throws Exception{
        boolean extchk = false;

        String[] notExt = {"jsp", "js", "java", "class", "css", "exe", "com", "bat"};
        
        if(file != null){
            if(!file.isEmpty()){
                extchk = false;
                String fileName = file.getOriginalFilename();
                int index = fileName.lastIndexOf(".");
                String fileExt = fileName.substring(index + 1);
                //허용된 확장자
                if(ext != null){
                    for(String tmp : ext){
                        if(fileExt.toLowerCase().equals(tmp.toLowerCase())){
                            extchk = true;
                            break;
                        }
                    }
                }
                else
                {
                    extchk = true;
                    for(String tmp : notExt){
                        if(fileExt.toLowerCase().equals(tmp)) return true;
                    }

                }
                
                //허용되지 않는 확장자
                if(!extchk)
                    return true;
            }
        }
    
        
        return false;
    }
   
    /**
     * 파일 업로드 (다수)
     * @param files
     * @param path
     * @return
     * @throws Exception
     */
	public static List<Map<String, Object>> fileUpload(List<MultipartFile> files, String path) throws Exception{		
		List<Map<String, Object>> tList = new ArrayList<Map<String, Object>>();
		int i = 0;
		
		try{
			if(files != null){
				for (MultipartFile multipartFile : files) {
					if(!multipartFile.isEmpty()){
						Map<String, Object> tMap = new HashMap<String, Object>();
						String fileName = multipartFile.getOriginalFilename();
						int index = fileName.lastIndexOf(".");
						String fileExt = fileName.substring(index + 1);
						
						
						File file = new File(path);
						if(!file.exists()) file.mkdirs();
						//File destination = File.createTempFile("temp", fileName, file);
						File destination = File.createTempFile("temp", "."+fileExt, file);
						tMap.put("fileName", fileName);
						tMap.put("fileExt", fileExt);
						tMap.put("fileSize", String.valueOf(multipartFile.getSize()));
						tMap.put("realName", destination.getName());
						tMap.put("filePath", path);				
						tList.add(i, tMap);			
						
						//파일카피
						FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(destination));
						i++;
					}
				}
			}
			
			return tList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 파일 업로드 (1개)
	 * @param multipartFile
	 * @param path
	 * @return
	 * @throws Exception
	 */
	public static Map<String, Object> fileUploadMap(MultipartFile multipartFile, String path) throws Exception{
		Map<String, Object> tMap = new HashMap<String, Object>();
		
		try{
			if(multipartFile != null){
				if(!multipartFile.isEmpty()){
					String fileName = multipartFile.getOriginalFilename();
					int index = fileName.lastIndexOf(".");
					String fileExt = fileName.substring(index + 1);
					
					File file = new File(path);
					if(!file.exists()) file.mkdirs();
					//File destination = File.createTempFile("temp", fileName, file);
					File destination = File.createTempFile("temp", "."+fileExt, file);
					
					tMap.put("fileName", fileName);
					tMap.put("fileExt", fileExt);
					tMap.put("fileSize", String.valueOf(multipartFile.getSize()));
					tMap.put("realName", destination.getName());
					tMap.put("filePath", path+"/"+destination.getName());
					tMap.put("Path", path);
					
					//파일카피
					FileCopyUtils.copy(multipartFile.getInputStream(), new FileOutputStream(destination));
				}
			}
			
			return tMap;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 폴더 삭제 
	 * @param fileName
	 * @param path
	 * @return 
	 * @throws Exception
	 */
	public static void folderFDelete(String path) throws Exception{
		try{
			File file = new File(path);
			if(file != null){
				File [] list = file.listFiles();
				if(list != null){
					for(File f : list){
						f.delete();
					}
				}			
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	/**
	 * 파일 삭제
	 * @param fileName
	 * @param path
	 * @throws Exception
	 */
	public static void fileDelete(String path, String fileName) throws Exception{
		try{
			if(!"".equals(fileName)){
				File file = new File(path +  "/" + fileName);
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 파일 삭제
	 * @param fileName
	 * @param path
	 * @throws Exception
	 */
	public static void fileDelete(String fileName) throws Exception{
		try{
			if(!"".equals(fileName)){
				File file = new File(fileName);
				if(file.exists()) file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	/**
	 * 파일 전체 삭제
	 * @param files
	 * @param path
	 * @throws Exception
	 */
	public static void fileDeleteOne(Map<String, Object> fMap, String path) throws Exception{
		try{
			if(!fMap.isEmpty()){
				//for(Map<String, Object> tMap : files){
					File file = new File(path + "/" + fMap.get("DELETEFILE").toString());
					if(file.exists()) file.delete();
				}
			//}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	public static void fileDeleteAll(List<Map<String, Object>> files) throws Exception{
		try{
			if(!files.isEmpty()){
				for(Map<String, Object> tMap : files){
					File file = new File(tMap.get("DELETEFILE").toString());
					if(file.exists()) file.delete();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	public static void fileDeleteAll(List<Map<String, Object>> files, String path) throws Exception{
		try{
			if(!files.isEmpty()){
				for(Map<String, Object> tMap : files){
					File file = new File(path + "/" + tMap.get("DELETEFILE").toString());
					if(file.exists()) file.delete();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	/**
	 * 이미지사이즈(Width)
	 * @param src
	 * @return
	 * @throws IOException
	 */
	@SuppressWarnings("deprecation")
	public static int getImgWidth(File src) throws IOException{
    	Image srcImg = null;
        String suffix = src.getName().substring(src.getName().lastIndexOf('.')+1).toLowerCase();
        if (suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")){
            srcImg = ImageIO.read(src);
        } else {
            // BMP가 아닌 경우 ImageIcon을 활용해서 Image 생성
            // 이렇게 하는 이유는 getScaledInstance를 통해 구한 이미지를
            // PixelGrabber.grabPixels로 리사이즈 할때
            // 빠르게 처리하기 위함이다.
            srcImg = new ImageIcon(src.toURI().toURL()).getImage();
        }
        
        int nWidth = srcImg.getWidth(null);
    	
    	return nWidth;
    }
	
	/**
	 * 이미지사이즈(Height)
	 * @param src
	 * @return
	 * @throws IOException
	 */
	@SuppressWarnings("deprecation")
	public static int getImgHeight(File src) throws IOException{
    	Image srcImg = null;
        String suffix = src.getName().substring(src.getName().lastIndexOf('.')+1).toLowerCase();
        if (suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")){
            srcImg = ImageIO.read(src);
        } else {
            // BMP가 아닌 경우 ImageIcon을 활용해서 Image 생성
            // 이렇게 하는 이유는 getScaledInstance를 통해 구한 이미지를
            // PixelGrabber.grabPixels로 리사이즈 할때
            // 빠르게 처리하기 위함이다.
            srcImg = new ImageIcon(src.toURI().toURL()).getImage();
        }
        
        int srcHeight = srcImg.getHeight(null);
    	
    	return srcHeight;
    }
	
	public static int getFileSize(String filepath){
	    int  nSize = 0;

	    File mFile = new File(filepath);
	    if (mFile.exists() )
	    {
	        nSize = (int)mFile.length();
	    }
	    return nSize;
	}
}
