package com.lzxuni.common.utils;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * @ClassName: JdbcUtils2
 * @Description: 数据库连接工具类
 * @author: szq
 * @date: 2014-10-4 下午6:04:36
 * 
 */
@SuppressWarnings("resource")
public class JdbcUtils {
	private static DruidDataSource ds = null;
	static {
		try {
			ApplicationContext act = new ClassPathXmlApplicationContext("spring/applicationContext-jdbc.xml");
			ds = (DruidDataSource) act.getBean("jdbc");
		} catch (Exception e) {
			e.printStackTrace();
			throw new ExceptionInInitializerError(e);
		}
	}

	public static Connection getConnection() throws SQLException {
		return ds.getConnection();
	}

	public static void closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static DataSource getDataSource() {
		return ds;
	}
}