package com.lzxuni.common.utils;

import org.apache.commons.collections.map.CaseInsensitiveMap;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.*;

public class BaseDao {
	private Logger logger = LoggerFactory.getLogger(BaseDao.class) ;
	private  final String TYPE_INFO = "INFO";
	private  final String TYPE_ERROR = "ERROR";
	protected Logger log = LoggerFactory.getLogger(BaseDao.class);
	private DataSource dataSource ;
	public BaseDao() {
	}
	/**
	 * 新增
	 * 
	 * @param sql
	 * @param params
	 * @throws SQLException
	 */
	public  Integer insert(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql,  params);
			log(sql, params, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}
	public  Integer insert(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql);
			log(sql, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}

	public  Integer delete(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql, params);
			log(sql, params, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}
	public  Integer delete(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql);
			log(sql, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}

	public  Integer update(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql, params);
			log(sql, params, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}
	public  Integer update(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		int num = 0;
		try {
			num = qr.update(sql);
			log(sql, TYPE_INFO);
		} catch (SQLException e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		return num;
	}

	public  <T> T queryBean(String sql, Object[] params,Class<T> requireType) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		T t = null;
		try {
			t =  qr.query(sql, new BeanHandler<T>(requireType), params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return t;
	}
	public  <T> T queryBean(String sql, Class<T> requireType) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		T t = null;
		try {
			t =  qr.query(sql, new BeanHandler<T>(requireType));
			log(sql, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		return t;
	}

	public  <T> List<T> queryBeanList(String sql, Object[] params, Class<T> requireType) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<T> list = new ArrayList<T>();
		try {
			list = (List<T>) qr.query(sql, new BeanListHandler<T>(requireType),params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return list;
	}
	
	public  <T> List<T> queryBeanList(String sql,  Class<T> requireType) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<T> list = new ArrayList<T>();
		try {
			list = (List<T>) qr.query(sql, new BeanListHandler<T>(requireType));
			log(sql,  TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql,  TYPE_ERROR);
			throw new SQLException(e);
		}
		return list;
	}

	public  Map<String, String> queryMap(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		Map<String, Object> map = null;
		try {
			map = (Map<String, Object>) qr.query(sql, new MapHandler(), params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		if(map==null){
			return null;
		}else{
			return objectToString(map);
		}
		
	}
	public  Map<String, String> queryMap(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		Map<String, Object> map = null;
		try {
			map = (Map<String, Object>) qr.query(sql, new MapHandler());
			log(sql,  TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql,  TYPE_ERROR);
			throw new SQLException(e);
		}
		if(map==null){
			return null;
		}else{
			return objectToString(map);
		}
	}
	
	public  List<Map<String, String>> queryMapList(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list =  qr.query(sql, new MapListHandler(), params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		if(list==null){
			return null;
		}else{
			return objectToString(list);
		}
	}
	
	public  List<Map<String, String>> queryMapList(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list =  qr.query(sql, new MapListHandler());
			log(sql, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		if(list==null){
			return null;
		}else{
			return objectToString(list);
		}
	}
	
	public  List<Object[]> queryArrayList(String sql, Object[] params) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<Object[]> list = null;
		try {
			list = (List<Object[]>) qr.query(sql, new ArrayListHandler(), params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		return list;
	}
	public  List<Object[]> queryArrayList(String sql) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		List<Object[]> list = null;
		try {
			list = (List<Object[]>) qr.query(sql, new ArrayListHandler());
			log(sql, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, TYPE_ERROR);
			throw new SQLException(e);
		}
		return list;
	}

	public  void Batch(String sql, Object params[][]) throws SQLException {
		QueryRunner qr = new QueryRunner(dataSource,true);
		try {
			qr.batch(sql, params);
			log(sql, params, TYPE_INFO);
		} catch (Exception e) {
			log.error(e.getClass().getName()+":"+e.getMessage());
			log(sql, params, TYPE_ERROR);
			throw new SQLException(e);
		}
		qr.batch(sql, params);
	}

	private  void log(String sql, Object[] params, String type) {
		if (type.equals(TYPE_INFO)) {
			logger.info("SQL语句：" + sql + " 检索参数： " + Arrays.toString(params));
		} else if (type.equals(TYPE_ERROR)) {
			logger.error("SQL语句：" + sql + " 检索参数： " + Arrays.toString(params));
		}
	}
	private  void log(String sql,  String type) {
		if (type.equals(TYPE_INFO)) {
			logger.info("SQL语句：" + sql );
		} else if (type.equals(TYPE_ERROR)) {
			logger.error("SQL语句：" + sql );
		}
	}
	private  Map<String, String> objectToString(Map<String, Object> map) {
		@SuppressWarnings("unchecked")
		Map<String, String> newMap = new CaseInsensitiveMap();
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			String newString =entry.getValue()==null?"":entry.getValue().toString();
			newMap.put(entry.getKey(), newString);
		}
		return newMap;
	}
	private  List<Map<String, String>> objectToString(List<Map<String, Object>> list) {
		List<Map<String, String>> newlist=new ArrayList<Map<String,String>>();
		for (Iterator<Map<String, Object>> iterator = list.iterator(); iterator.hasNext();) {
			Map<String, Object> map = (Map<String, Object>) iterator.next();
			Map<String, String> newMap=objectToString(map);
			newlist.add(newMap);
		}
		return newlist;
	}
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
}
