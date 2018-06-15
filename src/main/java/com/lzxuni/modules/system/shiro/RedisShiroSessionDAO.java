/**
 * Copyright 2018 人人开源 http://www.renren.io
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.lzxuni.modules.system.shiro;

import com.lzxuni.common.utils.RedisKeys;
import com.lzxuni.common.utils.SerializeUtil;
import com.lzxuni.config.LzxRedisTemplate;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * shiro session dao
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017/9/27 21:35
 */
@Component
public class RedisShiroSessionDAO extends EnterpriseCacheSessionDAO {
    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private LzxRedisTemplate lzxRedisTemplate;

    //创建session
    @Override
    protected Serializable doCreate(Session session) {
        Serializable sessionId = super.doCreate(session);
        final String key = RedisKeys.getShiroSessionKey(sessionId.toString());
        setShiroSession(key, session);
        return sessionId;
    }

    //获取session
    @Override
    protected Session doReadSession(Serializable sessionId) {
        Session session = super.doReadSession(sessionId);
        if(session == null){
            final String key = RedisKeys.getShiroSessionKey(sessionId.toString());
            session = getShiroSession(key);
        }
        return session;
    }

    //更新session
    @Override
    protected void doUpdate(Session session) {
        super.doUpdate(session);
        final String key = RedisKeys.getShiroSessionKey(session.getId().toString());
        setShiroSession(key, session);
    }

    //删除session
    @Override
    protected void doDelete(Session session) {
        super.doDelete(session);
        final String key = RedisKeys.getShiroSessionKey(session.getId().toString());
        lzxRedisTemplate.deleteWithPrefix("shiro_redis_session",key);
    }

    private Session getShiroSession(String key) {
		String value = lzxRedisTemplate.get("shiro_redis_session", key);
		byte[] bytes = value.getBytes();
		Session session = SerializeUtil.deserialize(bytes, Session.class);
		return session;
    }

    private void setShiroSession(String key, Session session){
        lzxRedisTemplate.set("shiro_redis_session",key, (String) session.getId());
        //分钟过期
        lzxRedisTemplate.setWithExpireTime("shiro_redis_session",key, (String) session.getId());
    }

}
