package com.shop.utils;

import java.util.Random;
import java.util.UUID;

/*
 * ���ɼ����빤��
 */
public class AcCode {
	public static String getactiveCode()
	{
		return UUID.randomUUID().toString().replace("-", "");
	}
}
