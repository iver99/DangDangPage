package com.iver99.util;

/**
 * 这个类已经作废不用了
 * @author RussWest
 *
 */
public class RandomID {
	/**
	 * 返回一个随机id
	 * @return
	 */
	public static int getRandom()
	{
		return ((int)(Math.random()*1730+Math.random()*1490))%137;
		//return i;
	}

}
