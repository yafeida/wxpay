package com.monkey.common.util;

import java.util.UUID;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class MD5Utils {

	protected MD5Utils(){
		
	}

	private static final String ALGORITH_NAME = "md5";

	private static final int HASH_ITERATIONS = 2;

	public static String genSalt(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static String encrypt(String username, String pswd ,String salt) {
		return new SimpleHash(ALGORITH_NAME, pswd, ByteSource.Util.bytes(salt),HASH_ITERATIONS).toHex();
	}

}
