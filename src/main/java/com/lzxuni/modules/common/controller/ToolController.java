package com.lzxuni.modules.common.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.FileUtil;
import com.lzxuni.common.utils.JavaImageIOCreator;
import com.lzxuni.common.utils.JsonResultUtil;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.entity.FileBean;
import com.lzxuni.modules.common.service.FileBeanService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 
 * @Description: 上传文件controller，图片路径为项目根目录下upload/时间/文件名
 * @author 孙志强 
 * @date 2017年3月4日 下午1:09:22 
 *
 */
@Controller
public class ToolController {

	/**
	 * 
	 * @Title: uploadImage 
	 * @Description: 上传文集核心controller
	 * @param @param file
	 * @param @param type
	 * @param @param thumbWidth压缩图片宽
	 * @param @param thumbHeight压缩图片高
	 * @param @param request
	 * @return Object    返回类型 格式json{\"result\":1,\"message\":1}，0，代result0，代表失败，message消息
	 * 成功result=1，data类型为json，FileBeanjson统一处理
	 */
	
	@Autowired
	private FileBeanService fileBeanService;
	
	@ResponseBody
	@RequestMapping(value = "upload.html")
	public Object uploadImage(MultipartFile file, String type1, HttpServletRequest request) {
		String date = new SimpleDateFormat("yyyyMMdd").format(new Date());
		try { 
			if (file != null) {
				if(type1.equals("image")){
					if (!FileUtil.isAllowUpImg(file.getOriginalFilename())) {
						return JsonResultUtil.getErrorJson("不允许上传的图片格式");
					}	
				}else{
					if(!FileUtil.isAllowUp(file.getOriginalFilename())){
						return JsonResultUtil.getErrorJson("不允许上传的文件格式");
					}  
				}
					//文件会上传到项目\\upload\\时间\\文件夹中
	                String filePath = request.getSession().getServletContext().getRealPath("/upload");

					String realPath=filePath+File.separator+date+File.separator;
	                String fileName=UuidUtil.get32UUID()+"."+FileUtil.getFileExt(file.getOriginalFilename());
	                FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, fileName));
	                if(type1.equals("image")){
						// 获得图片宽高
						BufferedImage srcImage = null;
						srcImage = ImageIO.read(new File(realPath , fileName));
						//Integer thumbHeight = srcImage.getHeight();
						Integer thumbWidth = srcImage.getWidth();

						JavaImageIOCreator creator = new JavaImageIOCreator(realPath+fileName, realPath +"s"
								+ fileName);
						// 等比压缩
						creator.resize(thumbWidth, 0.9);
	                }
	                FileBean fileBean = new FileBean();
	                fileBean.setFileName(fileName);
	                fileBean.setRealName(file.getOriginalFilename());
	                fileBean.setRealSize(file.getSize());
	                fileBean.setRealPath(realPath+fileName);
	                fileBean.setSfileName("s"+fileName);
	                fileBean.setUrlPath("/upload/"+date+"/"+fileName) ;
	                fileBean.setUrlSpath("/upload/"+date+"/"+"s"+fileName);
	                return JsonResultUtil.getSuccessJson( JSON.toJSONString(fileBean));
				
			}
		} catch (Exception e) {
			return JsonResultUtil.getErrorJson("上传出错："+e.getLocalizedMessage());
		}
		return JsonResultUtil.getErrorJson("失败");
	}
	@ResponseBody
	@RequestMapping(value="filelist.html")
	public Object updateDo(FileBean fielBean, HttpServletRequest request) throws Exception{
		List<FileBean> fileBeans = fileBeanService.selectList(fielBean);
		return fileBeans;
	}


	/**
	 * 功能描述: 系统文件下载方法<br>
	 * @Author:孙志强
	 * @date: 2018/3/14 13:26
	 * @param id
	 * @param request
	 * @param response
	 * @return:void
	*/
	@RequestMapping(value="/attachment.do")
	public void attachment(String id, HttpServletRequest request, HttpServletResponse response) throws Exception{
		FileBean fileBean = fileBeanService.selectById(id);
		if(fileBean==null){
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}else{
			//String url=CmsConfig.CMS_FILEPATH+fileBean.getUrlPath();
			//FileDownload.fileDownload(request,response, url,fileBean.getRealName());
		}
	}
	
}
