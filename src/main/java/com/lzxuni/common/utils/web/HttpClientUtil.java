package com.lzxuni.common.utils.web;

import com.lzxuni.common.utils.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.*;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.util.CharsetUtils;
import org.apache.http.util.EntityUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.*;


/**
 * <br>
 * <b>功能：</b>模拟浏览器<br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b> 2013-1-24 <br>
 * <b>更新者：</b><br>
 * <b>日期：</b> <br>
 * <b>更新内容：</b><br>
 */
@SuppressWarnings("deprecation")
public class HttpClientUtil {
	//protected Logger logger = LoggerFactory.getLogger(HttpClientUtil.class);
	private static Log logger = LogFactory.getLog(HttpClientUtil.class);
	private HttpClient hc;
	private HttpResponse hr;
	private HttpPost hp;
	private HttpGet hg;
	private static class SingletonHolder{
        private final static  HttpClientUtil INSTANCE=new HttpClientUtil();
    }   
	
    private HttpClientUtil(){}
    
    public static HttpClientUtil getInstance(){
        return SingletonHolder.INSTANCE;
    }
	/**
	 * 
	 * <b>功能：</b> 请求后关闭资源<br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2017年5月3日 下午11:02:45 <br>
	 * 
	 * @param url
	 * @param method
	 *            post get 不区分大小写
	 * @param headerMap
	 *            请求头参数
	 * @param paramsMap
	 *            传递参数
	 * @param requestEncoding
	 *            request 默认utf-8
	 * @param resultEncoding
	 *            response编码 默认utf-8
	 * @return
	 */
	@SuppressWarnings("unused")
	public String doConnection(String url, String method, Map<?, ?> headerMap, Map<?, ?> paramsMap, String requestEncoding,
			String resultEncoding) throws Exception{

		if (StringUtils.isEmpty(resultEncoding)){
			resultEncoding = "UTF-8";
		}
		if (StringUtils.isEmpty(requestEncoding)){
			requestEncoding = "UTF-8";
		}


		hc = new DefaultHttpClient();
		hc.getParams().setParameter(CoreProtocolPNames.HTTP_CONTENT_CHARSET, "UTF-8");
		hc.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 1000 * 20); // 连接时间
																							// 20秒
		hc.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 1000 * 30); // 读取内容时间
																					// 30秒
		hc.getParams().setParameter(ClientPNames.COOKIE_POLICY, CookiePolicy.BROWSER_COMPATIBILITY); // Cook
																										// 兼容模式
		String result = null;
		try {
			hr = this.doGetOrPost(url, method, headerMap, paramsMap, requestEncoding, resultEncoding);
			int statusCode = hr.getStatusLine().getStatusCode();
			if (statusCode == HttpStatus.SC_OK) {
				HttpEntity he = hr.getEntity();
				if (null != he) {
					// he= new BufferedHttpEntity(he);
					if (null != resultEncoding) {
						result = EntityUtils.toString(he, resultEncoding);
					} else {
						result = EntityUtils.toString(he);
					}
				}
				if (null != result) {
					result = result.trim();
				}
			} else {
				Header locationHeader = hr.getFirstHeader("Location");
				if (null != locationHeader) {
					String location = locationHeader.getValue();
					logger.info("页面成功重定向地址locationHeader:" + locationHeader);
					this.doGetOrPost(location, method, headerMap, paramsMap, requestEncoding, resultEncoding);
				} else {
					logger.error("错误的重定向地址locationHeader:" + locationHeader);
				}
			}
		} catch (Exception e) {
			logger.error(e.getClass().getName()+":"+e.getMessage());
			e.printStackTrace();
			throw new Exception(e.getMessage());

		} finally {
			if (hp != null) {
				hp.abort();
			}
			if (hg != null) {
				hg.abort();
			}
			hc.getConnectionManager().shutdown();
		}
		return result;
	}

	/**
	 * 
	 * <b>功能：</b> <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2017年5月24日 上午11:09:19 <br>
	 * 
	 * @param url
	 *            地址
	 * @param paramsMap
	 *            参数
	 * @return
	 */
	public String doConnection(String url, Map<?, ?> paramsMap) throws Exception{
		return doConnection(url, null, null, paramsMap, null, null);
	}

	/**
	 * 
	 * <br>
	 * <b>功能：</b>提供给系统调用<br>
	 * <b>作者：</b>wolf<br>
	 * <b>日期：</b> 2013-1-24 <br>
	 * 
	 * @param url
	 * @param method
	 * @param headerMap
	 * @param paramsMap
	 * @param resultEncoding
	 * @return
	 * @throws ClientProtocolException
	 * @throws IOException
	 */
	private HttpResponse doGetOrPost(String url, String method, Map<?, ?> headerMap, Map<?, ?> paramsMap, String requestEncoding,
									 String resultEncoding) throws ClientProtocolException, IOException {

		if (null == url || url.trim().length() < 1) {
			logger.info("httpClient|url有误:" + url);
			return null;
		}
		/********** 判断Get或Post方法执行 默认执行Get方法 ***********/
		/**** 执行POST请求 ***/
		if (null != method && method.toLowerCase().equals("post")) {
			hp = new HttpPost(url);
			if (null != headerMap) {
				for (Map.Entry<?, ?> entity : headerMap.entrySet()) {
					hp.addHeader(entity.getKey().toString(), entity.getValue().toString());
				}
			}
			if (null != paramsMap) {
				List<NameValuePair> params = new ArrayList<NameValuePair>();
				for (Map.Entry<?, ?> entity : paramsMap.entrySet()) {
					params.add(new BasicNameValuePair(entity.getKey().toString(), entity.getValue().toString()));
				}
				UrlEncodedFormEntity from = new UrlEncodedFormEntity(params, requestEncoding);
				hp.setEntity(from);
			}
			return hc.execute(hp);
		} else {
			/**** 执行Get请求 ***/
			if (null != paramsMap) {
				StringBuffer sb = new StringBuffer();
				String params;
				if (url.indexOf("?") == -1) { // 判断?号
					sb.append("?");
				} else {
					sb.append("&");
				}
				for (Map.Entry<?, ?> entity : paramsMap.entrySet()) {
					sb.append(entity.getKey()).append("=").append(entity.getValue()).append("&");
				}
				params = sb.substring(0, sb.length() - 1).replaceAll(" ", "%20");
				url = url + params;
			}
			hg = new HttpGet(url);
			if (null != headerMap) {
				for (Map.Entry<?, ?> entity : headerMap.entrySet()) {
					hg.addHeader(entity.getKey().toString(), entity.getValue().toString());
				}
			}
			return hc.execute(hg);
		}
	}

	/**
	 * 
	 *<b>功能：</b>httpclient处理文件上传 <br>
	 *<b>作者：</b>孙志强<br>
	 *<b>日期：</b> 2017年5月24日 下午5:31:54 <br>
	 * @param filePath  文件真实地址
	 * @param url  接受文件地址  D:/a.jpg
	 * @param param 表单参数  http://localhost/lzx1.1/upload.html
	 * @throws ParseException
	 * @throws IOException
	 */
	public  Boolean postFile(String filePath, String url,String param) throws ParseException, IOException {
		CloseableHttpClient httpClient = HttpClients.createDefault();
		Boolean status =false ;
		@SuppressWarnings("unused")
		Map<String, String> paraMap = new HashMap<String, String>();
		try {
			// 把一个普通参数和文件上传给下面这个地址 是一个servlet
			HttpPost httpPost = new HttpPost(url);
			// 把文件转换成流对象FileBody
			File file = new File(filePath) ;
			FileBody bin = new FileBody(file) ;
			
			
			StringBody uploadFileName = new StringBody(param, ContentType.create("text/plain", Consts.UTF_8));
			StringBody uploadFileName1 = new StringBody("param", ContentType.create("text/plain", Consts.UTF_8));
			// 以浏览器兼容模式运行，防止文件名乱码。
			HttpEntity reqEntity = MultipartEntityBuilder.create().setMode(HttpMultipartMode.BROWSER_COMPATIBLE)
					.addPart("file", bin) // uploadFile对应服务端类的同名属性<File类型>
					.addPart("type", uploadFileName)// uploadFileName对应服务端类的同名属性<String类型>
					.addPart("param", uploadFileName1)
					.setCharset(CharsetUtils.get("UTF-8")).build();
			
			httpPost.setEntity(reqEntity) ;
			System.out.println("发起请求的页面地址 " + httpPost.getRequestLine());
			// 发起请求 并返回请求的响应
			CloseableHttpResponse response = httpClient.execute(httpPost);
			Timer timer = new Timer();  
	        timer.schedule(new MyTask(), 1000, 2000);
	        try {
				Thread.sleep(7000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				logger.error(e.getClass().getName()+":"+e.getMessage());
				e.printStackTrace();
			}
			try {
				// 打印响应状态
				System.out.println(response.getStatusLine());
				// 获取响应对象
				HttpEntity resEntity = response.getEntity();
				if (resEntity != null) {
					status =true ;
					// 打印响应长度
					System.out.println("Response content length: " + resEntity.getContentLength());
					// 打印响应内容
					System.out.println(EntityUtils.toString(resEntity, Charset.forName("UTF-8")));
				}
				// 销毁
				EntityUtils.consume(resEntity);
			} finally {
				response.close();
			}
		} finally {
			httpClient.close();
		}
		return status ;
	}

	/**
	 * 
	 * <b>功能：</b> <br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2017年5月24日 上午11:23:56 <br>
	 * 
	 * @param url
	 *            http://www.xxx.com/img/333.jpg
	 * @param destFileName
	 *            xxx.jpg/xxx.png/xxx.txt
	 * @throws ClientProtocolException
	 * @throws IOException
	 */
	public static void getFile(String url, String destFileName) throws ClientProtocolException, IOException {
		// 生成一个httpclient对象
		CloseableHttpClient httpclient = HttpClients.createDefault();
		HttpGet httpget = new HttpGet(url);
		HttpResponse response = httpclient.execute(httpget);
		HttpEntity entity = response.getEntity();
		InputStream in = entity.getContent();
		File file = new File(destFileName);
		try {
			FileOutputStream fout = new FileOutputStream(file);
			int l = -1;
			byte[] tmp = new byte[1024];
			while ((l = in.read(tmp)) != -1) {
				fout.write(tmp, 0, l);
				// 注意这里如果用OutputStream.write(buff)的话，图片会失真，大家可以试试
			}
			fout.flush();
			fout.close();
		} finally {
			// 关闭低层流。
			in.close();
		}
		httpclient.close();
	}
}

class MyTask extends TimerTask {
	Integer num =1;
	
	public MyTask(){}
	public MyTask(Integer num){
		
	}
    @Override  
    public void run() {  
        System.out.println("程序执行中，请稍等.... :"+num);
        num++ ;
    }  
}  