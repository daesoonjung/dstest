package com.cesco.clc.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.sql.Clob;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.web.util.HtmlUtils;

import java.io.File;
/**
 * String Utility Class
 * 
 */
public class StringUtil {

	private StringUtil() {
		throw new AssertionError();
	}

	// ~ Static fields/initializers
	// =============================================

	private static final char[] alphas = new char[] { 'A', 'B', 'C', 'D', 'E',
			'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
			'S', 'T', 'U', 'X', 'Y', 'V', 'W', 'Z', 'a', 'b', 'c', 'd', 'e',
			'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
			's', 't', 'u', 'x', 'y', 'v', 'w', 'z' };
	
	private static final char[] alphanumbers = new char[] { 'A', 'B', 'C', 'D', 'E',
            'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
            'S', 'T', 'U', 'X', 'Y', 'V', 'W', 'Z', 'a', 'b', 'c', 'd', 'e',
            'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
            's', 't', 'u', 'x', 'y', 'v', 'w', 'z', '0', '1', '2', '3', '4',
            '5', '6', '7', '8', '9' };
	
	private static final char[] numbers = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
	
	public static final String DEFAULT_EMPTY_STRING = "";

	private static final Random generator = new Random(System
			.currentTimeMillis());

	// ~ Methods
	// ================================================================

	/** For UTF-8 character set, 1 byte code */
	private static final int ONE_BYTE = 0x00007F;

	/** For UTF-8 character set, 3 byte code */
	private static final int THREE_BYTE = 0x00FFFF;

	/** For UTF-8 character set, 2 byte code */
	private static final int TWO_BYTE = 0x0007FF;

	/**
	 * Appends spaces to Stringwith the input length. <br>
	 * <div class="ko"> ????????? String??? ????????? ???????????? ?????? ???????????? ?????????. - ????????? ????????? 0?????? ?????? ??????
	 * ????????????. </div>
	 * 
	 * ex) addSpace("12345", 5) => "12345     "
	 * 
	 * @param str
	 *            string to be modified
	 * @param length
	 *            length of spaces
	 * @return string that is appended with spaces
	 */
	public static String addSpace(String str, int length) {
		StringBuffer stringBuffer = new StringBuffer();
		if (str == null) {
			if (length <= 0) {
				return null;
			}
		} else {
			stringBuffer.append(str);
		}
		for (int j = 0; j < length; j++) {
			stringBuffer.append(' ');
		}
		return stringBuffer.toString();
	}

	/**
	 * Appends a string to string array. <br>
	 * <div class="ko"> ????????? String[]??? ????????? String??? ????????????. </div>
	 * 
	 * ex) String[] test = {"aaa", "bbb", "ccc"}; addStringToArray(test, "ddd");
	 * 
	 * @param array
	 *            string array to be modified
	 * @param str
	 *            string to be appended
	 * @return string array that is appended with string
	 */
	public static String[] addStringToArray(String array[], String str) {
		String newArray[] = new String[array.length + 1];
		System.arraycopy(array, 0, newArray, 0, array.length);
		newArray[array.length] = str;
		return newArray;
	}

	/**
	 * Apply initial law to String. <br>
	 * <div class="ko"> ????????? ???????????? ??????????????? ???????????? ????????????.<br>
	 * 
	 * 1????????? 1?????? ?????? ?????? ??????<br>
	 * ???) ??????????????????????????? -> ???????????????????????????<br>
	 * 2?????? ?????? ???????????? ??????<br>
	 * ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ->
	 * ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????<br>
	 * ex) applyInitialLaw("????????????") => "????????????" </div>
	 * 
	 * @param str
	 *            string to be modified
	 * @return string that is applied with initial law
	 */
	public static String applyInitialLaw(String str) {

		String[] fstPtnP = { "???", "???", "???", "???", "???", "???", "???", "???", "???" };
		String[] fstPtnN = { "???", "???", "???", "???", "???", "???", "???", "???", "???" };

		String[] sndPtnP = { "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???" };
		String[] sndPtnN = { "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???", "???",
				"???", "???", "???", "???", "???", "???", "???", "???" };

		String outStr = "";
		String inStrAry[] = null;

		str = str.trim();

		int inStrSize = str.length();
		char[] chStrAry = str.toCharArray();

		// apply initial law to the first character
		if (inStrSize > 0) {
			inStrAry = new String[inStrSize];

			for (int i = 0; i < inStrSize; i++) {
				inStrAry[i] = String.valueOf(chStrAry[i]);
			}

			for (int i = 0; i < fstPtnP.length; i++) {
				if (inStrAry[0].compareTo(fstPtnP[i]) == 0) {
					inStrAry[0] = fstPtnN[i];
				}
				outStr = inStrAry[0];
			}
		}

		// apply initial law after the first character
		StringBuffer sb = new StringBuffer();

		if (inStrSize > 1) {
			inStrAry = new String[inStrSize];

			for (int i = 1; i < inStrSize; i++) {
				boolean isExsit = false;
				inStrAry[i] = String.valueOf(chStrAry[i]);

				for (int j = 0; j < sndPtnP.length; j++) {
					if (inStrAry[i].compareTo(sndPtnP[j]) == 0
							&& isExsit == false) {
						sb.append(sndPtnN[j]);
						isExsit = true;
					}
				}
				if (isExsit == false) {
					sb.append(inStrAry[i]);
				}
			}
			outStr += sb.toString();
		}
		return outStr;
	}

	/**
	 * Joins the elements of the provided array into a single String containing
	 * the provided list of elements. <div class="ko"> Object[]??? ???????????? ??????
	 * ","(delimiter)??? ??? element??? ???????????? String??? ????????????. - ????????? Object[]??? null??? ??????,
	 * null??? return??????. </div>
	 * 
	 * ex) String[] test = {"aaa", "bbb", "ccc"};
	 * arrayToCommaDelimitedString(test) => "aaa,bbb,ccc"
	 * 
	 * @param array
	 *            the array of values to join together
	 * @return the joined String that is seperatd by comma
	 */
	public static String arrayToCommaDelimitedString(Object array[]) {
		return arrayToDelimitedString(array, ",");
	}

