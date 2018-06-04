package com.lzxuni.common.aspect;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.annotation.SysLog;
import com.lzxuni.common.utils.Constant;
import com.lzxuni.common.utils.MethodUtil;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.common.utils.date.DateUtil;
import com.lzxuni.common.utils.web.HttpContextUtils;
import com.lzxuni.common.utils.web.RequestUtils;
import com.lzxuni.modules.system.entity.SysLogEntity;
import com.lzxuni.modules.system.service.SysLogService;
import com.lzxuni.modules.system.shiro.ShiroUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Method;


/**
 * 系统日志，切面处理类
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017年3月8日 上午11:07:35
 */
@Aspect
@Component
public class SysLogAspect {
	protected Logger log = LoggerFactory.getLogger(SysLogAspect.class);
	@Autowired
	private SysLogService sysLogService;

	@Pointcut("@annotation(com.lzxuni.common.annotation.SysLog)")
	public void logPointCut() {

	}
	@Around("logPointCut()")
	public Object around(ProceedingJoinPoint point) throws Throwable {
		long beginTime = System.currentTimeMillis();
		//执行方法
		Object result =null ;
		String operationResult = Constant.SCUCCESS;
		try {
			result = point.proceed();
			//执行时长(毫秒)
			long time = System.currentTimeMillis() - beginTime;
			saveSysLog(point,operationResult, time,null);
		}catch (Exception e){
			operationResult = Constant.FAIL;
			//执行时长(毫秒)
			long time = System.currentTimeMillis() - beginTime;
			//保存日志
			saveSysLog(point,operationResult, time,e);
			throw new Exception(e);
		}
		return result;
	}
	private void saveSysLog(JoinPoint joinPoint,String operationResult,long time,Exception e) {
		//获取request
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		MethodSignature signature = (MethodSignature) joinPoint.getSignature();
		Method method = signature.getMethod();
		SysLogEntity sysLog = new SysLogEntity();
		SysLog syslog = method.getAnnotation(SysLog.class);
		sysLog.setCreateTime(MethodUtil.getDate(0, null));
		sysLog.setUrl(RequestUtils.getLocation(request));
		//用户名
		String username="";
		String realName="";
		try {
			username = ShiroUtils.getUser().getUsername();
			realName = ShiroUtils.getUser().getRealname();
		} catch (Exception e1) {
			log.error(e1.getClass().getName()+":"+e.getMessage());
			username="接口";
		}
		sysLog.setUsername(username);
		sysLog.setId(UuidUtil.get32UUID());
		//请求的方法名
		String className = joinPoint.getTarget().getClass().getName();
		String methodName = signature.getName();
		sysLog.setMethod(className + "." + methodName + "()");
		//请求的参数
		Object[] args = joinPoint.getArgs();
		String params="";
		if(args!=null && args.length>0){
			for (int i = 0; i < args.length; i++) {
				if(!(args[i] instanceof HttpServletRequest || args[i] instanceof HttpServletResponse)){
					params = params+","+JSON.toJSONString(args[i]);
				}
			}
			if(StringUtils.isNotEmpty(params)){
				params = params.substring(1, params.length());
			}
		}
		sysLog.setParams(params);
		//设置IP地址
		//sysLog.setIp(IPUtils.getIpAddr(request));
		sysLog.setIp(RequestUtils.getIpAddr(request));
		sysLog.setTime(time);
		if(syslog != null){
			//注解上的描述
			String function = syslog.function();
			String operationType = syslog.operationType();
			sysLog.setFunction(function);
			sysLog.setOperationType(operationType);
			sysLog.setOperationResult("成功");
			if(operationResult.equals(Constant.FAIL)){
				sysLog.setOperationResult("失败");
				sysLog.setOperationType(Constant.EXCEPTION);
			}

			if(sysLog.getOperationType().equals("访问")){
				sysLog.setOperationContent("访问地址："+RequestUtils.getLocation(request));
			}else if(sysLog.getOperationType().equals(Constant.EXCEPTION)){
				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				e.printStackTrace(new PrintStream(baos));
				String exception = baos.toString();
				String operationContent = "1. 调试: &gt;&gt; 操作时间: "+ DateUtil.DateToString(sysLog.getCreateTime(),"YYYY-MM-dd HH:mm:ss")+" 操作人: "+username+"（"+realName+"） \n" +
						"2. 地址: "+request.getRequestURI()+"    \n" +
						"3. 类名: "+sysLog.getMethod()+" \n" +
						"4. 主机:    Ip  : "+sysLog.getIp()+"   浏览器: "+RequestUtils.getOsAndBrowserInfo(request)+"    \n" +
						"5. 异常: "+e.getClass().getName()+"-"+e.getMessage()+"!";

				sysLog.setOperationContent(operationContent);
				sysLog.setOperationContentExt(exception);
			}else {
				sysLog.setOperationContent("成功");
			}
		}


//		保存系统日志
		sysLogService.insert(sysLog);
	}

}
