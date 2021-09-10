package com.cesco.clc.util;

import java.util.UUID;

/**
 * Number Utility Class <br>
 *
 */
public class UUIDgeneration {

	private UUIDgeneration() {
		throw new AssertionError();
	}

	public static String  getUUID()   {  
		 //UUID 생성
        String uuid = UUID.randomUUID().toString();
        // "-" 하이픈 제외
        uuid = uuid.replace("-", "");
        return uuid;
	}  
	
}
