package com.lzxuni.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

/**
 *
 * <b>功能：</b> 下载文件工具类<br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年3月9日 下午11:21:10
 *
 * @version 1.0 <br>
 */
public class FileDownload {

	/**
	 * @param response
	 * @param filePath
	 *            //文件完整路径(包括文件名和扩展名)
	 * @return 文件名
	 */
	public static void fileDownload(final HttpServletRequest request, final HttpServletResponse response, String filePath)
			throws Exception {
		File f = new File(filePath);
		String fileName = "";
		String header = request.getHeader("User-Agent").toUpperCase();
		if (header.contains("MSIE") || header.contains("TRIDENT") || header.contains("EDGE")) {
			fileName = URLEncoder.encode(f.getName(), "utf-8");
			fileName = fileName.replace("+", "%20"); // IE下载文件名空格变+号问题
		} else {
			fileName = new String(f.getName().getBytes(), "ISO8859-1");
		}
		response.setContentType("application/octet-stream;charset=ISO8859-1");
		response.setHeader("Content-Disposition", "attachment;filename=\"" + fileName + "\"");
		response.setContentLength((int) f.length());
		BufferedInputStream fileInputStream = new BufferedInputStream(new FileInputStream(f));
		int i;
		OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
		while ((i = fileInputStream.read()) != -1) {
			outputStream.write(i);
		}
		fileInputStream.close();
		outputStream.flush();
		outputStream.close();
		response.flushBuffer();
	}

	public static void fileDownload(final HttpServletRequest request, final HttpServletResponse response, String filePath,
									String name) throws Exception {
		File f = new File(filePath);
		// FilenameUtils.getExtension(name) ;
		String fileName = "";
		String header = request.getHeader("User-Agent").toUpperCase();
		if (header.contains("MSIE") || header.contains("TRIDENT") || header.contains("EDGE")) {
			fileName = URLEncoder.encode(name, "utf-8");
			fileName = fileName.replace("+", "%20"); // IE下载文件名空格变+号问题
		} else {
			fileName = new String(name.getBytes(), "ISO8859-1");
		}
		response.setContentType("application/octet-stream;charset=ISO8859-1");
		response.setHeader("Content-Disposition", "attachment;filename=\"" + fileName + "\"");
		response.setContentLength((int) f.length());
		BufferedInputStream fileInputStream = new BufferedInputStream(new FileInputStream(f));
		int i;
		OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
		while ((i = fileInputStream.read()) != -1) {
			outputStream.write(i);
		}
		fileInputStream.close();
		outputStream.flush();
		outputStream.close();
		response.flushBuffer();
	}
}
