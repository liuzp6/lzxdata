package com.lzxuni;

import com.lzxuni.common.utils.RedisUtils;
import com.lzxuni.modules.sys.entity.User;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {
	@Autowired
	private RedisUtils redisUtils;

	@Test
	public void contextLoads() {
		User user = new User();
		user.setUsername("张三");
		redisUtils.set("user", user);

		System.out.println(ToStringBuilder.reflectionToString(redisUtils.get("user", User.class)));
	}

}
