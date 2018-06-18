package com.lzxuni.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-07 15:29
 * @Modified BY:
 **/

@Component
@ConfigurationProperties(prefix = "spring.redis")
public class RedisProperties {

	private int database;
	private int    expireSeconds;
	private String clusterNodes;
	private String password;
	private String    timeout;

	@Autowired
	private Pool pool;

	public String getTimeout() {
		return timeout;
	}

	public void setTimeout(String timeout) {
		this.timeout = timeout;
	}

	public int getDatabase() {
		return database;
	}

	public void setDatabase(int database) {
		this.database = database;
	}

	public Pool getPool() {
		return pool;
	}

	public void setPool(Pool pool) {
		this.pool = pool;
	}

	public int getExpireSeconds() {
		return expireSeconds;
	}

	public void setExpireSeconds(int expireSeconds) {
		this.expireSeconds = expireSeconds;
	}

	public String getClusterNodes() {
		return clusterNodes;
	}

	public void setClusterNodes(String clusterNodes) {
		this.clusterNodes = clusterNodes;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	@Configuration
	@ConfigurationProperties(prefix="spring.redis.pool")
	class Pool {

		private Integer maxIdle;

		private Integer minIdle;

		private Integer maxActive;

		private String maxWait;

		private Boolean testOnCreate;

		private Boolean testOnBorrow;//在获取连接的时候检查有效性

		private Boolean testOnReturn;//当调用return Object方法时，是否进行有效性检查

		private Boolean testWhileIdle;//在空闲时检查有效性

		public Integer getMaxIdle() {
			return maxIdle;
		}

		public void setMaxIdle(Integer maxIdle) {
			this.maxIdle = maxIdle;
		}

		public Integer getMinIdle() {
			return minIdle;
		}

		public void setMinIdle(Integer minIdle) {
			this.minIdle = minIdle;
		}

		public Integer getMaxActive() {
			return maxActive;
		}

		public void setMaxActive(Integer maxActive) {
			this.maxActive = maxActive;
		}

		public String getMaxWait() {
			return maxWait;
		}

		public void setMaxWait(String maxWait) {
			this.maxWait = maxWait;
		}

		public Boolean getTestOnCreate() {
			return testOnCreate;
		}

		public void setTestOnCreate(Boolean testOnCreate) {
			this.testOnCreate = testOnCreate;
		}

		public Boolean getTestOnBorrow() {
			return testOnBorrow;
		}

		public void setTestOnBorrow(Boolean testOnBorrow) {
			this.testOnBorrow = testOnBorrow;
		}

		public Boolean getTestOnReturn() {
			return testOnReturn;
		}

		public void setTestOnReturn(Boolean testOnReturn) {
			this.testOnReturn = testOnReturn;
		}

		public Boolean getTestWhileIdle() {
			return testWhileIdle;
		}

		public void setTestWhileIdle(Boolean testWhileIdle) {
			this.testWhileIdle = testWhileIdle;
		}

	}





}
