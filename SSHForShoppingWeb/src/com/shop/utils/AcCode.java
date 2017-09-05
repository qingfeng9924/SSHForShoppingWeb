package com.shop.utils;

import java.util.Random;
import java.util.UUID;

/*
 * 生成激活码工具
 */
public class AcCode {
	public static String getactiveCode()
	{
		return UUID.randomUUID().toString().replace("-", "");
	}
}
