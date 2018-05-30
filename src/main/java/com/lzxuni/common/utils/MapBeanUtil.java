package com.lzxuni.common.utils;


import com.lzxuni.modules.system.entity.User;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class MapBeanUtil {
	/**
	 * 
	 * <br> 
	 * <b>功能：</b>MapToBean<br>
	 * <b>作者：</b>肖财高<br>
	 * <b>日期：</b> 2013-5-31 <br>
	 * @param map
	 * @param bean
	 * @return
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws IntrospectionException
	 */
	public static <T>  T mapToBean(Map<?,?> map,Class<T> bean) throws InstantiationException, IllegalAccessException, IntrospectionException{
		BeanInfo beanInfo = Introspector.getBeanInfo(bean);
		T obj = bean.newInstance();
		PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
		for (int i = 0; i < propertyDescriptors.length; i++) {
			PropertyDescriptor descriptor = propertyDescriptors[i];
			Method method=descriptor.getWriteMethod();
			String name=descriptor.getName();
			if(map.containsKey(name)){
				Class<?>[] types=method.getParameterTypes();
				for(int x=0;x<types.length;x++){ //类型转换
					Object value = map.get(name);
					try {
						method.invoke(obj, new Object[]{value});
					} catch (Exception e) {
						System.out.println("type:"+types[x].getSimpleName()+"|name:"+name+"|value:"+value);
						e.printStackTrace();
					}
				}
			}
		}
		return obj;
	}

	/**
	 * 
	 * <br>
	 * <b>功能：</b>方法功能描述<br>
	 * <b>作者：</b>肖财高<br>
	 * <b>日期：</b> 2013-5-31 <br>
	 * @param bean
	 * @return
	 * @throws IntrospectionException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public static <T> Map<?,?> beanToMap(T bean) throws IntrospectionException, IllegalAccessException, InvocationTargetException {
		Class<?> type = bean.getClass();
		Map<String,Object> returnMap = new HashMap<String, Object>();
		BeanInfo beanInfo = Introspector.getBeanInfo(type);
		PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
		for (int i = 0; i < propertyDescriptors.length; i++) {
			PropertyDescriptor descriptor = propertyDescriptors[i];
			String propertyName = descriptor.getName();
			if (!propertyName.equals("class")) {
				Method readMethod = descriptor.getReadMethod();
				Object result = readMethod.invoke(bean, new Object[]{});
				if (result != null) {
					returnMap.put(propertyName, result);
				} else {
					returnMap.put(propertyName, "");
				}
			}
		}
		return returnMap;
	}

	public static void main(String[] args) {
		User user=new User() ;
		user.setPassword("123456");
		user.setUsername("admin");
		
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("count", 100);
		map.put("ip", "127.0.0.1");
		map.put("failCount", 100);
		map.put("password", "123456");
		map.put("username", "admin");
		try {
			//TbsUserBean tbsUserBean=MapBeanUtil.mapToBean(map,TbsUserBean.class);
			try {
				System.out.println(MapBeanUtil.beanToMap(user));
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