	/**
	 * Joins the elements of the provided array into a single String containing
	 * the provided list of elements. <div class="ko"> Object[]??? ???????????? ??????
	 * delimiter??? ??? element??? ???????????? String??? ????????????. - ????????? Object[]??? null??? ??????, null???
	 * return??????. - delimiter??? null??? ??????, delimiter ?????? ???????????? String??? return??????.
	 * </div>
	 * 
	 * ex) String[] test = {"aaa", "bbb", "ccc"};
	 * arrayToDelimitedString(test,",") => "aaa,bbb,ccc"
	 * 
	 * @param array
	 *            the array of values to join together
	 * @param delimiter
	 *            delimiter for conversioin
	 * @return the joined String
	 */
	public static String arrayToDelimitedString(Object array[], String delimiter) {
		if (array == null) {
			return null;
		}
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < array.length; i++) {
			if (i > 0 && delimiter != null) {
				sb.append(delimiter);
			}
			sb.append(array[i]);
		}
		return sb.toString();
	}

	/**
	 * Converts asterisk to space in a String. <div class="ko"> ??????????????? ????????? ????????????
	 * '*'??? '**'??? ????????? ???????????? ????????????. </div>
	 * 
	 * ex) convertAsteriskToSpace("test**test") => "test  test"
	 * 
	 * @param str
	 *            string to be converted
	 * @return the converted string
	 */
	public static String asteriskToSpace(String str) {
		String target = "";
		target = str.replaceAll("\\*\\*", " ");
		target = target.replaceAll("\\*", " ");
		return target;
	}

	/**
	 * Changes case of first character in a String. <div class="ko"> ????????? String???
	 * ????????? ????????? ???????????? ???????????? ????????????. </div>
	 * 
	 * ex) changeFirstCharacterCase(true, "abcd") => "Abcd"
	 * changeFirstCharacterCase(false, "ABCD") => "aBCD"
	 * 
	 * @param capitalize
	 *            flag for case (true : uppper case, false : lower case)
	 * @param str
	 *            string to be modified
	 * @return the modified string
	 */
	private static String changeFirstCharacterCase(boolean capitalize,
			String str) {
		int strLen;
		if (str == null || (strLen = str.length()) == 0) {
			return str;
		}
		StringBuffer buf = new StringBuffer(strLen);
		if (capitalize) {
			buf.append(Character.toUpperCase(str.charAt(0)));
		} else {
			buf.append(Character.toLowerCase(str.charAt(0)));
		}
		buf.append(str.substring(1));
		return buf.toString();
	}

	/**
	 * Joins the elements of the provided collection into a single String
	 * containing the provided list of elements with comma delimeter. <div
	 * class="ko"> Collection??? ???????????? ?????? ","(delimiter)??? ??? element??? ???????????? String???
	 * ????????????. - ????????? Collection??? null??? ??????, null??? return??????. </div>
	 * 
	 * @param collection
	 *            the collection of values to join together
	 * @return the joined String that is seperatd by comma
	 */
	public static String collectionToCommaDelimitedString(
			Collection<String> collection) {
		return collectionToDelimitedString(collection, ",");
	}

	/**
	 * Joins the elements of the provided collection into a single String
	 * containing the provided list of elements with delimeter. <div class="ko">
	 * Collection??? ???????????? ?????? delimiter??? ??? element??? ???????????? String??? ????????????. - ?????????
	 * Collection??? null??? ??????, null??? return??????. - delimiter??? null??? ??????, delimiter ??????
	 * ???????????? String??? return??????. </div>
	 * 
	 * @param collection
	 *            the collection of values to join together
	 * @param delimiter
	 *            delimiter for conversioin
	 * @return the joined String that is seperatd by delimeter
	 */
	public static String collectionToDelimitedString(
			Collection<String> collection, String delimiter) {
		if (collection == null) {
			return null;
		}
		StringBuffer sb = new StringBuffer();
		Iterator<String> it = collection.iterator();
		int i = 0;
		for (; it.hasNext(); sb.append(it.next())) {
			if (i++ > 0 && delimiter != null) {
				sb.append(delimiter);
			}
		}
		return sb.toString();
	}

	/**
	 * Converts a single String with comma delimiter to Set of String. <div
	 * class="ko"> ????????? String??? ????????? ","(delimiter)??? ???????????? tokenize??? ??? Set?????? ????????????.
	 * - StringTokenizer??? ???????????? ?????? ????????????, ????????? delimiter ????????? ?????? ?????? token?????? ????????????. -
	 * ????????? String??? null??? ??????, null??? return??????. </div>
	 * 
	 * @param str
	 *            the silgle String to convert
	 * @return Set of String values
	 */
	public static Set<String> commaDelimitedStringToSet(String str) {
		Set<String> set = new HashSet<String>();
		String tokens[] = commaDelimitedStringToStringArray(str);
		if (tokens == null) {
			return null;
		}
		for (int i = 0; i < tokens.length; i++) {
			set.add(tokens[i]);
		}
		return set;
	}

	/**
	 * Converts a single String with comma delimiter to string array. <div
	 * class="ko"> ????????? String??? ????????? ","(delimiter)??? ???????????? tokenize??? ??? String[]???
	 * ????????????. - StringTokenizer??? ???????????? ?????? ????????????, ????????? delimiter ????????? ?????? ?????? token??????
	 * ????????????. - ????????? String??? null??? ??????, null??? return??????. </div> ex) String[] test;
	 * test = commaDelimitedStringToStringArray("aaa,bbb,ccc") => test[0]="aaa",
	 * test[1]="bbb"...
	 * 
	 * @param str
	 *            the silgle String to convert
	 * @return array of String values
	 */
	public static String[] commaDelimitedStringToStringArray(String str) {
		return delimitedStringToStringArray(str, ",");
	}

	/**
	 * Compare two words in lexicographical order. if the input string or string
	 * to compare with is <code>null</code>, return -1.
	 * 
	 * @param sourceStr
	 *            input string
	 * @param anotherStr
	 *            string to be compared with If return value is 0, the same
	 *            word, if it is under 0, the smaller one in lexicographical
	 *            order, if it is over 0, the bigger one in lexicographical
	 *            order.
	 * @see String#compareTo(String)
	 */
	public static int compareTo(String sourceStr, String anotherStr) {
		if (sourceStr == null || anotherStr == null) {
			return -1;
		}
		return sourceStr.compareTo(anotherStr);
	}

	/**
	 * Compare two words in lexicographical order. if the input string or string
	 * to compare with is <code>null</code>, return -1.
	 * 
	 * @param sourceStr
	 *            input string
	 * @param anotherStr
	 *            string to be compared with
	 * @return int If return value is 0, the same word, if it is under 0, the
	 *         smaller one in lexicographical order, if it is over 0, the bigger
	 *         one in lexicographical order.
	 * @see String#compareToIgnoreCase(String)
	 */
	public static int compareToIgnoreCase(String sourceStr, String anotherStr) {
		if (sourceStr == null || anotherStr == null) {
			return -1;
		}
		return sourceStr.compareToIgnoreCase(anotherStr);
	}

	/**
	 * 
	 * Checks that the String contains certain characters.
	 * 
	 * 
	 * A <code>null</code> String will return <code>false</code>. A
	 * <code>null</code> invalid character array will return <code>false</code>.
	 * An empty String ("") always returns false.
	 * 
	 * <pre>
	 * StringUtil.containsInvalidChars(null, *)       = false
	 * StringUtil.containsInvalidChars(*, null)       = false
	 * StringUtil.containsInvalidChars("", *)         = false
	 * StringUtil.containsInvalidChars("ab", "")      = false
	 * StringUtil.containsInvalidChars("abab", "xyz") = false
	 * StringUtil.containsInvalidChars("ab1", 'xyz")  = false
	 * StringUtil.containsInvalidChars("xbz", "xyz")  = true
	 * </pre>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @param invalidChars
	 *            an array of invalid chars, may be null
	 * @return false if it contains none of the invalid chars, or is null
	 */
	public static boolean containsInvalidChars(String str, char[] invalidChars) {
		if (str == null || invalidChars == null) {
			return false;
		}
		int strSize = str.length();
		int validSize = invalidChars.length;
		for (int i = 0; i < strSize; i++) {
			char ch = str.charAt(i);
			for (int j = 0; j < validSize; j++) {
				if (invalidChars[j] == ch) {
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * Checks that the String contains certain characters.
	 * 
	 * A <code>null</code> String will return <code>false</code>. A
	 * <code>null</code> invalid character array will return <code>false</code>.
	 * An empty String ("") always returns false.
	 * 
	 * <pre>
	 * StringUtil.containsInvalidChars(null, *)       = false
	 * StringUtil.containsInvalidChars(*, null)       = false
	 * StringUtil.containsInvalidChars("", *)         = false
	 * StringUtil.containsInvalidChars("ab", "")      = false
	 * StringUtil.containsInvalidChars("abab", "xyz") = false
	 * StringUtil.containsInvalidChars("ab1", "xyz")  = false
	 * StringUtil.containsInvalidChars("xbz", "xyz")  = true
	 * </pre>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @param invalidChars
	 *            a String of invalid chars, may be null
	 * @return false if it contains none of the invalid chars, or is null
	 */
	public static boolean containsInvalidChars(String str, String invalidChars) {
		if (str == null || invalidChars == null) {
			return true;
		}
		return containsInvalidChars(str, invalidChars.toCharArray());
	}

	/**
	 * It returns true if string contains a sequence of the same character.
	 * 
	 * <pre>
	 * StringUtil.containsMaxSequence("password", "2") = true
	 * StringUtil.containsMaxSequence("my000", "3")    = true
	 * StringUtil.containsMaxSequence("abbbbc", "5")   = false
	 * </pre>
	 * 
	 * @param str
	 *            original String
	 * @param maxSeqNumber
	 *            a sequence of the same character
	 * @return which contains a sequence of the same character
	 */
	public static boolean containsMaxSequence(String str, String maxSeqNumber) {
		int occurence = 1;
		int max = NumberUtil.string2integer(maxSeqNumber);
		if (str == null) {
			return false;
		}

		int sz = str.length();
		for (int i = 0; i < (sz - 1); i++) {
			if (str.charAt(i) == str.charAt(i + 1)) {
				occurence++;

				if (occurence == max)
					return true;
			} else {
				occurence = 1;
			}
		}
		return false;
	}

	/**
	 * Convert a string that may contain underscores to camel case.
	 * 
	 * @param underScore
	 *            Underscore name.
	 * @return Camel case representation of the underscore string.
	 */
	public static String convertToCamelCase(String underscore) {
		return convertToCamelCase(underscore, '_');
	}

	/**
	 * Convert a camel case string to underscore representation.
	 * 
	 * @param camelCase
	 *            Camel case name.
	 * @return Underscore representation of the camel case string.
	 */
	public static String convertToCamelCase(String targetString, char posChar) {
		StringBuilder result = new StringBuilder();
		boolean nextUpper = false;
		String allLower = targetString.toLowerCase();

		for (int i = 0; i < allLower.length(); i++) {
			char currentChar = allLower.charAt(i);
			if (currentChar == posChar) {
				nextUpper = true;
			} else {
				if (nextUpper) {
					currentChar = Character.toUpperCase(currentChar);
					nextUpper = false;
				}
				result.append(currentChar);
			}
		}
		return result.toString();
	}

	/**
	 * Convert a camel case string to underscore representation.
	 * 
	 * @param camelCase
	 *            Camel case name.
	 * @return Underscore representation of the camel case string.
	 */
	public static String convertToUnderScore(String camelCase) {
		String result = "";
		for (int i = 0; i < camelCase.length(); i++) {
			char currentChar = camelCase.charAt(i);
			// This is starting at 1 so the result does not end up with an
			// underscore at the begin of the value
			if (i > 0 && Character.isUpperCase(currentChar)) {
				result = result.concat("_");
			}
			result = result.concat(Character.toString(currentChar)
					.toLowerCase());
		}
		return result;
	}

	/**
	 * Count the number of occurrences of pattern in a String. <div class="ko">
	 * ??? String ??????(sub)??? ????????? ?????? String ??????(main)????????? ??? ??? ??????????????? ????????????. - ?????? ????????? ?????????
	 * ?????????????????? ???????????? ????????? ?????? ????????? ????????????. + ?????? ??????, "aa"??? "aaa"?????? ??? ??? ???????????? ?????? ?????????, ??? ???
	 * ???????????? ????????? ????????????. </div> ex) countPattern("aaa", "aa") => 1
	 * 
	 * @param str
	 *            the String to check
	 * @param pattern
	 *            the pattern to count
	 * @return the number of occurrences
	 */
	public static int countPattern(String str, String pattern) {
		if (str == null || pattern == null || "".equals(pattern)) {
			return 0;
		}
		int count = 0;
		int pos = 0;
		for (int index = 0; (index = str.indexOf(pattern, pos)) != -1;) {
			count++;
			pos = index + pattern.length();
		}
		return count;
	}

	/**
	 * Compare the first and second string. If they are the same, return the
	 * third string, and if they are different, return the fourth string.
	 * 
	 * @param source
	 *            value to compare.
	 * @param target
	 *            value that is compared against source
	 * @param result
	 *            value returned
	 * @param base
	 *            optional string
	 * @return String to be decoded
	 */
	public static String decode(String source, String target, String result,
			String base) {
		if (source == null && target == null) {
			return result;
		} else if (source == null && target != null) {
			return base;
		} else if (source.trim().equals(target)) {
			return result;
		}
		return base;
	}

	/**
	 * Removes all occurrences of characters from within the source string. <div
	 * class="ko"> ??? String ?????? ????????? ?????? ?????? ?????? ????????? ?????? character?????? ????????????. </div> ex)
	 * deleteChars("zzAccBxx", "AB") => "zzccxx"
	 * 
	 * @param str
	 *            the source String to search
	 * @param chars
	 *            the char to search for and remove
	 * @return the substring with the char removed if found
	 */
	public static String deleteChars(String str, String chars) {
		if (str == null || chars == null) {
			return str;
		}
		String value = str;
		for (int i = 0; i < chars.length(); i++) {
			value = removeChar(value, chars.charAt(i));
		}
		return value;
	}

	/**
	 * Removes all occurrences of a substring from within the source string.
	 * <div class="ko"> ??? String ?????? ????????? ?????? ????????? ????????????. - ?????? ????????? ????????? ?????????????????? ????????????
	 * ????????? ?????? ????????? ????????????. + ?????????, ????????? ????????? old ????????? ?????? ?????? ??? ??????. + ?????? ??????,
	 * deletePattern("aababa", "aba")??? "aba"??? ??????. </div> ex)
	 * deletePattern("zzABCcc", "ABC") => "zzcc"
	 * 
	 * @param str
	 *            the source String to search
	 * @param pattern
	 *            the String to search for and remove
	 * @return the substring with the string removed if found
	 */
	public static String deletePattern(String str, String pattern) {
		return replacePattern(str, pattern, "");
	}

	/**
	 * Converts a single String with delimiter to string array. <div class="ko">
	 * - StringTokenizer??? ???????????? ?????? ????????????, ????????? delimiter ????????? ?????? ?????? token?????? ????????????. -
	 * ????????? String??? null??? ??????, null??? return??????. - delimiter??? null??? ??????, ????????? String???
	 * ????????? element??? ????????? String[]??? return??????. </div> ex) String[] test; test =
	 * delimitedStringToStringArray("aaa.bbb.ccc.ddd", "."); => test[0]="aaa",
	 * test[1]="bbb"...
	 * 
	 * @param str
	 *            the silgle String to convert
	 * @param delimiter
	 *            delimiter for conversioin
	 * @return array of String values
	 */
	public static String[] delimitedStringToStringArray(String str,
			String delimiter) {
		if (str == null) {
			return null;
		}
		if (delimiter == null) {
			return new String[] { str };
		}
		List<String> tokens = new ArrayList<String>();
		int pos = 0;
		for (int index = 0; (index = str.indexOf(delimiter, pos)) != -1;) {
			tokens.add(str.substring(pos, index));
			pos = index + delimiter.length();
		}
		if (pos <= str.length()) {
			tokens.add(str.substring(pos));
		}
		return tokens.toArray(new String[tokens.size()]);
	}

	/**
	 * Make a new String that filled original to a special char as ciphers
	 * 
	 * @param originalStr
	 *            original String
	 * @param ch
	 *            a special char
	 * @param ciphers
	 *            ciphers
	 * @return filled String
	 */
	public static String fillString(String originalStr, char ch, int ciphers) {
		int originalStrLength = originalStr.length();

		if (ciphers < originalStrLength)
			return null;

		int difference = ciphers - originalStrLength;

		StringBuilder strBuf = new StringBuilder();
		for (int i = 0; i < difference; i++)
			strBuf.append(ch);

		strBuf.append(originalStr);
		return strBuf.toString();
	}

	/**
	 * Return byte length for each letter of related character
	 * 
	 * @param charat
	 *            one English letter
	 * @return byte length of one related English letter
	 */
	public static int getByteLength(char charat) {
		int charCode = charat;

		if (charCode <= ONE_BYTE) {
			return 1;
		} else if (charCode <= TWO_BYTE) {
			return 2;
		} else if (charCode <= THREE_BYTE) {
			return 3;
		} else {
			return 4;
		}
	}

	/**
	 * Return total length of related string calculated in byte unit. If string
	 * is null, return -1.
	 * 
	 * @param str
	 *            input string
	 * @return int length of string
	 */
	public static int getByteLength(String str) {
		if (str == null) {
			return -1;
		}
		int size = 0;

		for (int i = 0; i < str.length(); i++) {
			size += getByteLength(str.charAt(i));
		}
		return size;
	}

	/**
	 * For given string, return number that includes related characters. If
	 * given string or character to be searched for is <code>null</code>, return
	 * -1.
	 * 
	 * @param str
	 *            input string
	 * @param chars
	 *            character arrangement to be searched for
	 * @return int number of strings included
	 */
	public static int getContainsCount(String str, char[] chars) {
		if (str == null || chars == null) {
			return -1;
		}
		int strSize = str.length();
		int validSize = chars.length;
		int check = 0;
		for (int i = 0; i < strSize; i++) {
			char ch = str.charAt(i);
			for (int j = 0; j < validSize; j++) {
				if (chars[j] == ch) {
					check += 1;
				}
			}
		}
		return check;
	}

	/**
	 * For the given string, return the number that includes the related string.
	 * 
	 * @param str
	 *            string to search in. Return 0 if this is null.
	 * @param sub
	 *            string to search for. Return 0 if this is null.
	 * @see org.springframework.util.StringUtils#countOccurrencesOf(String,
	 *      String)
	 */
	public static int getContainsCount(String str, String sub) {
		return org.springframework.util.StringUtils
				.countOccurrencesOf(str, sub);
	}

	/**
	 * 
	 * For given string regardless of upper case or lower case letters, return
	 * number that includes related characters. If given string or character to
	 * be searched for is <code>null</code>, return -1.
	 * 
	 * @param str
	 *            input string
	 * @param chars
	 *            string of characters to be searched for
	 * @return int number of strings included
	 */
	public static int getContainsCountIgnoreCase(String str, char[] chars) {
		char[] lowerChar = new char[chars.length];
		for (int j = 0; j < chars.length; j++) {
			String res = String.valueOf(chars[j]).toLowerCase();
			lowerChar[j] = res.charAt(0);
		}
		return getContainsCount(str.toLowerCase(), lowerChar);
	}

	/**
	 * For the given string, return the number that includes related string,
	 * regardless of upper case or lower case letters.
	 * 
	 * @param str
	 *            string to search in. Return 0 if this is null.
	 * @param sub
	 *            string to search for. Return 0 if this is null.
	 * @see org.springframework.util.StringUtils#countOccurrencesOf(String,
	 *      String)
	 */
	public static int getContainsCountIgnoreCase(String str, String sub) {
		return org.springframework.util.StringUtils.countOccurrencesOf(str
				.toLowerCase(), sub.toLowerCase());
	}

	/**
	 * For input string, cut an amount that is same as the length of the string,
	 * and return new string.
	 * 
	 * @param str
	 *            input string
	 * @param length
	 *            length of string
	 * @return amount of string that is the same as the defined length
	 */
	public static String getCutString(String str, int length) {
		String result = "";

		if (str != null) {
			if (getLength(str) > length)
				result = str.substring(0, length);
			else
				result = str;
		}
		return result;
	}

	/**
	 * Break a string into specific tokens and return a String of last location.<br>
	 * 
	 * <pre>
	 * StringUtil.getLastString(&quot;password*password*a*b*c&quot;, &quot;*&quot;) = &quot;c&quot;
	 * </pre>
	 * 
	 * @param origStr
	 *            original String
	 * @param strToken
	 *            specific tokens
	 * @return String of last location
	 */
	public static String getLastString(String origStr, String strToken) {
		StringTokenizer str = new StringTokenizer(origStr, strToken);
		String lastStr = "";
		while (str.hasMoreTokens()) {
			lastStr = str.nextToken();
		}
		return lastStr;
	}

	/**
	 * Return length of related string. If string is <code>null</code>, return
	 * -1.
	 * 
	 * @param str
	 *            input string
	 * @return int length of string
	 * @see String#length()
	 */
	public static int getLength(String str) {
		if (str == null) {
			return -1;
		}
		return str.length();
	}

	/**
	 * Return a specific length of random string.
	 * 
	 * @param count
	 *            the length of random string to be developed
	 * @return String random string
	 */
	public static String getRandomString(int count) {
		return randomAlphabetic(count);
	}

	/**
	 * Return random string of a defined length between specific alphabet
	 * character.
	 * 
	 * @param count
	 *            count the length of random string to be made
	 * @param startChar
	 *            the first letter of the random string being made
	 * @param endChar
	 *            the last letter of the random string being made
	 * @return String random string
	 */
	public static String getRandomString(int count, char startChar, char endChar) {
		int startInt = Integer.valueOf(startChar);
		int endInt = Integer.valueOf(endChar);

		int gap = endInt - startInt;
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < count; i++) {
			int chInt;
			do {
				chInt = StringUtil.generator.nextInt(gap + 1) + startInt;
			} while (!Character.toString((char) chInt).matches("^[a-zA-Z]$"));
			buf.append((char) chInt);
		}
		return buf.toString();
	}

	/**
	 * Return random string between minimum and maximum digits.
	 * 
	 * @param minSize
	 *            minimum digits
	 * @param maxSize
	 *            maximum digits
	 * @return String random string
	 */
	public static String getRandomString(int minSize, int maxSize) {
		Random generator = new Random(System.currentTimeMillis());
		int randomLength = generator.nextInt(maxSize - minSize) + minSize;

		return randomAlphabetic(randomLength);
	}

	/**
	 * Return a specific length of given character set string.
	 * 
	 * @param count
	 *            length of random string to be made
	 * @param charset
	 *            supported character set
	 * @return String random string
	 * @throws
	 */
	public static String getRandomStringByCharset(int count, String charset) {
		String randomStr = getRandomString(count);
		return DigestUtil.encodeCharset(randomStr, charset);
	}

	/**
	 * Return a specific length of random string in Korean characters (UTF-8
	 * only).
	 * 
	 * @param count
	 *            length of random string to be made
	 * @return String random string in Korean characters
	 * @throws UnsupportedEncodingException
	 */
	public static String getRandomStringByKorean(int count)
			throws UnsupportedEncodingException {
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < count; i++) {
			buf.append((char) (StringUtil.generator.nextInt(11172) + 0xAC00));
		}
		return buf.toString();
	}

	/**
	 * If original String has token, Break a string into specific tokens and
	 * change String Array. If not, return a String Array which has original
	 * String as it is.
	 * 
	 * <pre>
	 * StringUtil.getStringArray("passwordabcpassword", "abc") = String[]{"password","password"}
	 * StringUtil.getStringArray("pasword*password", "abc")    = String[]{"pasword*password"}
	 * </pre>
	 * 
	 * @param str
	 *            original String
	 * @param strToken
	 *            specific String token
	 * @return String[]
	 */
	public static String[] getStringArray(String str, String strToken) {
		if (str.indexOf(strToken) != -1) {
			StringTokenizer st = new StringTokenizer(str, strToken);
			String[] stringArray = new String[st.countTokens()];
			for (int i = 0; st.hasMoreTokens(); i++) {
				stringArray[i] = st.nextToken();
			}
			return stringArray;
		}
		return new String[] { str };
	}

	/**
	 * Return token list which is separated by ","
	 * 
	 * @param lst
	 * @return token list which is separated by ","
	 */
	public static List<String> getTokens(String lst) {
		return getTokens(lst, ",");
	}

	/**
	 * Return token list
	 * 
	 * @param lst
	 * @param separator
	 * @return token list
	 */
	public static List<String> getTokens(String lst, String separator) {
		List<String> tokens = new ArrayList<String>();

		if (lst != null) {
			StringTokenizer st = new StringTokenizer(lst, separator);
			while (st.hasMoreTokens()) {
				String en = st.nextToken().trim();
				tokens.add(en);
			}
		}
		return tokens;
	}

	/**
	 * Checks if String length is greater than zero. <div class="ko"> ????????? String
	 * ????????? 0?????? ??? ????????? ????????? ????????? ????????????. </div> ex) "test" => true "" => false
	 * 
	 * @param str
	 *            the String to check
	 * @return true if String length is greater than zero, false if not or null
	 *         string input
	 */
	public static boolean hasLength(String inputString) {
		return inputString != null && inputString.length() > 0;
	}

	/**
	 * Checks if String contains no whitespace. <div class="ko"> ????????? String ?????????
	 * Whitespace??? ?????? ????????? ????????? ????????? ????????????. - Whitespace??? ?????? ?????????,
	 * java.lang.Character??? ???????????? ??????. </div> ex) hasText(" test ") => true
	 * hasText(" ") => false hasText("") => false
	 * 
	 * @param str
	 *            the String to check
	 * @return true if String contains no whitespace, false if not or null
	 *         string input
	 */
	public static boolean hasText(String str) {
		int strLen;
		if (str == null || (strLen = str.length()) == 0) {
			return false;
		}
		for (int i = 0; i < strLen; i++) {
			if (!Character.isWhitespace(str.charAt(i))) {
				return true;
			}
		}
		return false;
	}

	/**
	 * Converts hex code to UniCode String <div class="ko"> ????????? ?????? ???????????? ????????????
	 * (????????????) </div>
	 * 
	 * @param str
	 *            the String to convert
	 * @return UniCode String
	 */
	public static String hexToString(String str) {

		String inStr = str;
		char inChar[] = inStr.toCharArray();
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < inChar.length; i += 4) {
			String hex = str.substring(i, i + 4);
			sb.append((char) Integer.parseInt(hex, 16));
		}
		return sb.toString();
	}

	/**
	 * If the string that is searched for is included in the input string,
	 * return the index of the first string. If not found, return -1. If the
	 * input string or the string that is searched for is not null, return -1.
	 * 
	 * @param str
	 *            input string
	 * @param search
	 *            string that is searched for
	 * @return int index of the first string
	 * @see String#indexOf(String)
	 */
	public static int indexOf(String str, String search) {
		if (str == null || search == null) {
			return -1;
		}
		return str.indexOf(search);
	}

	/**
	 * If the string to be searched for is included in input string, regardless
	 * of upper case or lower case letters, return the first string. If not
	 * found, return -1. Even if the input string or string to be searched for
	 * is null, return -1.
	 * 
	 * @param str
	 *            input string
	 * @param search
	 *            string to be compared with
	 * @return index of the first string
	 * @see String#indexOf(String)
	 */
	public static int indexOfIgnoreCase(String str, String search) {
		if (str == null || search == null) {
			return -1;
		}
		return str.toLowerCase().indexOf(search.toLowerCase());
	}

	/**
	 * It converts integer type to String ( 27 -> '27')
	 * 
	 * <pre>
	 * StringUtil.integer2string(14) 	= '14'
	 * </pre>
	 * 
	 * @param integer
	 *            integer type
	 * @return String string representation of a number
	 */
	public static String integer2string(int integer) {
		return ("" + integer);
	}

	/**
	 * Checks if the String contains only unicode letters.
	 * 
	 * <code>null</code> will return <code>false</code>. An empty String ("")
	 * will return <code>false</code>.
	 * 
	 * <pre>
	 * StringUtil.isAlpha(null)   = false
	 * StringUtil.isAlpha("")     = false
	 * StringUtil.isAlpha("  ")   = false
	 * StringUtil.isAlpha("abc")  = true
	 * StringUtil.isAlpha("ab2c") = false
	 * StringUtil.isAlpha("ab-c") = false
	 * </pre>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return <code>true</code> if only contains letters, and is non-null
	 */
	public static boolean isAlpha(String str) {
		if (str == null) {
			return false;
		}
		int sz = str.length();
		if (sz == 0)
			return false;
		for (int i = 0; i < sz; i++) {
			if (!Character.isLetter(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Checks if the String contains only unicode letters or digits.
	 * 
	 * <code>null</code> will return <code>false</code>. An empty String ("")
	 * will return <code>false</code>.
	 * 
	 * <pre>
	 * StringUtil.isAlphaNumeric(null)   = false
	 * StringUtil.isAlphaNumeric("")     = false
	 * StringUtil.isAlphaNumeric("  ")   = false
	 * StringUtil.isAlphaNumeric("abc")  = true
	 * StringUtil.isAlphaNumeric("ab c") = false
	 * StringUtil.isAlphaNumeric("ab2c") = true
	 * StringUtil.isAlphaNumeric("ab-c") = false
	 * </pre>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return <code>true</code> if only contains letters or digits, and is
	 *         non-null
	 */
	public static boolean isAlphaNumeric(String str) {
		if (str == null) {
			return false;
		}
		int sz = str.length();
		if (sz == 0)
			return false;
		for (int i = 0; i < sz; i++) {
			if (!Character.isLetterOrDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Checks if the String contains only digits. <div class="ko"> ????????? String???
	 * '??????'?????? ???????????? ???????????? ????????????. - ??????????????? ????????? Java??? ?????? ?????? ????????? ????????????. - ????????? String???
	 * null??? ??????, false??? return??????. </div> ex) isDigit("1234") => true
	 * isDigit("1234A")=> false
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if String contains only digits, false if not or null string
	 *         input
	 */
	public static boolean isDigit(String str) {
		if (str == null) {
			return false;
		}
		char chars[] = str.toCharArray();
		for (int i = 0; i < chars.length; i++) {
			if (!Character.isDigit(chars[i])) {
				return false;
			}
		}
		return true;
	}

	/**
	 * If string is null or empty string, return true. <br>
	 * If not, return false.
	 * 
	 * <pre>
	 * StringUtil.isEmpty("")    = true
	 * StringUtil.isEmpty(null)  = true
	 * StringUtil.isEmpty("abc") = false
	 * </pre>
	 * 
	 * @param str
	 *            original String
	 * @return which empty string or not.
	 */
	public static boolean isEmpty(String str) {
		return (str == null || str.length() == 0);
	}

	/**
	 * Determine whether a (trimmed) string is empty
	 * 
	 * @param str
	 *            The text to check.
	 * @return Whether empty.
	 */
	public static final boolean isEmptyTrimmed(String str) {
		return (str == null || str.trim().length() == 0);
	}

	/**
	 * Checks if the String contains the given pattern. <div class="ko"> ?????????
	 * String??? ????????? ???????????? ????????????????????? ????????????. </div>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @param pattern
	 *            the pattern to check, may be null
	 * @return true if String contains the given pattern, false if not or null
	 *         string input
	 */
	public static boolean isFormattedString(String str, String pattern) {
		if (str == null || pattern == null) {
			return false;
		} else {
			return str.matches(pattern);
		}
	}

	/**
	 * Checks if the String contains only Korean characters. <div class="ko">
	 * ????????? character??? ??????????????? ????????? ????????????. </div> ex) isHangul('???') => true
	 * isHangul('T') => false
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if the String contains only Korean Language, false if not
	 */
	public static boolean isHangul(char str) {
		String unicodeBlock = Character.UnicodeBlock.of(str).toString();
		return unicodeBlock.equals("HANGUL_JAMO")
				|| unicodeBlock.equals("HANGUL_SYLLABLES")
				|| unicodeBlock.equals("HANGUL_COMPATIBILITY_JAMO");
	}

	/**
	 * Checks if the String contains only Korean characters or any Korean
	 * characters. <div class="ko"> ????????? String??? ?????????, ???????????? ?????? ????????? ?????? ????????? ????????????
	 * ???????????? ????????????. - full??? true??? ????????? ??????, ???????????? ?????? ???????????? ????????????. + '???????????? ?????? ?????????'??? ?????????
	 * ?????? ????????? ????????? ???????????? ?????? ?????????, ????????? ?????? ?????? ?????? ?????? ????????? ????????????. - full??? false??? ????????? ??????,
	 * ????????? ???????????? ???????????? ???????????? ????????????. ex) isHangul("?????????", true) => true
	 * isHangul("?????????abc", true) => false isHangul("???abc", false) => true
	 * isHangul("abcd", false) => false </div>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @param checkForAll
	 *            flag for check only Korean characters(true) or any Korean
	 *            characters(false)
	 * @return true if the String contains only Korean Language(when checkForAll
	 *         is true) or any Korean characters(when checkForAll is false),
	 *         false if not
	 */
	public static boolean isHangul(String str, boolean checkForAll) {
		char chars[] = str.toCharArray();
		if (!checkForAll) {
			for (int i = 0; i < chars.length; i++) {
				if (isHangul(chars[i])) {
					return true;
				}
			}
			return false;
		} else {
			for (int i = 0; i < chars.length; i++) {
				if (!isHangul(chars[i])) {
					return false;
				}
			}
			return true;
		}
	}

	/**
	 * Checks if the String contains only letters. <div class="ko"> ????????? String???
	 * '??????'?????? ???????????? ???????????? ????????????. - ??????????????? ????????? Java??? ?????? ?????? ????????? ????????????. - ????????? String???
	 * null??? ??????, false??? return??????. </div> ex) isLetter("test") => true
	 * isLetter("test??????")=> true isLetter("test#$%") => false
	 * isLetter("test123") => false
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if String contains only letters, false if not or null string
	 *         input
	 */
	public static boolean isLetter(String str) {
		if (str == null) {
			return false;
		}
		char chars[] = str.toCharArray();
		for (int i = 0; i < chars.length; i++) {
			if (!Character.isLetter(chars[i])) {
				return false;
			}
		}
		return true;
	}

	/**
	 * Checks if the String contains only letters or digits. <div class="ko">
	 * ????????? String??? '??????'??? '??????'?????? ???????????? ???????????? ????????????. - ????????? ??????????????? ????????? Java??? ?????? ?????? ?????????
	 * ????????????. - ????????? String??? null??? ??????, false??? return??????. ex)
	 * isLetterOrDigit("12??????") => true isLetterOrDigit("12??????@#%")=> false </div>
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if String contains only letters or digits, false if not or
	 *         null string input
	 */
	public static boolean isLetterOrDigit(String str) {
		if (str == null) {
			return false;
		}
		char chars[] = str.toCharArray();
		for (int i = 0; i < chars.length; i++) {
			if (!Character.isLetterOrDigit(chars[i])) {
				return false;
			}
		}
		return true;
	}

	/**
	 * If string is null or empty string, return false. <br>
	 * If not, return true.
	 * 
	 * <pre>
	 * StringUtil.isNotEmpty("")    = false
	 * StringUtil.isNotEmpty(null)  = false
	 * StringUtil.isNotEmpty("abc") = true
	 * </pre>
	 * 
	 * @param str
	 *            original String
	 * @return which empty string or not.
	 */
	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}

	/**
	 * Checks if the String contains any letters except digits. <div class="ko">
	 * ??????????????? ????????? ???????????? ????????? ?????? ????????? ????????????????????? ????????? ????????????. <br>
	 * </div> ex) isNotNumeric("12345") => false isNumeric("12345ABC") => true
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if String contains any letters, false if not or null string
	 *         input
	 */
	public static boolean isNotNumeric(String str) {
		if (str == null) {
			return false;
		}
		int sz = str.length();
		for (int i = 0; i < sz; i++) {
			if (Character.isDigit(str.charAt(i)) == false) {
				return true;
			}
		}

		return false;
	}

	/**
	 * Checks if the CharSequence contains only whitespace. <div class="ko"> ?????????
	 * String??? Space?????? ????????? ???????????? ????????????. - Space??? ?????? ?????????, String.trim()?????? ???????????? ?????????
	 * ???????????? ??????. - ????????? String??? null??????, false??? return??????. </div> ex) isSpace("   ")
	 * => true isSpace("") => true isSpace("test") => false
	 * 
	 * @param str
	 *            the String to check, may be null
	 * @return true if String contains only whitespace, false if not or null
	 *         string input
	 */
	public static boolean isSpaceOnly(String str) {
		if (str == null) {
			return false;
		} else {
			return str.trim().length() <= 0;
		}
	}

	/**
	 * Gets the leftmost len characters of a String. <div class="ko"> ????????? String
	 * ????????? ????????? ????????? ???????????? ?????? ????????? ?????? ????????????. - ????????? ???????????? ????????? String??? ????????? ?????? ???????????? ?????????
	 * String??? ????????? ????????????. - "..."??? ????????? ?????? ?????? ??????????????? splitHead()??? ????????????. </div> ex)
	 * left("1234567", 3) => "123"
	 * 
	 * @param str
	 *            the String to get the leftmost characters from, may be null
	 * @param len
	 *            the length of the required String
	 * @return the leftmost characters, null if null String input
	 */
	public static String left(String str, int len) {
		if (str == null) {
			return null;
		} else if (len <= 0 || str.length() <= len) {
			return str;
		} else {
			return str.substring(0, len);
		}
	}

	/**
	 * For related string, fill the input length from the left with space.<br>
	 * 
	 * <pre>
	 * StringUtil.leftPad(null, *) = null
	 * StringUtil.leftPad("", 3) = "   "
	 * StringUtil.leftPad("bat", 3) = "bat"
	 * StringUtil.leftPad("bat", 5) = "  bat"
	 * StringUtil.leftPad("bat", 1) = "bat"
	 * StringUtil.leftPad("bat", -1) = "bat"
	 * </pre>
	 * 
	 * @param str
	 *            string to be modified
	 * @param size
	 *            size that includes letter for padding
	 * @return strings for padding <code>null</code> if null String input
	 */
	public static String leftPad(String str, int size) {
		return leftPad(str, size, ' ');
	}

	/**
	 * For related string, fill the input length from the left with defined
	 * letter.<br>
	 * 
	 * <pre>
	 * StringUtil.leftPad(null, *, *) = null
	 * StringUtil.leftPad("", 3, 'z') = "zzz"
	 * StringUtil.leftPad("bat", 3, 'z') = "bat"
	 * StringUtil.leftPad("bat", 5, 'z') = "zzbat"
	 * StringUtil.leftPad("bat", 1, 'z') = "bat"
	 * StringUtil.leftPad("bat", -1, 'z') = "bat"
	 * </pre>
	 * 
	 * @param str
	 *            string to be modified
	 * @param size
	 *            size that includes letter for padding
	 * @param padChar
	 *            letter to fill in
	 * @return string that is padded <code>null</code> if null String input
	 */
	public static String leftPad(String str, int size, char padChar) {
		return padChar(str, size, padChar, true);
	}

	/**
	 * For related string, fill the input length from the left with defined
	 * string.<br>
	 * 
	 * <pre>
	 * StringUtil.leftPad(null, *, *) = null
	 * StringUtil.leftPad("", 3, "z") = "zzz"
	 * StringUtil.leftPad("bat", 3, "yz") = "bat"
	 * StringUtil.leftPad("bat", 5, "yz") = "yzbat"
	 * StringUtil.leftPad("bat", 8, "yz") = "yzyzybat"
	 * StringUtil.leftPad("bat", 1, "yz") = "bat"
	 * StringUtil.leftPad("bat", -1, "yz") = "bat"
	 * StringUtil.leftPad("bat", 5, null) = "  bat"
	 * StringUtil.leftPad("bat", 5, "") = "  bat"
	 * </pre>
	 * 
	 * @param str
	 *            string to be modified
	 * @param size
	 *            size that includes letter for padding
	 * @param padStr
	 *            letter to fill in
	 * @return string that is padded <code>null</code> if null String input
	 */
	public static String leftPad(String str, int size, String padStr) {
		return padString(str, size, padStr, true);
	}

	/**
	 * Delete the space string on the left of the string.
	 * 
	 * @param str
	 *            input string
	 * @return string that deleted spaces
	 * @see org.springframework.util.StringUtils#trimLeadingWhitespace(String)
	 */
	public static String leftTrim(String str) {
		return org.springframework.util.StringUtils.trimLeadingWhitespace(str);
	}

	/**
	 * Converts CR/LF characters to a space in a String. <div class="ko">
	 * CRLF(newLine)??? ????????? ???????????? ??????????????? ?????? CRLF(????????????)??? SPACE??? ???????????? ????????????. </div> ex)
	 * newLineToSpace("\r\ntest") => " test"
	 * 
	 * @param str
	 *            the String to convert
	 * @return the converted string
	 */
	public static String newLineToSpace(String str) {
		String output;

		output = str.replace("\r\n", " ");

		return output;
	}

	/**
	 * Trim the original string. If the original string is null or string length
	 * size is zero, return the empty string.
	 * 
	 * @param org
	 *            original string
	 * @return trimmed string
	 */
	public static String null2str(String org) {
		return null2str(org, "");
	}
	
	/**
	 * Trim the original object. If the original string is null or string length
	 * size is zero, return the empty string.
	 * 
	 * @param org
	 *            original object
	 * @return trimmed string
	 */
	public static String null2str(Object org) {
		if (org == null){
			return "";
		}else if(org instanceof Integer){
			return String.valueOf(org);
		}else if(org instanceof Long){
			return String.valueOf(org);
		}else if(org instanceof Boolean){
			return String.valueOf(org);
		}else {
			return (String) org;
		}
	}
	
	public static Object null2obj(Object org) {
		if (org == null){
			return "";
		}else {
			return org;
		}
	}
	/**
	 * Trim the original object. If the original string is null or string length
	 * size is zero, return the converted string.
	 * 
	 * @param org
	 *            original string
	 * @param converted
	 *            converted string
	 * @return trimmed string
	 */
	public static String null2str(Object org, String converted) {
		if (org == null || org.toString().isEmpty()) {
			return converted;
		}else if(org instanceof Integer){
			return String.valueOf(org);
		}else if(org instanceof Long){
			return String.valueOf(org);
		} else {
			return (String) org;
		}
	}

	/**
	 * Trim the original string. If the original string is null or string length
	 * size is zero, return the converted string.
	 * 
	 * @param org
	 *            original string
	 * @param converted
	 *            converted string
	 * @return trimmed string
	 */
	public static String null2str(String org, String converted) {
		if (org == null || org.trim().length() == 0) {
			return converted;
		} else {
			return org.trim();
		}
	}
	
	/**
	 * Returns empty string if the given String is null, returns given String if
	 * not. <div class="ko"> ????????? String ????????? ???????????? null??? ?????? "" ??? ????????????, ????????? ?????????
	 * ????????????. </div> ex) nullToEmpty("test") => "test" String test = null;
	 * nullToEmpty(test) => ""
	 * 
	 * @param str
	 *            the String to check
	 * @return empty string if the given String is null, given string if not
	 */
	public static String nullToEmpty(String str) {
		if (str == null || str.length() <= 0) {
			return DEFAULT_EMPTY_STRING;
		} else {
			return str;
		}
	}

	/**
	 * Converts double to String with the given format. <div class="ko"> double
	 * ????????? ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - ?????? ??????, 5277095325298.2523????????? ?????? "###,###.##"????????? ????????? ????????????
	 * "5,277,095,325,298.25"??? ????????????. - ?????????, 5277095325298.2523????????? ??????
	 * "###,###.####"????????? ????????? ???????????? "5,277,095,325,298.252"??? ????????????. - ???????????????
	 * 111115277095325298.2523????????? ?????? "###,###.##"????????? ????????? ????????????
	 * "111,115,277,095,325,296"??? ????????????. - ?????????, Java????????? double ????????? ????????? ?????????.
	 * </div> ex) numberFormat(12345.67d, "###,###.#") => "12,345.7"
	 * 
	 * @param d
	 *            the double value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	public static String numberFormat(double d, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(d);
	}

	/**
	 * Converts float to String with the given format. <div class="ko"> float
	 * ????????? ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - Java????????? float ????????? ????????????. </div> ex) numberFormat(12345.67f,
	 * "###,###.#") => "12,345.7"
	 * 
	 * @param f
	 *            the float value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	public static String numberFormat(float f, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(f);
	}

	/**
	 * Converts int to String with the given format. <div class="ko"> int ?????????
	 * ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - Java????????? int ????????? ????????????. </div> ex) numberFormat(12345, "###,###")
	 * => "12,345"
	 * 
	 * @param i
	 *            the int value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	public static String numberFormat(int i, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(i);
	}

	/**
	 * Converts long to String with the given format. <div class="ko"> long ?????????
	 * ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - Java????????? long ????????? ????????????. </div> ex) numberFormat(12345.67L,
	 * "###,###.#") => "12,345.7"
	 * 
	 * @param l
	 *            the long value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	public static String numberFormat(long l, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(l);
	}

	/**
	 * Converts short to String with the given format. <div class="ko"> short
	 * ????????? ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - Java????????? short ????????? ????????????. </div> ex) numberFormat(12345, "###,###")
	 * => "12,345"
	 * 
	 * @param s
	 *            the short value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	/*
	 * 2012-08-20 ????????? - S
	 * 
	 */
	public static String numberFormat(short s, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(s);
	}
	/*
	 * 2012-08-20 ????????? - E
	 * 
	 */

	/**
	 * Converts short to String with the given format. <div class="ko"> short
	 * ????????? ????????? ?????????, ????????? 10?????? ????????? String?????? ????????????. - java.text.DecimalFormat??? ????????????
	 * ????????????. - Java????????? short ????????? ????????????. </div> ex) numberFormat(12345, "###,###")
	 * => "12,345"
	 * 
	 * @param s
	 *            the short value to convert
	 * @param format
	 *            decimal format for conversion
	 * @return the converted string
	 */
	public static String numberFormat(String s, String format) {
		DecimalFormat decimalformat = new DecimalFormat(format);
		return decimalformat.format(s);
	}

	
	/**
	 * Returns the default Object if the given Object is null. <div class="ko">
	 * ????????? Object??? null??? ?????? ?????? ??? Object??? ????????????, null??? ?????? default Object??? ????????????.
	 * </div> ex) String test = null; System.out.println(nvl(test, "NULL TEST"))
	 * => "NULL TEST"
	 * 
	 * String test = "test"; System.out.println(nvl(test, "NULL TEST")) =>
	 * "test"
	 * 
	 * @param inputObject
	 *            the Object to check
	 * @param defaultObject
	 *            the default Object
	 * @return Returns the default Object if the given Object is null, returns
	 *         the given Object if not
	 */
	public static Object nvl(Object inputObject, Object defaultObject) {
		return inputObject != null ? inputObject : defaultObject;
	}

	/**
	 * Returns the default String if the given String is null. <div class="ko">
	 * ????????? String??? null??? ?????? ?????? ??? String??? ????????????, null??? ?????? default String??? ????????????.
	 * </div> ex) String test = null; System.out.println(nvl(test, "NULL TEST"))
	 * => "NULL TEST"
	 * 
	 * String test = "test"; System.out.println(nvl(test, "NULL TEST")) =>
	 * "test"
	 * 
	 * @param inputString
	 *            the String to check
	 * @param defaultString
	 *            the default String
	 * @return Returns the default String if the given String is null, returns
	 *         the given String if not
	 */
	public static String nvl(String inputString, String defaultString) {
		return (String) nvl((Object) inputString, (Object) defaultString);
	}

	private static String padChar(String str, int size, char padChar,
			boolean isLeft) {
		if (str == null) {
			return null;
		}
		int originalStrLength = str.length();

		if (size < originalStrLength)
			return str;

		int difference = size - originalStrLength;

		StringBuilder strBuf = new StringBuilder();
		if (!isLeft) {
			strBuf.append(str);
		}

		for (int i = 0; i < difference; i++)
			strBuf.append(padChar);

		if (isLeft) {
			strBuf.append(str);
		}

		return strBuf.toString();
	}

	/**
	 * Gets the String with a specified character. Pad to a size of size <div
	 * class="ko"> ????????? ??????(char)??? ????????? ?????? ?????? ???????????? ?????? ?????? ???????????? ????????? ???????????? ???????????? ????????????. -
	 * padding(5, 'e') => "eeeee". - ????????? ?????? ?????? 0?????? => "". - ????????? ?????? ?????? 0?????? ????????? =>
	 * null. - padding(5, '???') => "???????????????". - length??? String.getBytes().length
	 * ????????? ?????? String.length() ???????????? ????????????. </div> ex) padding(5, 'e') => "eeeee"
	 * 
	 * @param size
	 *            the length to pad to
	 * @param padChar
	 *            the character to pad with
	 * @return padded String
	 */
	public static String padding(int size, char padChar) {
		if (size < 0) {
			return null;
		}
		StringBuffer buffer = new StringBuffer(size);
		for (int i = 0; i < size; i++) {
			buffer.insert(i, padChar);
		}
		return buffer.toString();
	}

	private static String padString(String str, int size, String padStr,
			boolean isLeft) {
		if (str == null) {
			return null;
		}
		int originalStrLength = str.length();

		if (size < originalStrLength)
			return str;

		int difference = size - originalStrLength;

		String tempPad = "";
		if (difference > 0) {
			if (padStr == null || "".equals(padStr)) {
				padStr = " ";
			}
			do {
				for (int j = 0; j < padStr.length(); j++) {
					tempPad += padStr.charAt(j);
					if (str.length() + tempPad.length() >= size) {
						break;
					}
				}
			} while (difference > tempPad.length());
			if (isLeft) {
				str = tempPad + str;
			} else {
				str = str + tempPad;
			}
		}

		return str;
	}

	/**
	 * Normalize the path String. <div class="ko"> String?????? ????????? path ????????? ???????????????.
	 * - ????????? path ?????? String??? ?????????, "\\"??? ????????? path delimiter??? "/"??? ???????????? ?????? ????????? ??????
	 * ????????? ?????????. - ????????? path ?????? String??? ??????, null??? return??????. </div> ex)
	 * pathClean("../aaaa\\bbbb\\cccc\\dddd") => "aaaa/bbbb/cccc/dddd"
	 * 
	 * @param path
	 *            the path String to normalize
	 * @return the normalized path String
	 */
	public static String pathClean(String path) {
		if (path == null) {
			return null;
		}
		String p = replacePattern(path, "\\", "/");
		String pArray[] = delimitedStringToStringArray(p, "/");
		List<String> pList = new LinkedList<String>();
		int tops = 0;
		for (int i = pArray.length - 1; i >= 0; i--) {
			if (".".equals(pArray[i])) {
				continue;
			} else if ("..".equals(pArray[i])) {
				tops++;
				continue;
			}
			if (tops > 0) {
				tops--;
			} else {
				pList.add(0, pArray[i]);
			}
		}
		return collectionToDelimitedString(pList, "/");
	}

	/**
	 * Compare both path String after nomalization. <div class="ko"> ????????? ??? ??????
	 * path ?????? String??? ?????????, ????????? ??? ?????? ??????????????? ????????????. - ????????? ????????? null??? ???????????? ????????????. (??? ???
	 * null??? ??????, true return.) </div> ex)
	 * pathEquals("../aaaa\\bbbb\\cccc\\dddd", "aaaa/bbbb/cccc/dddd") => true
	 * 
	 * @param path1
	 *            the path String to compare
	 * @param path2
	 *            the path String to compare
	 * @return true if the path Strings are equel, false if not or both null
	 */
	public static boolean pathEquals(String path1, String path2) {
		if (path1 == null) {
			if (path2 == null) {
				return true;
			} else {
				return false;
			}
		}
		return pathClean(path1).equals(pathClean(path2));
	}

	private static String randomAlphabetic(int randomLength) {
		StringBuilder buf = new StringBuilder();
		for (int i = 0; i < randomLength; i++) {
			buf.append(alphas[StringUtil.generator.nextInt(52)]);
		}
		return buf.toString();
	}

	/**
	 * For input strings, remove all strings to be deleted.
	 * 
	 * @param str
	 *            input string
	 * @param charsToDelete
	 *            string to be deleted
	 * @return String deleted string
	 * @see org.springframework.util.StringUtils#deleteAny(String, String)
	 */
	public static String removeAll(String str, String charsToDelete) {
		return org.springframework.util.StringUtils.deleteAny(str,
				charsToDelete);
	}

	/**
	 * Removes all occurrences of a character from within the source string.
	 * <div class="ko"> ??? String ?????? ????????? ????????? ??????(char)??? ????????????. </div> ex)
	 * removeChar("ABBBBBC", 'B') => "AC"
	 * 
	 * @param str
	 *            the source String to search
	 * @param remove
	 *            the char to search for and remove
	 * @return the substring with the char removed if found
	 */
	public static String removeChar(String str, char remove) {
		return replacePattern(str, String.valueOf(remove), "");
	}

	/**
	 * Removes all occurrences of specified characters from within the source
	 * string.<br>
	 * specified characters : + { '/', '-', ':', ',', '.', '%' }<br>
	 * <div class="ko"> ??? String ?????? ????????? ?????? ???????????? ????????????. - ????????? ?????? ????????? ????????? ??????. + {
	 * '/', '-', ':', ',', '.', '%' } </div> ex) removeCharAll("test/-") =>
	 * "test"
	 * 
	 * @param str
	 *            the source String to search
	 * @return the substring with specified chars removed if found
	 */
	public static String removeCharAll(String str) {
		char[] targetCharacters = { '/', '-', ':', ',', '.', '%' };
		return removeCharAll(str, targetCharacters);
	}

	/**
	 * Removes all occurrences of given chars from within the source string.<br>
	 * <div class="ko"> ??? String ?????? ????????? ????????? ???????????? ????????????. ex) char[] ch = new
	 * char[2]; ch[0] = 'b'; ch[1] = 'z'; removeCharAll("AbbzzB", ch)) => "AB"
	 * </div>
	 * 
	 * @param str
	 *            the source String to search
	 * @param remove
	 *            chars to search for (case insensitive) and remove
	 * @return the substring with given chars removed if found
	 */
	public static String removeCharAll(String str, char[] remove) {
		String value = str;
		for (int i = 0; i < remove.length; i++) {
			value = removeChar(value, remove[i]);
		}
		return value;
	}

	/**
	 * Input string to HTML tag format.
	 * 
	 * @param input
	 *            the (escaped) input string
	 * @return the unescaped string
	 * @see HtmlUtils#htmlUnescape(String)
	 */
	public static String removeEscapeChar(String input) {
		return HtmlUtils.htmlUnescape(input);
	}

	/**
	 * Delete all space strings.
	 * 
	 * @param str
	 *            input string
	 * @return string that deleted space
	 * @see org.springframework.util.StringUtils#trimAllWhitespace(String)
	 */
	public static String removeWhitespace(String str) {
		return org.springframework.util.StringUtils.trimAllWhitespace(str);
	}

	/**
	 * replace replaced string to specific string from original string. <br>
	 * 
	 * <pre>
	 * StringUtil.replace(&quot;work$id&quot;, &quot;$&quot;, &quot;.&quot;) = &quot;work.id&quot;
	 * </pre>
	 * 
	 * @param str
	 *            original String
	 * @param replacedStr
	 *            to be replaced String
	 * @param replaceStr
	 *            replace String
	 * @return converting result
	 */
	public static String replace(String str, String replacedStr,
			String replaceStr) {
		String newStr = "";
		if (str.indexOf(replacedStr) != -1) {
			String s1 = str.substring(0, str.indexOf(replacedStr));
			String s2 = str.substring(str.indexOf(replacedStr) + 1);
			newStr = s1 + replaceStr + s2;
		}
		return newStr;
	}

	/**
	 * Replaces each substring of this string that matches the given regular
	 * expression with the given replacement.
	 * 
	 * @param source
	 *            input string
	 * @param regex
	 *            regular expression
	 * @param replacement
	 *            given replacement
	 * @return changed string
	 * @see String#replaceAll(String, String)
	 */
	public static String replaceAll(String source, String regex,
			String replacement) {
		if (source == null) {
			return null;
		}
		return source.replaceAll(regex, replacement);
	}

	/**
	 * Replaces the first substring of this string that matches the given
	 * regular expression with the given replacement.
	 * 
	 * @param source
	 *            input string
	 * @param regex
	 *            regular expression
	 * @param replacement
	 *            given replacement
	 * @return changed string
	 * @see String#replaceFirst(String, String)
	 */
	public static String replaceFirst(String source, String regex,
			String replacement) {
		if (source == null) {
			return null;
		}
		return source.replaceFirst(regex, replacement);
	}

	/**
	 * Unescape string that includes HTML tag.
	 * 
	 * @param input
	 *            the (unescaped) input string
	 * @return the escaped string
	 * @see HtmlUtils#htmlEscape(String)
	 */
	public static String replaceHtmlEscape(String input) {
		return HtmlUtils.htmlEscape(input);
	}

	/**
	 * Replaces the last substring of this string that matches the given regular
	 * expression with the given replacement.
	 * 
	 * @param source
	 *            input string
	 * @param regex
	 *            regular expression
	 * @param replacement
	 *            given replacement
	 * @return changed string
	 */
	public static String replaceLast(String source, String regex,
			String replacement) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(source);
		if (!matcher.find()) {
			return source;
		}
		int lastMatchStart = 0;
		do {
			lastMatchStart = matcher.start();
		} while (matcher.find());
		matcher.find(lastMatchStart);
		StringBuffer sb = new StringBuffer(source.length());
		matcher.appendReplacement(sb, replacement);
		matcher.appendTail(sb);
		return sb.toString();
	}

	/**
	 * Replaces all occurrences of a String within another String. <div
	 * class="ko"> ??? String ?????? ????????? ?????? ??????(old)??? ?????? ??????(new)?????? ????????????. - ?????? ????????? ?????????
	 * ?????????????????? ???????????? ????????? ?????? ????????? ????????????. + ?????????, ????????? ????????? old ????????? ?????? ?????? ??? ??????. + ?????? ??????,
	 * replace("abaa", "aba", "bab")??? "baba"??? ??????. </div> ex)
	 * replacePattern("abaa", "aba", "bab") => "baba"
	 * 
	 * @param text
	 *            text to search and replace in, may be null
	 * @param searchString
	 *            the String to search for, may be null
	 * @param replacement
	 *            the String to replace it with, may be null
	 * @return the text with any replacements processed, null if null String
	 *         input
	 */
	public static String replacePattern(String text, String searchString,
			String replacement) {
		if (text == null) {
			return null;
		}
		if (searchString == null || replacement == null) {
			return text;
		}
		StringBuffer sbuf = new StringBuffer();
		int pos = 0;
		int index = text.indexOf(searchString);
		int patLen = searchString.length();
		for (; index >= 0; index = text.indexOf(searchString, pos)) {
			sbuf.append(text.substring(pos, index));
			sbuf.append(replacement);
			pos = index + patLen;
		}
		sbuf.append(text.substring(pos));
		return sbuf.toString();
	}

	/**
	 * Reverses a String as per {@link StringBuffer#reverse()}.
	 * 
	 * <A code>null</code> String returns <code>null</code>.
	 * 
	 * @param str
	 *            the String to reverse, may be null
	 * @return the reversed String, <code>null</code> if null String input
	 */
	public static String reverse(String str) {
		if (str == null) {
			return null;
		}
		return new StringBuilder(str).reverse().toString();
	}

	/**
	 * Gets the rightmost len characters of a String. <div class="ko"> ?????????
	 * String ????????? ????????? ????????? ???????????? ????????? ????????? ?????? ????????????. - ????????? ???????????? ????????? String??? ????????? ??????
	 * ???????????? ????????? String??? ????????? ????????????. - "..."??? ????????? ?????? ?????? ??????????????? splitTail()??? ????????????.
	 * </div> ex) right("1234567", 3) => "567"
	 * 
	 * @param str
	 *            the String to get the rightmost characters from, may be null
	 * @param len
	 *            the length of the required String
	 * @return the rightmost characters, null if null String input
	 */
	public static String right(String str, int len) {
		if (str == null) {
			return null;
		} else if (len <= 0 || str.length() <= len) {
			return str;
		} else {
			return str.substring(str.length() - len);
		}
	}

	/**
	 * For related string, fill the input length from the right with space.<br>
	 * 
	 * <pre>
	 * StringUtil.rightPad(null, *) = null
	 * StringUtil.rightPad("", 3) = "   "
	 * StringUtil.rightPad("bat", 3) = "bat"
	 * StringUtil.rightPad("bat", 5) = "bat  "
	 * StringUtil.rightPad("bat", 1) = "bat"
	 * StringUtil.rightPad("bat", -1) = "bat"
	 * </pre>
	 * 
	 * @param str
	 *            string to be modified
	 * @param size
	 *            size that includes letter for padding
	 * @return string that is padded <code>null</code> if null String input
	 */
	public static String rightPad(String str, int size) {
		return rightPad(str, size, ' ');
	}

	/**
	 * For related string, fill the input length from the right with defined
	 * letter.<br>
	 * 
	 * <pre>
	 * StringUtil.rightPad(null, *, *) = null
	 * StringUtil.rightPad("", 3, 'z') = "zzz"
	 * StringUtil.rightPad("bat", 3, 'z') = "bat"
	 * StringUtil.rightPad("bat", 5, 'z') = "batzz"
	 * StringUtil.rightPad("bat", 1, 'z') = "bat"
	 * StringUtil.rightPad("bat", -1, 'z') = "bat"
	 * </pre>
	 * 
	 * @param str
	 *            string to be modified
	 * @param size
	 *            size that includes letter for padding
	 * @param padChar
	 *            letter for padding
	 * @return string that is padded <code>null</code> if null String input
	 */
	public static String rightPad(String str, int size, char padChar) {
		return padChar(str, size, padChar, false);
	}

	/**
	 * For related string, fill the input length from the right with defined
	 * string.<br>
	 * 
	 * <pre>
	 * StringUtil.rightPad(null, *, *) = null
	 * StringUtil.rightPad("", 3, "z") = "zzz"
	 * StringUtil.rightPad("bat", 3, "yz") = "bat"
	 * StringUtil.rightPad("bat", 5, "yz") = "batyz"
	 * StringUtil.rightPad("bat", 8, "yz") = "batyzyzy"
	 * StringUtil.rightPad("bat", 1, "yz") = "bat"
	 * StringUtil.rightPad("bat", -1, "yz") = "bat"
	 * StringUtil.rightPad("bat", 5, null) = "bat  "
	 * StringUtil.rightPad("bat", 5, "") = "bat  "
	 * </pre>
	 * 
	 * @param str
	 *            the String to pad out, may be null
	 * @param size
	 *            the size to pad to
	 * @param padStr
	 *            the String to pad with, null or empty treated as single space
	 * @return string that is padded <code>null</code> if null String input
	 */
	public static String rightPad(String str, int size, String padStr) {
		return padString(str, size, padStr, false);
	}

	/**
	 * 
	 * Delete the space string on the right of the string.
	 * 
	 * @param str
	 *            input string
	 * @return string that deleted spaces
	 * @see org.springframework.util.StringUtils#trimTrailingWhitespace(String)
	 */
	public static String rightTrim(String str) {
		return org.springframework.util.StringUtils.trimTrailingWhitespace(str);
	}

	/**
	 * Splits the provided text into an array, separator specified. <div
	 * class="ko"> ????????? String??? ????????? separator(char)??? ???????????? tokenize??? ??? String[]???
	 * ????????????. - ????????? separator ????????? token??? ?????? ?????????. - ????????? String??? null??? ??????, null???
	 * return??????. ex) split("aaVbbVcc", 'V') => 2?????? argument??? separator??? ?????? "aa",
	 * "bb", "cc"???????????? String[] ????????? return ??????. </div>
	 * 
	 * @param str
	 *            the String to parse
	 * @param separator
	 *            the character used as the delimiter
	 * @return an array of parsed Strings
	 */
	public static String[] split(String str, char separator) {
		StringBuffer tempStringBuffer = new StringBuffer();
		tempStringBuffer.append(separator);
		return tokenizeToStringArray(str, tempStringBuffer.toString(), false,
				false);
	}

	/**
	 * Split a String from the beginning of a string to the given size.
	 * 
	 * @param str
	 *            input string
	 * @param size
	 *            length of string
	 * @return string to be split
	 */
	public static String splitHead(String str, int size) {
		if (str == null) {
			return "";
		}
		if (str.length() > size) {
			str = str.substring(0, size);
		}
		return str;
	}

	/**
	 * Splits the leftmost len characters of a String with ellipsis. <div
	 * class="ko"> ????????? String ????????? ????????? ????????? ???????????? ???????????? ?????? ????????????. - ????????? ???????????? ?????????
	 * String??? ????????? ?????? ???????????? ????????? String??? ????????? ????????????. - ????????? ???????????? ?????? "..."??? ????????? ????????????.
	 * </div> ex) splitHead("12345678", 3) => "123..."
	 * 
	 * @param str
	 *            the String to get the leftmost characters from, may be null
	 * @param len
	 *            the length of the required String
	 * @return the leftmost characters with ellipsis, null if null String input
	 */
	public static String splitHeadWithEllipsis(String str, int len) {
		if (str == null) {
			return null;
		} else if (len <= 0 || str.length() <= len) {
			return str;
		} else {
			return str.substring(0, len) + "...";
		}
	}

	/**
	 * Split a String from the end of a string to the given size.
	 * 
	 * @param str
	 *            input string
	 * @param size
	 *            length of string
	 * @return string to be split
	 */
	public static String splitTail(String str, int size) {
		if (str == null) {
			return "";
		}
		if (str.length() > size) {
			str = str.substring(str.length() - size);
		}
		return str;
	}

	/**
	 * Splits the leftmost len characters of a String with ellipsis. <div
	 * class="ko"> ????????? String ????????? ????????? ????????? ???????????? ???????????? ?????? ????????????. - ????????? ???????????? ?????????
	 * String??? ????????? ?????? ???????????? ????????? String??? ????????? ????????????. - ????????? ???????????? ?????? "..."??? ????????? ????????????.
	 * </div> ex) splitTail("12345678", 3) => "...678"
	 * 
	 * @param str
	 *            the String to get the rightmost characters from, may be null
	 * @param len
	 *            the length of the required String
	 * @return the rightmost characters with ellipsis, null if null String input
	 */
	public static String splitTailWithEllipsis(String str, int len) {
		if (str == null) {
			return null;
		} else if (len <= 0 || str.length() <= len) {
			return str;
		} else {
			return "..." + str.substring(str.length() - len);
		}
	}

	/**
	 * It converts the string representation of a number to integer type (eg.
	 * '27' -> 27)
	 * 
	 * <pre>
	 * StringUtil.string2integer('14') 	= 14
	 * </pre>
	 * 
	 * @param str
	 *            string representation of a number
	 * @return integer integer type of string
	 */
	public static int string2integer(String str) {
		int ret = Integer.parseInt(str.trim());

		return ret;
	}

	/**
	 * Converts String to BigDecimal <div class="ko"> ???????????? BigDecimal??? ????????????
	 * ????????????. </div>
	 * 
	 * @param str
	 *            the String value to convert
	 * @return the converted BigDecimal
	 */
	public static BigDecimal stringToBigDecimal(String str) {
		if ("".equals(rightTrim(str)))
			return new BigDecimal(0);
		else
			return new BigDecimal(str);
	}

	/**
	 * Converts String to BigDecimal from the specified position <div
	 * class="ko"> ???????????? ?????? ??? ????????? ????????? ?????? ???????????? BigDecimal??? ???????????? ????????????. </div>
	 * 
	 * @param str
	 *            the String value to convert
	 * @param pos
	 *            the start position
	 * @param len
	 *            the length of str from pos
	 * @return the converted BigDecimal
	 */
	public static BigDecimal stringToBigDecimal(String str, int pos, int len) {
		if ("".equals(rightTrim(str)))
			return new BigDecimal(0);
		else if (str.length() < pos + len)
			return stringToBigDecimal(leftPad(str, pos + len, "0"));
		else
			return stringToBigDecimal(str.substring(pos, pos + len));
	}

	/**
	 * Converts UniCode String to hex code <div class="ko"> ???????????? ?????? ???????????? hex ?????????
	 * ????????? ????????????. (????????????) </div> ex) stringToHex("123") => "003100320033"
	 * 
	 * @param str
	 *            the String to convert
	 * @return the converted hex string
	 */
	public static String stringToHex(String str) {

		String inStr = str;

		char inChar[] = inStr.toCharArray();
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < inChar.length; i++) {
			String hex = Integer.toHexString((int) inChar[i]);
			if (hex.length() == 2) {
				hex = "00" + hex;
			}
			sb.append(hex);
		}
		return sb.toString();
	}

	/**
	 * Converts String to int <div class="ko"> ???????????? ??????????????? ???????????? ????????????. </div> ex)
	 * stringToNumn("123") => 123
	 * 
	 * @param str
	 *            the String to convert
	 * @return the converted int value
	 */
	public static int stringToNumn(String str) {
		if ("".equals(rightTrim(str)))
			return 0;
		else
			return Integer.parseInt(str);
	}

	/**
	 * Converts String to int from a position <div class="ko"> ???????????? ?????? ??? ????????? ?????????
	 * ?????? ???????????? ??????????????? ???????????? ????????????. </div> ex) stringToNumn("123456789", 5, 3) =>
	 * 678
	 * 
	 * @param str
	 *            the String value to convert
	 * @param pos
	 *            the start position
	 * @param len
	 *            the length of str from pos
	 * @return the converted int value
	 */
	public static int stringToNumn(String str, int pos, int len) {
		if ("".equals(rightTrim(str)))
			return 0;
		else if (str.length() < pos + len)
			return stringToNumn(leftPad(str, pos + len, "0"));
		else
			return stringToNumn(str.substring(pos, pos + len));
	}

	/**
	 * convert first letter to a big letter or a small letter.<br>
	 * 
	 * <pre>
	 * StringUtil.swapFirstLetterCase("Password") = "password'
	 * StringUtil.swapFirstLetterCase("password') = "Password"
	 * </pre>
	 * 
	 * @param str
	 *            String to be swapped
	 * @return String converting result
	 */
	public static String swapFirstLetterCase(String str) {
		StringBuilder sbuf = new StringBuilder(str);
		sbuf.deleteCharAt(0);
		if (Character.isLowerCase(str.substring(0, 1).toCharArray()[0])) {
			sbuf.insert(0, str.substring(0, 1).toUpperCase());
		} else {
			sbuf.insert(0, str.substring(0, 1).toLowerCase());
		}
		return sbuf.toString();
	}

	/**
	 * Converts 10 digit String to business number format(Korean). <div
	 * class="ko"> ????????? 10?????? ?????? String??? "111-11-11111" ????????? ????????????????????? ???????????? ????????????. -
	 * ????????? String??? 10????????? ?????? ??????, ""??? return??????. - ????????? String??? ??????????????? ???????????? ?????? ?????? ??????,
	 * ""??? return??????. </div> ex) toBusinessNoPattern("1111111111") =>
	 * "111-11-11111"
	 * 
	 * @param str
	 *            the String value to convert
	 * @return the String with business number format(Korean)
	 */
	public static String toBusinessNoPattern(String str) {
		if (str == null) {
			return "";
		}
		if (str.length() != 10 || !isDigit(str)) {
			return "";
		} else {
			StringBuffer buffer = new StringBuffer();
			buffer.append(str.substring(0, 3));
			buffer.append('-');
			buffer.append(str.substring(3, 5));
			buffer.append('-');
			buffer.append(str.substring(5, 10));
			return buffer.toString();
		}
	}

	/**
	 * Splits the provided text into an array, separator specified. <div
	 * class="ko"> ????????? String??? ????????? delimiter??? ???????????? tokenize??? ??? String[]??? ????????????. -
	 * Java??? StringTokenizer??? ???????????? ????????????. - ????????? ??????, ??????(space)??? ?????? ??????(trim), ??????
	 * ""??? token??? ?????? ?????? ????????? ????????? ??? ??????. - StringTokenizer??? ???????????????, ????????? delimiter
	 * ????????? token??? ?????? ?????????. - ????????? String??? null??? ??????, null??? return??????. - delimiter???
	 * null??? ??????, ????????? String??? ????????? element??? ????????? String[]??? return??????. </div> ex)
	 * String[] test; test = tokenizeToStringArray("aaa.bbb.ccc.ddd", ".", true,
	 * true) => test[0]="aaa", test[1]="bbb"...
	 * 
	 * @param str
	 *            the String to parse
	 * @param separator
	 *            the character used as the delimiter
	 * @param trimTokens
	 *            trim every tokens of array
	 * @param ignoreEmptyTokens
	 *            ignore empty tokens
	 * @return an array of parsed Strings
	 */
	public static String[] tokenizeToStringArray(String str, String separator,
			boolean trimTokens, boolean ignoreEmptyTokens) {
		if (str == null) {
			return null;
		}
		if (separator == null) {
			return new String[] { str };
		}
		StringTokenizer st = new StringTokenizer(str, separator);
		List<String> tokens = new ArrayList<String>();
		do {
			if (!st.hasMoreTokens()) {
				break;
			}
			String token = st.nextToken();
			if (trimTokens) {
				token = token.trim();
			}
			if (!ignoreEmptyTokens || token.length() != 0) {
				tokens.add(token);
			}
		} while (true);
		return tokens.toArray(new String[tokens.size()]);
	}

	/**
	 * Converts a first character to lower case. <div class="ko"> ????????? String???
	 * ????????? ????????? ???????????? ????????????. </div> ex) toLowercase("ABCD") => "aBCD"
	 * 
	 * @param str
	 *            input string
	 * @return the converted string
	 */
	public static String toLowercase(String str) {
		return changeFirstCharacterCase(false, str);
	}

	/**
	 * Converts 13 digit String to social security number format(Korean). <div
	 * class="ko"> ????????? 13?????? ?????? String??? "111111-1111111" ????????? ?????????????????? ???????????? ????????????. -
	 * ????????? String??? 13????????? ?????? ??????, ""??? return??????. - ????????? String??? ??????????????? ???????????? ?????? ?????? ??????,
	 * ""??? return??????. </div> ex) toSocialSecuNoPattern("1111111111111") =>
	 * "111111=1111111"
	 * 
	 * @param str
	 *            the String value to convert
	 * @return the String with social security number format(Korean)
	 */
	public static String toSocialSecuNoPattern(String str) {
		if (str == null) {
			return "";
		}
		if (str.length() != 13 || !isDigit(str)) {
			return "";
		} else {
			StringBuffer buffer = new StringBuffer();
			buffer.append(str.substring(0, 6));
			buffer.append('-');
			buffer.append(str.substring(6));
			return buffer.toString();
		}
	}

	/**
	 * Converts digit String to telephone number format(Korean). <div
	 * class="ko"> ????????? ???????????? ?????? ????????? ???????????? '-'??? ????????? ???????????? ????????? ???????????? ??????????????? ????????????.
	 * </div>
	 * 
	 * <pre>
	 * String actual = StringUtil.toTelephoneNumberFormat(&quot;032-123-4567&quot;); // 032-123-4567
	 * String actual = StringUtil.toTelephoneNumberFormat(&quot;021234567&quot;); // 02-123-4567
	 * String actual = StringUtil.toTelephoneNumberFormat(&quot;0212345678&quot;); // 02-1234-5678
	 * String actual = StringUtil.toTelephoneNumberFormat(&quot;1234567&quot;); // 123-4567
	 * </pre>
	 * 
	 * @param str
	 *            the String value to convert
	 * @return the String with telephone number format(Korean), separated by '-'
	 */
	public static String toTelephoneNumberFormat(String str) {

		int endNumberDigit = 4;
		int minNumberDigit = 7;

		if (StringUtil.isEmpty(str)) {
			return null;
		}

		String origin = str.trim();
		String tempNumber;

		int originLength = origin.length();

		// extract numeric chars only
		if (StringUtil.isNotNumeric(origin)) {
			StringBuilder sb = new StringBuilder();
			for (int i = 0; i < originLength; i++) {
				if (Character.isDigit(origin.charAt(i))) {
					sb.append(origin.charAt(i));
				}
			}
			tempNumber = sb.toString();
		} else {
			tempNumber = origin;
		}

		int numberLength = tempNumber.length();

		if (numberLength < minNumberDigit) {
			return tempNumber;
		}

		String firstNumber = "";
		String secondNumber = "";
		String thirdNumber = "";

		if (tempNumber.charAt(0) == '0') { // local number or mobile number
			if (tempNumber.charAt(1) == '2') { // Seoul
				firstNumber = tempNumber.substring(0, 2);
				secondNumber = tempNumber.substring(2, numberLength
						- endNumberDigit);
				thirdNumber = tempNumber.substring(numberLength
						- endNumberDigit, numberLength); // split last 4 digits
			} else { // local number or mobile number
				firstNumber = tempNumber.substring(0, 3);
				secondNumber = tempNumber.substring(3, numberLength
						- endNumberDigit);
				thirdNumber = tempNumber.substring(numberLength
						- endNumberDigit, numberLength); // split last 4 digits
			}
			return firstNumber + "-" + secondNumber + "-" + thirdNumber;
		} else { // telephone number without local number
			firstNumber = tempNumber
					.substring(0, numberLength - endNumberDigit);
			secondNumber = tempNumber.substring(numberLength - endNumberDigit,
					numberLength);

			return firstNumber + "-" + secondNumber;
		}

	}

	/**
	 * Converts a first character to uppper case. <div class="ko"> ????????? String???
	 * ????????? ????????? ???????????? ????????????. ex) toUpperCase("abcd") => "Abcd"
	 * 
	 * @param str
	 *            input string
	 * @return the converted string
	 */
	public static String toUpperCase(String inputString) {
		return changeFirstCharacterCase(true, inputString);
	}

	/**
	 * Converts digit String to zip code format(Korean). <div class="ko"> ?????????
	 * 6?????? ?????? String??? "111-111" ????????? ???????????? ???????????? ????????????. - ????????? String??? 6????????? ?????? ??????,
	 * ""??? return??????. - ????????? String??? ??????????????? ???????????? ?????? ?????? ??????, ""??? return??????. </div> ex)
	 * toZipCodePattern("111111") => "111-111"
	 * 
	 * @param str
	 *            the String value to convert
	 * @return the String with zip code format(Korean), separated by '-'
	 */
	public static String toZipCodePattern(String str) {
		if (str == null) {
			return "";
		}
		if (str.length() != 6 || !isDigit(str)) {
			return "";
		} else {
			StringBuffer buffer = new StringBuffer();
			buffer.append(str.substring(0, 3));
			buffer.append('-');
			buffer.append(str.substring(3, 6));
			return buffer.toString();
		}
	}

	/**
	 * If original String has a specific String, remove specific Strings from
	 * original String.
	 * 
	 * <pre>
	 * StringUtil.trim(&quot;pass*word&quot;, &quot;*&quot;) = &quot;password&quot;
	 * </pre>
	 * 
	 * @param origString
	 *            original String
	 * @param trimString
	 *            String to be trimmed
	 * @return converting result
	 */
	public static String trim(String origString, String trimString) {
		int startPosit = origString.indexOf(trimString);
		if (startPosit != -1) {
			int endPosit = trimString.length() + startPosit;
			return origString.substring(0, startPosit)
					+ origString.substring(endPosit);
		}
		return origString;
	}

	/**
	 * Compares two Strings with whitespace normalized by using trim <div
	 * class="ko"> ????????? ??? ?????? String ????????? ?????????, trim()??? ???????????? ????????????. - ????????? String ?????????
	 * null??? ???????????? ?????? ???????????? ?????? ?????? ????????????. </div> ex) trimEquals("     test     ",
	 * "test") => true
	 * 
	 * @param str1
	 *            the first String, may be null
	 * @param str2
	 *            the second String, may be null
	 * @return if the CharSequences are equal, case sensitive, or both null
	 */
	public static boolean trimEquals(String str1, String str2) {
		if (str1 == null) {
			if (str2 == null) {
				return true;
			} else {
				return false;
			}
		} else if (str2 == null) {
			return false;
		} else {
			String trimBaseStr = str1.trim();
			String trimTargetStr = str2.trim();
			return trimBaseStr.equals(trimTargetStr);
		}
	}

	/**
	 * Converts qualified name String to unqualified name String using separator
	 * '.'. <div class="ko"> Qualified Name?????? ????????? String??? ????????? Unqualified Name
	 * ????????? String?????? ????????????. - separator??? '.'??? ????????????. </div>
	 * 
	 * @param qualifiedName
	 *            input string
	 * @return the converted string
	 */
	public static String unqualify(String qualifiedName) {
		return unqualify(qualifiedName, '.');
	}

	/**
	 * Converts qualified name String to unqualified name String using
	 * separator. <div class="ko"> Qualified Name?????? ????????? String??? ????????? Unqualified
	 * Name ????????? String?????? ????????????. - Qualified Name??? ???????????? seperator??? ???????????? ??????????????? ??????.
	 * </div>
	 * 
	 * @param qualifiedName
	 *            input string
	 * @param separator
	 *            the seperator character
	 * @return the converted string
	 */
	public static String unqualify(String qualifiedName, char separator) {
		return qualifiedName
				.substring(qualifiedName.lastIndexOf(separator) + 1);
	}
	
		/**
	 * @deprecated in favor of @link
	 *             {@link DigestUtil#encodePassword(String, String)}
	 */
	@Deprecated
	public static String encodePassword(String password, String algorithm) {
		return DigestUtil.encodePassword(password, algorithm);
	}
	
		/**
	 * @deprecated in favor of @link {@link NumberUtil#isNumber(String)}
	 */
	@Deprecated
	public static boolean isNumeric(String str) {
		return NumberUtil.isNumber(str);
	}

	/**
	 * @deprecated in favor of @link
	 *             {@link ValidationUtil#isPatternMatching(String, String)}
	 */
	@Deprecated
	public static boolean isPatternMatching(String str, String pattern) {
		return ValidationUtil.isPatternMatching(str, pattern);
	}
	

    /**
     * 2012.08.08
     * 
     * 	"OXOX", 5  ==>  [true,false,true,false,false]
     * @param auth
     * @param max
     * @return
     */
    public static boolean[] convertAuth(String auth, int max){

    	boolean[] result = new boolean[max];
		
    	if(auth ==null || auth.isEmpty()){
    		return result;
    	}
    	
    	byte [] authBytes =  auth.getBytes() ; 
    	for(int i=0 ; i<max ; i++){
    		if(i<authBytes.length){
    			if(authBytes[i] == 'O')
    				result[i] = true;
    			else
    				result[i] = false;
    		}
    		else{
    			result[i] = false;
    		}
    	}

    	return result ; 
    }
    
    /**
     * 2013. 06. 04 
     * CLOB -> String ????????? ?????? DaumEditor
     * @param clob
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static String clobToString(Clob clob) throws SQLException,IOException {
    	if (clob == null) return "";
  
    	StringBuffer strOut = new StringBuffer();  
    	String str = "";
  
    	BufferedReader br = new BufferedReader(clob.getCharacterStream());
    	
    	while ((str = br.readLine()) != null) {
    		strOut.append(str);
    	}
    	return strOut.toString();
    }
    
    /**
     * 2013. 06. 04 
     * CLOB -> String ????????? ?????? Textarea
     * @param clob
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static String clobToText(Clob clob) throws SQLException,IOException {
    	if (clob == null) return "";
  
    	StringBuffer strOut = new StringBuffer();  
    	String str = "";
  
    	BufferedReader br = new BufferedReader(clob.getCharacterStream());
    	
    	while ((str = br.readLine()) != null) {
    		strOut.append(str+"\n");
    	}
    	return strOut.toString();
    }
    
    /**
     * 2014. 01. 28 
     * CLOB -> HTML ????????? ??????
     * @param clob
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static String clobToHTML(Clob clob) throws SQLException,IOException {
    	if (clob == null) return "";
  
    	StringBuffer strOut = new StringBuffer();  
    	String str = "";
  
    	BufferedReader br = new BufferedReader(clob.getCharacterStream());
    	
    	while ((str = br.readLine()) != null) {
    		strOut.append(str+"<br/>");
    	}
    	return strOut.toString();
    }
    
    /**
     * HTML ??????
     */    
    public static String removeHTML(String content){
    	Matcher mat;   
    	Pattern tag = Pattern.compile("<(\"[^\"]*\"|\'[^\']*\'|[^\'\">])*>");
    	mat = tag.matcher(content);  
    	content = mat.replaceAll("");
    	return content;
    }
    
    /*
     * ??????????????? ????????? ??????
     */
	public static String[] AttachImgSplit(String strData)
	{
		String[] strAttachData = new String[4];
		if(strData == null || strData.length() <= 2)
		{
			strAttachData[0] ="";
			strAttachData[1] ="";
			strAttachData[2] ="";
			strAttachData[3] ="";
			return strAttachData;
		}			
		
		StringTokenizer TokenData = new StringTokenizer(strData,",",false);
		int idx=0;
		while(TokenData.hasMoreTokens())
		{
			if(idx>=4)
				break;
			strAttachData[idx] = TokenData.nextToken();
			idx++;
		}
		return strAttachData;
	}
	

	/* ??????????????? ?????????  ????????? ????????? String ?????? ???????????????.
	 * 
	 * 
	 * 
	 */
	@SuppressWarnings("resource")
	public static String getHtmlString(String filename, String templet_path) throws Exception {
        String htmlString = "";
        File file = null; 
        try{
        	file = new File(templet_path+filename);
        	//BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)) );
        	BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file),"euc-kr"));
        	StringBuffer sb =new StringBuffer();
        	String str = "";
        	while((str=br.readLine())!=null){
        		sb.append(str+" \n");
        	}
        	htmlString = sb.toString();
        }catch(Exception e){
        	if(file.length()==0){
        		System.out.println(templet_path+filename+" No files.");
        	}
        }
        return htmlString;
    }
	
	//SHA-256
	public static String getSHA(String base) {
	    try{
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	        byte[] hash = digest.digest(base.getBytes("UTF-8"));
	        StringBuffer hexString = new StringBuffer();
	 
	        for (int i = 0; i < hash.length; i++) {
	            String hex = Integer.toHexString(0xff & hash[i]);
	            if(hex.length() == 1) hexString.append('0');
	            hexString.append(hex);
	        }
	 
	        return hexString.toString();
	    } catch(Exception ex){
	       throw new RuntimeException(ex);
	    }
	}
	
	public static String getSalt() {
		Random random = new Random();     
	    byte[] salt = new byte[10];

	    random.nextBytes(salt);     

	    StringBuffer sb = new StringBuffer();

	    for(int i=0; i<salt.length; i++) {
	    	sb.append(String.format("%02x", salt[i]));
	    }     
	    return sb.toString();
	}

	public static String getSHA256Salt(String pwd, String saltval) {
	    
		String result = "";
		try{
	    	String bit = "256";
	    	byte[] salt = saltval.getBytes();
	        

	        byte[] temp = pwd.getBytes();
	        byte[] bytes = new byte[temp.length + salt.length];
	 
	        MessageDigest md = MessageDigest.getInstance("SHA-256");
	        md.update(bytes);

	        byte[] b = md.digest();
	  
	        StringBuffer sb = new StringBuffer();

	        for(int i=0; i<b.length; i++) {
	        	sb.append(Integer.toString((b[i] & 0xFF) + 256, 16).substring(1));
	        }
	        result = sb.toString();
	        
	    } catch(Exception ex){
	       throw new RuntimeException(ex);
	    }
	    return result;
	}
	
	//SHA-256 / 512
	public static String getSHA(String base, String bit) {
	    try{
	    	if(bit != "256" || bit != "512") bit = "256";
	    	
	        MessageDigest digest = MessageDigest.getInstance("SHA-" + bit);
	        byte[] hash = digest.digest(base.getBytes("UTF-8"));
	        StringBuffer hexString = new StringBuffer();
	 
	        for (int i = 0; i < hash.length; i++) {
	            String hex = Integer.toHexString(0xff & hash[i]);
	            if(hex.length() == 1) hexString.append('0');
	            hexString.append(hex);
	        }
	 
	        return hexString.toString();
	    } catch(Exception ex){
	       throw new RuntimeException(ex);
	    }
	}
	
	public static String randomPassword (int length) {
		int index = 0;
		char[] charSet = new char[] {
			    '0','1','2','3','4','5','6','7','8','9'
			    ,'A','B','C','D','E','F','G','H','I','J','K','L','M'
			    ,'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
			    ,'a','b','c','d','e','f','g','h','i','j','k','l','m'
			    ,'n','o','p','q','r','s','t','u','v','w','x','y','z'};
		
		StringBuffer sb = new StringBuffer();
		for (int i=0; i<length; i++) {
			index =  (int) (charSet.length * Math.random());
			sb.append(charSet[index]);
		}
		
		return sb.toString();		
	}
	
	 /**
	  * null??? ?????????.
	  * @param str
	  * @return
	  */
	 public static boolean isNotNull(String str) {
		  /**
		   * isNull??? true?????? false
		   * false?????? true
		   */
		  if( isNull(str) ){
			  return false;
	
		  } else {
			  return true;
		  }
	 }
	 
	 public static boolean isNull(String str) {

		 return (str == null || (str.trim().length()) == 0 );
	 }
	 
	 public static String[] trimedStringArray(String as[])
    {
        if(as == null)
            return null;
        String as1[] = new String[as.length];
        for(int i = 0; i < as.length; i++)
            if(as[i] != null)
                as1[i] = as[i].trim();

        return as1;
    }
	
public static int toInt(String intString, int radix, int defaultValue) {
        try { return Integer.parseInt(intString, radix); } catch (NumberFormatException nfe) { return defaultValue; }
    }

  public static int toInt(String intString, int defaultValue) {
        try { return Integer.parseInt(intString); } catch (NumberFormatException nfe) { return defaultValue; }
    }

 public static int toInt(String intString) {
        return toInt(intString, 0);
    }
	   
	public static String[] toStringArray(Collection collection)
	{
		if(collection == null) return null;
		
		return(String[]) collection.toArray(new String[collection.size()]);
	
	}
	
  public static String[] splitToArray(String sourceString, String delimiter) {
        return toStringArray(splitToList(sourceString, delimiter));
    }
    
	
    public static List splitToList(String sourceString, String delimiter) {
        if (isNull(sourceString)) return null;
        
        List list = new ArrayList();

        String spilt = sourceString;
        int pos = 0;
        while (pos >= 0) {
            pos = spilt.indexOf(delimiter);
            if (pos > -1) {
                list.add(spilt.substring(0, pos));
                spilt = spilt.substring(pos + delimiter.length());
            } else {
                if(spilt.length() >= 0) {
                    list.add(spilt);
                }
            }
        }

        return list;
    }
		
      public static byte[] toBytes(String sourceString, String charset) {
        if(sourceString == null) return new byte[0];
        
        try {
            return sourceString.getBytes(charset);
        } catch (UnsupportedEncodingException uee) {
            return sourceString.getBytes();
        }
    }
    
     public static int getByteLength(String sourceString, String charset) {
        byte[] bytes = toBytes(sourceString, charset);
        
        return bytes == null ? 0 : bytes.length;
    }
    
    public static int getByteLength(Object sourceObject, String charset) {
        return sourceObject == null ? 0 : getByteLength(sourceObject.toString(), charset);
    }
      public static String lPad(String sourceString, int length, char fillChar) {
        return lPad(sourceString, length, fillChar, "euc-kr");
    }
 public static String lPad(String sourceString, int length, char fillChar, String charset) {
        if(length <= 0) return sourceString;

        int srcByteLength = getByteLength(sourceString, charset);
        
        if(srcByteLength >= length) return sourceString;
            
        int fillSize = (length - srcByteLength);
        
        return fillSize > 0 ? makeString(fillChar, fillSize) + sourceString : sourceString;
    }

   public static String makeString(char fillChar, int length) {
        StringBuffer stringBuilder = new StringBuffer(length);
        
        switch(fillChar) {
            case '0': stringBuilder.append(makeZeroString(length));
                break;
                
            case ' ': stringBuilder.append(makeBlankString(length));
                break;
                
            default :
                StringBuffer charBuffer = new StringBuffer(10);
                for(int index = 0; index < 10; index++) charBuffer.append(fillChar);

                int leftLen = length;
                while (leftLen > 0) {
                    if(leftLen < 10) {
                        stringBuilder.append(fillChar);
                        leftLen--;
                    } else {
                        stringBuilder.append(charBuffer.toString());
                        leftLen -= 10;
                    }
                }
        }
        
        return stringBuilder.toString();
    }
     public static String makeBlankString(int fillLen) {
        StringBuffer blankBuffer = new StringBuffer(100);
        
        int leftLen = fillLen;
        while (leftLen > 0) {
            if (leftLen < 10) {
                blankBuffer.append(" ");
                leftLen--;
            } else if (leftLen >= 10 && leftLen < 20) {
                //---------------0        1
                //---------------1234567890//
                blankBuffer.append("          ");
                leftLen = leftLen - 10;
            } else if (leftLen >= 20 && leftLen < 30) {
                //---------------0        1         2
                //---------------12345678901234567890//
                blankBuffer.append("                    ");
                leftLen = leftLen - 20;
            } else if (leftLen >= 30 && leftLen < 40) {
                //---------------0        1         2         3
                //---------------123456789012345678901234567890//
                blankBuffer.append("                              ");
                leftLen = leftLen - 30;
            } else if (leftLen >= 40 && leftLen < 50) {
                //---------------0        1         2         3         4
                //---------------1234567890123456789012345678901234567890//
                blankBuffer.append("                                        ");
                leftLen = leftLen - 40;
            } else if (leftLen >= 50 && leftLen < 60) {
                //---------------0        1         2         3         4         5
                //---------------12345678901234567890123456789012345678901234567890//
                blankBuffer.append("                                                  ");
                leftLen = leftLen - 50;
            } else if (leftLen >= 60 && leftLen < 70) {
                //---------------0        1         2         3         4         5         6
                //---------------123456789012345678901234567890123456789012345678901234567890//
                blankBuffer.append("                                                            ");
                leftLen = leftLen - 60;
            } else if (leftLen >= 70 && leftLen < 80) {
                //---------------0        1         2         3         4         5         6         7
                //---------------1234567890123456789012345678901234567890123456789012345678901234567890//
                blankBuffer.append("                                                                      ");
                leftLen = leftLen - 70;
            } else if (leftLen >= 80 && leftLen < 90) {
                //---------------0        1         2         3         4         5         6         7         8
                //---------------12345678901234567890123456789012345678901234567890123456789012345678901234567890//
                blankBuffer.append("                                                                                ");
                leftLen = leftLen - 80;
            } else if (leftLen >= 90 && leftLen < 100) {
                //---------------0        1         2         3         4         5         6         7         8         9
                //---------------123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890//
                blankBuffer.append("                                                                                          ");
                leftLen = leftLen - 90;
            } else if (leftLen >= 100) {
                while (leftLen >= 100) {
                    //---------------0        1         2         3         4         5         6         7         8         9         10
                    //---------------1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890//
                    blankBuffer.append("                                                                                                    ");
                    leftLen = leftLen - 100;
                }
            }
        } // end of While

        return blankBuffer.toString();
    }
     public static String makeZeroString(int fillLen) {
        StringBuffer zeroBuffer = new StringBuffer(100);
        
        int leftLen = fillLen;
        while (leftLen > 0) {
            if (leftLen < 10) {
                zeroBuffer.append("0");
                leftLen--;
            } else if (leftLen >= 10 && leftLen < 20) {
                //--------------0        1
              //--------------1234567890//
                zeroBuffer.append("0000000000");
                leftLen = leftLen - 10;
            } else if (leftLen >= 20 && leftLen < 30) {
                //--------------0        1         2
                //--------------12345678901234567890//
                zeroBuffer.append("00000000000000000000");
                leftLen = leftLen - 20;
            } else if (leftLen >= 30 && leftLen < 40) {
                //--------------0        1         2         3
                //--------------123456789012345678901234567890//
                zeroBuffer.append("000000000000000000000000000000");
                leftLen = leftLen - 30;
            } else if (leftLen >= 40 && leftLen < 50) {
                //--------------0        1         2         3         4
                //--------------1234567890123456789012345678901234567890//
                zeroBuffer.append("0000000000000000000000000000000000000000");
                leftLen = leftLen - 40;
            } else if (leftLen >= 50 && leftLen < 60) {
                //--------------0        1         2         3         4         5
              //--------------12345678901234567890123456789012345678901234567890//
                zeroBuffer.append("00000000000000000000000000000000000000000000000000");
                leftLen = leftLen - 50;
            } else if (leftLen >= 60 && leftLen < 70) {
                //--------------0        1         2         3         4         5         6
                //--------------123456789012345678901234567890123456789012345678901234567890//
                zeroBuffer.append("000000000000000000000000000000000000000000000000000000000000");
                leftLen = leftLen - 60;
            } else if (leftLen >= 70 && leftLen < 80) {
                //--------------0        1         2         3         4         5         6         7
              //--------------1234567890123456789012345678901234567890123456789012345678901234567890//
                zeroBuffer.append("0000000000000000000000000000000000000000000000000000000000000000000000");
                leftLen = leftLen - 70;

            } else if (leftLen >= 80 && leftLen < 90) {
                //--------------0        1         2         3         4         5         6         7         8
                //--------------12345678901234567890123456789012345678901234567890123456789012345678901234567890//
                zeroBuffer.append("00000000000000000000000000000000000000000000000000000000000000000000000000000000");

                leftLen = leftLen - 80;
            } else if (leftLen >= 90 && leftLen < 100) {
                //--------------0        1         2         3         4         5         6         7         8         9
                //--------------123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890//
                zeroBuffer.append("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");

                leftLen = leftLen - 90;
            } else if (leftLen >= 100) {
                while (leftLen >= 100) {
                    //--------------0        1         2         3         4         5         6         7         8         9         10
                    //--------------1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890//
                    zeroBuffer.append("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
                    leftLen = leftLen - 100;
                }
            }
        } // end of While

        return zeroBuffer.toString();
    }
     
    /* Get Oracle Number type
     * 
     * 
     * 
     */
    public static int objectToInt(Object obj, int defaultNumber) {
        if (obj == null)
            return defaultNumber;
        String strObj = String.valueOf(obj);
        if (strObj.isEmpty() || NumberUtil.isNumber(strObj) == false)
            return defaultNumber;
        return Integer.parseInt(strObj);
    }
    
    /*
     * JSTL Bit ??????
     * 
     * 
     */
    public static boolean hasPageAuth(int pageAuth, int userAuth)
    {
        return (pageAuth & userAuth) == userAuth;
    }
    
    public static String getRandomPassword(int length) {
        String password = "";
        StringBuilder buf = new StringBuilder();
        for (int i = 0; i < length; i++) {
            buf.append(alphanumbers[StringUtil.generator.nextInt(62)]);
        }
        password = buf.toString();
        String numRegex    = ".*[0-9].*";
        String alphaRegex1 = ".*[a-z].*";
        String alphaRegex2 = ".*[A-Z].*";
        
        if (password.matches(numRegex) == false)
            buf.append(numbers[StringUtil.generator.nextInt(10)]);
        
        if (password.matches(alphaRegex1) == false || password.matches(alphaRegex2) == false)
            buf.append(alphas[StringUtil.generator.nextInt(52)]);
        return buf.toString();
    }
    
    /** URL?????? ??????????????? ???????????? **/
    public static Map<String, String> getQueryMap(String query)
    {    	
    	if (query==null) return null;
    	
    	int pos1=query.indexOf("?");
    	if (pos1>=0) {
    		query=query.substring(pos1+1);
    	}
    	
        String[] params = query.split("&");
        Map<String, String> map = new HashMap<String, String>();
        for (String param : params)
        {
            String name = param.split("=")[0];
            String value = param.split("=")[1];
            map.put(name, value);
        }
        return map;
    }


}


