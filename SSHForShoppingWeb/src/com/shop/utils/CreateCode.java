package com.shop.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CreateCode {
	int width=120;
	int height=30;
	public StringBuffer sb;
	BufferedImage bufferedImage;
	public CreateCode() {
		// TODO Auto-generated constructor stub
		bufferedImage=new BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);
		sb=new StringBuffer();
	}
	public BufferedImage getImg()
	{
		Graphics g=bufferedImage.getGraphics();
		g.setColor(Color.WHITE);
		g.fillRect(0,0,width,height);
		
		g.setColor(getColor(200, 250));
		g.drawRect(0, 0, width-1, height-1);
		
		Graphics2D graphics2d=(Graphics2D) g;
		g.setFont(new Font("»ªÎÄÐÂÎº",Font.BOLD,18));
		
		int x=10;
		String words="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	    Random random=new Random();
	    for(int i=0;i<4;i++)
	    {
	    	graphics2d.setColor(new Color(random.nextInt(125),random.nextInt(125),random.nextInt(125)));
	    	char c=words.charAt(random.nextInt(words.length()));
	    	sb.append(c);
	    	int jungle=random.nextInt(60)-30;
	    	double theta=jungle*Math.PI/180;
	    	graphics2d.rotate(theta, x, 20);
	    	graphics2d.drawString(String.valueOf(c), x, 20);
	    	graphics2d.rotate(-theta, x, 20);
	    	x+=30;
	    }
		
		return bufferedImage;
	}
	public Color getColor(int fc,int bc)
	{
		Random random=new Random();
		int r=fc+random.nextInt(bc-fc);
		int g=fc+random.nextInt(bc-fc);
		int b=fc+random.nextInt(bc-fc);;
		return new Color(r,g,b);
	}
}
