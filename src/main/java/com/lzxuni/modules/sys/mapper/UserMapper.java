package com.lzxuni.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.sys.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * 系统日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-03-08 10:40:56
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

}
