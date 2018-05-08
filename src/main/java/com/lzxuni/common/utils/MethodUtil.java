package com.lzxuni.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MethodUtil {
	
	/**
	 * 
	 * <b>功能：</b>获取登录用户的IP地址 <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:37:57 <br> 
	 * @param request
	 * @return 
	 * @return ip地址  
	 */
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		if (ip.equals("0:0:0:0:0:0:0:1")) {
			ip = "本地";
		}
		return ip;
	}
	/**
	 * 
	 * <b>功能：</b>MD5加密方法 <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:38:59 <br> 
	 * @param str
	 * @param encoding default UTF-8
	 * @param no_Lower_Upper  0,1,2
	 * @return 
	 * @return String  
	 */
	public String getMD5(String str,String encoding,int no_Lower_Upper) {
		if(null==encoding)encoding="utf-8";
		StringBuffer sb = new StringBuffer();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] array = md.digest(str.getBytes(encoding));
			for (int i = 0; i < array.length; i++) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).toUpperCase().substring(1, 3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(no_Lower_Upper==0){
			return sb.toString();
		}
		if(no_Lower_Upper==1){
			return sb.toString().toLowerCase();
		}
		if(no_Lower_Upper==2){
			return sb.toString().toUpperCase();
		}
		return null;
	}
	/**
	 * 
	 * <b>功能：</b> 获取日期方法<br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:54:05 <br> 
	 * @param type 0=yyyy-MM-dd HH:mm:ss,1=yyyyMMddHHmmss,2=yyyyMMdd
	 * @param formatStr null 自定义
	 * @return 
	 * @return String  
	 */
	public static String getDateString(int type,String formatStr){
		Date date = new Date(); 
		SimpleDateFormat sdf = null;
		if(null!=formatStr){
		   sdf=new SimpleDateFormat(formatStr);
		}else if(type==0){
			sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}else if(type==1){
			sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		}else if(type==2){
			sdf=new SimpleDateFormat("yyyy-MM-dd");
		}
		String str=sdf.format(date);
		return str;
	}
	/**
	 * 
	 * <b>功能：</b> 获取当前日期方法<br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:54:05 <br> 
	 * @param type 0=yyyy-MM-dd HH:mm:ss,1=yyyyMMddHHmmss,2=yyyyMMdd,3=yyyy-MM-dd HH:mm
	 * @param formatStr null 自定义
	 * @return 
	 * @return Date  
	 */
	public static Date getDate(int type,String formatStr){
		Date date = new Date(); 
		SimpleDateFormat sdf = null;
		if(null!=formatStr){
		   sdf=new SimpleDateFormat(formatStr);
		}else if(type==0){
			sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}else if(type==1){
			sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		}else if(type==2){
			sdf=new SimpleDateFormat("yyyyMMdd");
		}else if(type==3){
			sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		}
		Date str=new Date();
		try {
			str = sdf.parse(sdf.format(date));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return str;
	}
	
	/**
	 * 格式化指定日期成字符串
	 * <b>功能：</b> <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2017年1月3日 下午10:35:36 <br> 
	 * @param type
	 * @param date
	 * @return 
	 * @return String  
	 */
	public static String formatDate(int type,Date date){
		SimpleDateFormat sdf = null;
		if(type==0){
			sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}else if(type==1){
			sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		}else if(type==2){
			sdf=new SimpleDateFormat("yyyyMMdd");
		}else if(type==3){
			sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		}else{
			sdf=new SimpleDateFormat("yyyy-MM-dd");
		}
		if(date==null){
			return null;
		}
		return sdf.format(date);
	}

	/**
	 * 
	 * <b>功能：</b>时间差 <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:53:05 <br> 
	 * @param current_time  当前时间
	 * @param compare_time  比较时间
	 * @return 
	 * @return long  60秒为一分钟
	 */
	public static long getDateCompare(String current_time, String compare_time) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		long time = 0;
		try {
			Date c_tiem = sf.parse(current_time);
			Date com_time = sf.parse(compare_time);
			long l = c_tiem.getTime() - com_time.getTime() > 0 ? c_tiem.getTime() - com_time.getTime() : com_time.getTime() - c_tiem.getTime();
			time = l / 1000; // 算出超时秒数
		} catch (Exception e) {
			e.printStackTrace();
		}
		return time;
	}
	
	/**
	 * 
	 * <b>功能：</b>处理时间的加减运算 60*60 为一个小时  60*60*24 为一天 <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:52:41 <br> 
	 * @param startTime
	 * @param endTime
	 * @param type 0为加 1为减
	 * @return 
	 * @return long  
	 */
	public static long getDateAdd(String startTime, String endTime, int type) {
		long time = 0l;
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(startTime);
			Date addLong = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(endTime);
			switch (type) {
			case 0:
				time = (date.getTime() / 1000) + (addLong.getTime() / 1000);
				break;
			case 1:
				time = (date.getTime() / 1000) - (addLong.getTime() / 1000);
				break;
			default:
				time = (date.getTime() / 1000) + (addLong.getTime() / 1000);
				break;
			}
			date.setTime(time * 1000);
			time = date.getTime();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return time;
	}
	/**
	 * 
	 * <b>功能：</b> 打印<br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月11日 上午10:51:51 <br> 
	 * @param response
	 * @param str 
	 * @return void  
	 */
	public static void writer(HttpServletResponse response, String str) {
		try {
			// 设置页面不缓存
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setCharacterEncoding("UTF-8");
			//IE9可能出现打印，所以不需要设置
			//response.setContentType("application/json;charset=utf-8");
			PrintWriter out = null;
			out = response.getWriter();
			out.print(str);//.getBytes("UTF-8")
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
