package com.lzxuni.redis;

import com.lzxuni.common.utils.RedisClusterUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.types.RedisClientInfo;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {
	@Autowired
	private RedisClusterUtils redisClusterUtils;

	@Autowired
	private RedisTemplate redisTemplate;
	@Autowired
	private StringRedisTemplate stringRedisTemplate;

	@Test
	public void redisCluse() {
		redisClusterUtils.set("k2", "v2");
		System.out.println(redisClusterUtils.get("string"));
	}

	@Test
	public void redisTemplate() {
	}

	@Test
	public void stringRedisTemplate() {
		//stringRedisTemplate.opsForValue().set("string","hello");
		List<RedisClientInfo> clientList = stringRedisTemplate.getClientList();
		System.out.println(clientList+"----------------");
		System.out.println(stringRedisTemplate.opsForValue().get("string")+"================");
	}

}
