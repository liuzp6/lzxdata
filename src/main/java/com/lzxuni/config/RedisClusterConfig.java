package com.lzxuni.config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.interceptor.KeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.MapPropertySource;
import org.springframework.data.redis.cache.RedisCacheConfiguration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.cache.RedisCacheWriter;
import org.springframework.data.redis.connection.RedisClusterConfiguration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

import java.lang.reflect.Method;
import java.time.Duration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-07 15:30
 * @Modified BY:
 **/

@Configuration
@EnableCaching
public class RedisClusterConfig extends CachingConfigurerSupport{
	protected Logger logger = LoggerFactory.getLogger(RedisClusterConfig.class);
	@Autowired
	private RedisProperties redisProperties;



	@Bean
	public KeyGenerator KeyGenerator() {
		return new KeyGenerator() {
			@Override
			public Object generate(Object target, Method method, Object... params) {
				StringBuilder sb = new StringBuilder();
				sb.append(target.getClass().getName());
				sb.append(method.getName());
				for (Object obj : params) {
					sb.append(obj.toString());
				}
				return sb.toString();
			}
		};
	}

	/**
	 * 注意：
	 * 这里返回的JedisCluster是单例的，并且可以直接注入到其他类中去使用
	 * @return
	 */
	@Bean
	public JedisCluster getJedisCluster() {
		String[] serverArray = redisProperties.getClusterNodes().split(",");//获取服务器数组(这里要相信自己的输入，所以没有考虑空指针问题)
		Set<HostAndPort> nodes = new HashSet<>();

		for (String ipPort : serverArray) {
			String[] ipPortPair = ipPort.split(":");
			nodes.add(new HostAndPort(ipPortPair[0].trim(), Integer.valueOf(ipPortPair[1].trim())));
		}

		return new JedisCluster(nodes,5000,1000,1,redisProperties.getPassword() ,new GenericObjectPoolConfig());//需要密码连接的创建对象方式
	}
	@Bean
	public RedisClusterConfiguration getClusterConfiguration() {
		Map<String, Object> source = new HashMap<>();
		source.put("spring.redis.cluster.nodes", redisProperties.getClusterNodes());
//		source.put("spring.redis.cluster.timeout", redisProperties.getTimeout());
//		source.put("spring.redis.cluster.max-redirects", 5);

		return new RedisClusterConfiguration(new MapPropertySource("RedisClusterConfiguration", source));
	}
	/**
	 * 配置JedisPoolConfig
	 * @return JedisPoolConfig实体
	 */
//	@Bean
//	public JedisPoolConfig jedisPoolConfig() {
//		RedisProperties.Pool pool = redisProperties.getPool();
//		JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
//		jedisPoolConfig.setMaxTotal(pool.getMaxActive());
//		jedisPoolConfig.setMaxIdle(pool.getMaxIdle());
//		jedisPoolConfig.setMaxWaitMillis(pool.getMaxWait());
//		jedisPoolConfig.setTestOnCreate(pool.getTestOnCreate());
//		jedisPoolConfig.setTestOnBorrow(pool.getTestOnBorrow());
//		jedisPoolConfig.setTestOnReturn(pool.getTestOnReturn());
//		jedisPoolConfig.setTestWhileIdle(pool.getTestWhileIdle());
//		return jedisPoolConfig;
//	}
	/**
	 * 实例化 RedisConnectionFactory 对象
	 * @return
	 */
	@Bean(name = "jedisConnectionFactory")
	public RedisConnectionFactory jedisConnectionFactory() {
		logger.info("=== XXX RedisConf jedisConnectionFactory 初始化JedisPoolConfi ===");
		RedisConnectionFactory jedisConnectionFactory = new LettuceConnectionFactory(getClusterConfiguration());
//		jedisConnectionFactory.setDatabase(redisProperties.getDatabase());
//		jedisConnectionFactory.setTimeout(redisProperties.getTimeout());
//		jedisConnectionFactory.setPoolConfig(jedisPoolConfig());
		return jedisConnectionFactory;
	}

	@Override
	@Bean
	public CacheManager cacheManager() {
		//初始化一个RedisCacheWriter
		RedisCacheWriter redisCacheWriter = RedisCacheWriter.nonLockingRedisCacheWriter(jedisConnectionFactory());
		//设置CacheManager的值序列化方式为JdkSerializationRedisSerializer,但其实RedisCacheConfiguration默认就是使用StringRedisSerializer序列化key，JdkSerializationRedisSerializer序列化value,所以以下注释代码为默认实现
		//ClassLoader loader = this.getClass().getClassLoader();
		//JdkSerializationRedisSerializer jdkSerializer = new JdkSerializationRedisSerializer(loader);
		//RedisSerializationContext.SerializationPair<Object> pair = RedisSerializationContext.SerializationPair.fromSerializer(jdkSerializer);
		//RedisCacheConfiguration defaultCacheConfig=RedisCacheConfiguration.defaultCacheConfig().serializeValuesWith(pair);
		RedisCacheConfiguration defaultCacheConfig = RedisCacheConfiguration.defaultCacheConfig();
		//设置默认超过期时间是30秒
		defaultCacheConfig.entryTtl(Duration.ofSeconds(30));
		//初始化RedisCacheManager
		RedisCacheManager cacheManager = new RedisCacheManager(redisCacheWriter, defaultCacheConfig);
		return cacheManager;
	}


	/**
	 *  实例化 RedisTemplate 对象
	 * @return
	 */
	@Bean(name = "redisTemplate")
	public RedisTemplate<String, Object> redisTemplate() {
		logger.info("=== XXX RedisConf functionDomainRedisTemplate 初始化JedisPoolConfi ===");
		RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
		redisTemplate.setConnectionFactory(jedisConnectionFactory());
		// 使用Jackson2JsonRedisSerialize 替换默认序列化
		Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);

		ObjectMapper objectMapper = new ObjectMapper();
		objectMapper.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
		objectMapper.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);

		jackson2JsonRedisSerializer.setObjectMapper(objectMapper);

		// 设置value的序列化规则和 key的序列化规则
		redisTemplate.setKeySerializer(stringRedisSerializer());
		redisTemplate.setValueSerializer(jackson2JsonRedisSerializer);
		redisTemplate.afterPropertiesSet();
		return redisTemplate;
	}

	@Bean
	public StringRedisSerializer stringRedisSerializer() {
		return new StringRedisSerializer();
	}

	@Bean("stringRedisTemplate")
	public RedisTemplate<String, String> stringRedisTemplate() {
		StringRedisTemplate template = new StringRedisTemplate(jedisConnectionFactory());
		Jackson2JsonRedisSerializer<String> jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer<>(String.class);
		template.setKeySerializer(stringRedisSerializer());
		template.setValueSerializer(jackson2JsonRedisSerializer);
		template.setHashKeySerializer(stringRedisSerializer());
		template.setHashValueSerializer(jackson2JsonRedisSerializer);
		template.afterPropertiesSet();
		return template;
	}


}