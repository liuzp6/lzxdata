package com.lzxuni.common.utils;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 使用javax image io生成缩略图
 * 
 * @author kingapex 2010-7-10下午11:43:05
 */
public class JavaImageIOCreator {
	private String srcFile;
	private String destFile;

	private static Map<String, String> extMap;
	static {
		extMap = new HashMap<String, String>(5);
		extMap.put("jpg", "JPEG");
		extMap.put("jpeg", "JPEG");
		extMap.put("gif", "GIF");
		extMap.put("png", "PNG");
		extMap.put("bmp", "BMP");

	}

	public JavaImageIOCreator(String sourcefile, String targetFile) {
		this.srcFile = sourcefile;
		this.destFile = targetFile;
	}

	public void resize(int w, int h) {
		String ext = FileUtil.getFileExt(srcFile).toLowerCase();

		BufferedImage image;
		try {
			Image img = Toolkit.getDefaultToolkit().getImage(srcFile);
			// image = ImageIO.read(new File(srcFile));
			image = FileUtil.toBufferedImage(img);
			ImageIO.write(Lanczos.resizeImage(image, w, h), ext, new File(destFile));
		} catch (IOException e) {
			throw new RuntimeException("生成缩略图错误", e);
		}
	}

	/**
	 * 
	 *<b>功能：</b>
	 * 等比例压缩算法：
	 * 算法思想：根据压缩基数和压缩比来压缩原图，生产一张图片效果最接近原图的缩略图 <br>
	 *<b>作者：</b>孙志强<br>
	 *<b>日期：</b> 2017年5月24日 下午3:41:55 <br>
	 * @param comBase   压缩基数
	 * @param scale
	 * 			    压缩限制(宽/高)比例 一般用：
	 *            当scale>=1,缩略图height=comBase,width按原图宽高比例;若scale<1,缩略图width=
	 *            comBase,height按原图宽高比例
	 * @throws Exception
	 */
	public void resize(double comBase, double scale) throws Exception {
	        File file = new File(srcFile);
	        Image src = ImageIO.read(file);
	        int srcHeight = src.getHeight(null);
	        int srcWidth = src.getWidth(null);
	        int deskHeight = 0;// 缩略图高
	        int deskWidth = 0;// 缩略图宽
	        double srcScale = (double) srcHeight / srcWidth;

	        /**缩略图宽高算法*/

	        if ((double) srcHeight > comBase || (double) srcWidth > comBase) {

	            if (srcScale >= scale ||  1/ srcScale > scale) {
	                if (srcScale >= scale) {
	                    deskHeight = (int) comBase;
	                    deskWidth = srcWidth * deskHeight / srcHeight;
	                } else {
	                    deskWidth = (int) comBase;
	                    deskHeight = srcHeight * deskWidth / srcWidth;
	                }
	            } else {
	                if ((double) srcHeight > comBase) {
	                    deskHeight = (int) comBase;
	                    deskWidth = srcWidth * deskHeight / srcHeight;
	                } else {
	                    deskWidth = (int) comBase;
	                    deskHeight = srcHeight * deskWidth / srcWidth;
	                }
	            }
	        } else {
	            deskHeight = srcHeight;
	            deskWidth = srcWidth;
	        }
	        BufferedImage tag = new BufferedImage(deskWidth, deskHeight, BufferedImage.TYPE_3BYTE_BGR);
	        tag.getGraphics().drawImage(src,0 , 0, deskWidth, deskHeight, null); //绘制缩小后的图
	        FileOutputStream deskImage = new FileOutputStream(destFile); //输出到文件流
	        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(deskImage);
	        encoder.encode(tag); //近JPEG编码
	        deskImage.close();
	    }

	public static void main(String args[]) throws Exception {
		//指定款高压缩
		//JavaImageIOCreator creator = new JavaImageIOCreator("C:/Users/szq/Desktop/QQ图片20170523091330.jpg", "C:/Users/szq/Desktop/SQQ图片20170523091330.jpg");
		//creator.resize(180, 180);
		
		//等比压缩
		//creator.resize(500, 0.9d);
	}

}
