<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.lang.*,java.text.*"%>
<%@ page import="com.lzxuni.util.*"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload,org.apache.commons.fileupload.FileItem,org.apache.commons.fileupload.DiskFileUpload,org.apache.commons.fileupload.disk.*,org.apache.commons.fileupload.servlet.*"%>
<%@ page import="net.hlj.frame.beans.util.ConstantsBean"%>
<% 
java.text.SimpleDateFormat fmt = new java.text.SimpleDateFormat("yyyyMMdd");
			java.util.Date now = new java.util.Date();
			String date = fmt.format(now);
java.text.SimpleDateFormat fmt1 = new java.text.SimpleDateFormat("HHmmssSSS");
			String time = fmt1.format(now);
String savePath = this.getServletConfig().getServletContext().getRealPath("");
        savePath = "D:/flej/flejImagesServer/upload/"+date;
        File f1 = new File(savePath);
        System.out.println(savePath);
        if (!f1.exists()) {
            f1.mkdirs();
        }
        DiskFileItemFactory fac = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(fac);
        upload.setHeaderEncoding("utf-8"); 
        List fileList = null;
        try {
            fileList = upload.parseRequest(request);
        } catch (Exception e) {
           e.printStackTrace();
        }
        Iterator<FileItem> it = fileList.iterator();
        String name = "";
        String extName = "";
		String files="";
        while (it.hasNext()) {
            FileItem item = it.next();
            if (!item.isFormField()) {
                name = item.getName();
                long size = item.getSize();
                String type = item.getContentType();
                System.out.println(size + " " + type);
                if (name == null || name.trim().equals("")) {
                    continue;
                }
                //扩展名格式： 
                if (name.lastIndexOf(".") >= 0) {
                    extName = name.substring(name.lastIndexOf("."));
                } 
                File file = null;
                do {
                    //生成文件名：
                   // name = UUID.randomUUID().toString();
                    file = new File(savePath + time + extName);
                } while (file.exists());
                File saveFile = new File(savePath +"\\"+ time + extName);
                //File saveFile = new File(savePath +"\\"+ " + extName);
				

				
                try {
                    item.write(saveFile);
					files=time+ extName;
					ys(files,date);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
       //response.getWriter().print(name + extName);
    %>
<%!
public  void ys(String  file, String date) {    
CompressPicDemo mypic = new CompressPicDemo();
mypic.compressPic("D:\\flej\\flejImagesServer\\upload\\"+date+"\\", "D:\\flej\\flejImagesServer\\upload\\"+date+"\\", file, "s"+file, 100, 100, true); 
}  
%>
{
	"error":"<%=name%>",
	"msg":"<%="upload/"+date+"/"+time+extName%>",
	"msg1":"<%="upload/"+date+"/"+"s"+time+extName%>"
}
 