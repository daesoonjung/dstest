package com.cesco.clc.util;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/**
 * Number Utility Class <br>
 *
 */
public class RandomUtil {
    private int certNumLength = 6;
    private int pwdLength = 8;
    private int couponLength = 10;
    private long couponSeed = 0;
    private int saltLength = 4;
    /*
    private final char[] passwordTable =  { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
                                            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                                            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
                                            'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&', '*',
                                            '(', ')', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
    */
    
    private final char[] passwordTable =  { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
            'w', 'x', 'y', 'z', '!', '@', '#', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
    
    
    private final Character[] couponTable   =  { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
            'w', 'x', 'y', 'z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
    /*
    private final char[] couponTable   =  { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
                                            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                                            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
                                            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
                                            'w', 'x', 'y', 'z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
                                            */

    public String excuteCertNumberGenerate() {
        Random random = new Random(System.currentTimeMillis());
        
        int range = (int)Math.pow(10,certNumLength);
        int trim = (int)Math.pow(10, certNumLength-1);
        int result = random.nextInt(range)+trim;
         
        if(result>range){
            result = result - trim;
        }
        
        return String.valueOf(result);
    }

    public int getCertNumLength() {
        return certNumLength;
    }

    public void setCertNumLength(int certNumLength) {
        this.certNumLength = certNumLength;
    }
    
    public String excutePwSaltGenerate() {
    	Random random = new Random(System.currentTimeMillis());
        int tablelength = passwordTable.length;
        StringBuffer buf = new StringBuffer();
        
        for(int i = 0; i < saltLength; i++) {
            buf.append(passwordTable[random.nextInt(tablelength)]);
        }
        
        return buf.toString();
    }

    public int getPwSaltLength() {
        return saltLength;
    }

    public void setPwSaltLength(int length) {
        this.saltLength = length;
    }

    public String excutePwdGenerate() {
        Random random = new Random(System.currentTimeMillis());
        int tablelength = passwordTable.length;
        StringBuffer buf = new StringBuffer();
        
        for(int i = 0; i < pwdLength; i++) {
            buf.append(passwordTable[random.nextInt(tablelength)]);
        }
        
        return buf.toString();
    }

    public int getPwdLength() {
        return pwdLength;
    }

    public void setPwdLength(int pwdLength) {
        this.pwdLength = pwdLength;
    }
    
    public String excuteCouponGenerate() {
        if (couponSeed == 0)
            couponSeed = System.currentTimeMillis();
        else
            couponSeed = (long) (couponSeed/1.8);
        
        List<Character> couponList = Arrays.asList(couponTable);
        
        Random random = new Random(couponSeed);
        //int tablelength = couponTable.length;
        int tablelength = couponList.size();
        StringBuffer buf = new StringBuffer();
        
        for(int i = 0; i < couponLength; i++) {
            Collections.shuffle(couponList);
            //buf.append(couponTable[random.nextInt(tablelength)]);
            buf.append(couponList.get(random.nextInt(tablelength)));
        }
        
        return buf.toString();
    }

    public int getCouponLength() {
        return couponLength;
    }

    public void setCouponLength(int couponLength) {
        this.couponLength = couponLength;
    }
}
