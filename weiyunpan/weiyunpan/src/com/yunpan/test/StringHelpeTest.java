package com.yunpan.test;

import org.junit.Test;

import com.yunpan.util.StringHelper;

public class StringHelpeTest {

	@Test
	public void testM5(){
		System.out.println(StringHelper.MD5("111111"));
		System.out.println(StringHelper.MD5("698d51a19d8a121ce581499d7b701668"));
	}
	@Test
	public void testgetCurrentFormatDate(){
		System.out.println(StringHelper.getCurrentFormatDate());
	}
	@Test
	public void testgetCurrentTimeStamp(){
		System.out.println(StringHelper.getCurrentTimeStamp());
	}
	@Test
	public void testTime(){
		System.out.println(StringHelper.getCurrentFormatDate());
	}
}
