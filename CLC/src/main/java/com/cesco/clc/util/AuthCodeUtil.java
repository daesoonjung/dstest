package com.cesco.clc.util;

import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Digest Utility Class <br>
 * Based on string-specific character set or base64, provide functions such as
 * encode/decode function and string convert function by using digest algorithm
 * of MD5 or SHA.
 * 
 */
public class AuthCodeUtil {

	private AuthCodeUtil() {
		throw new AssertionError();
	}

	// ~ Static fields/initializers
	// =============================================

	/** The <code>Log</code> instance for this class. */
	//private static Logger logger = Logger.getLogger(AuthCodeUtil.class);
	private static Logger logger = LoggerFactory.getLogger(AuthCodeUtil.class);
	
	public static String getAuthCode() {
		Random random = new Random(System.currentTimeMillis());
	        
		int range = (int)Math.pow(10,6);
	    int trim = (int)Math.pow(10, 5);
	    int result = random.nextInt(range)+trim;
	         
	    if(result>range){
	    	result = result - trim;
	    }
	        
	    return String.valueOf(result);
	}

}
