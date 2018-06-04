package com.lzxuni.common.annotation;

import java.lang.annotation.*;

/**
 * 系统日志注解
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017年3月8日 上午10:19:56
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SysLog {
	/**
	 * 功能描述: 功能<br>
	 * @Author 孙志强
	 * @date 2018/6/4 16:00
	 * @param
	 * @return:java.lang.String
	 */
	String function() default "";
	/**
	 * 功能描述: 操作类型<br>
	 * @Author 孙志强
	 * @date 2018/6/4 16:00
	 * @param
	 * @return:java.lang.String
	 */
	String operationType() default "";
}
