package com.lzxuni.redis;

import com.lzxuni.common.utils.RedisClusterUtils;
import com.lzxuni.modules.system.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.data.redis.core.types.RedisClientInfo;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.Serializable;
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

		String k2 = redisClusterUtils.get("k2");
		System.out.println(k2);
	}

	@Test
	public void redisTemplate() {
		User user = new User();
		user.setErrorIp("192.168.1.1");
		user.setRealname("孙志强qqq111");

		ValueOperations<Serializable, Serializable> operations = redisTemplate.opsForValue();
		operations.set("user1", user);
		String user1 = stringRedisTemplate.opsForValue().get("user1");
		System.out.println(user1);



	}

	@Test
	public void stringRedisTemplate() {
		stringRedisTemplate.opsForValue().set("string","hello");
		List<RedisClientInfo> clientList = stringRedisTemplate.getClientList();
		System.out.println(clientList+"----------------");
		System.out.println(stringRedisTemplate.opsForValue().get("user::46e6c5f7b6df4fafad756074c4c41ca2")+"================");
	}

}
