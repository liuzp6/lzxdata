package com.lzxuni.datasource;


import com.lzxuni.modules.sys.entity.User;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class DynamicDataSourceTest {
    @Autowired
    private DataSourceTestService dataSourceTestService;

    @Test
    public void test(){
        //数据源1
        User user1 = dataSourceTestService.queryUser("1");
        System.out.println(ToStringBuilder.reflectionToString(user1));

        //数据源2
        User user2 = dataSourceTestService.queryUser2("3");
        System.out.println(ToStringBuilder.reflectionToString(user2));

        //数据源1
        User user3 = dataSourceTestService.queryUser("2");
        System.out.println(ToStringBuilder.reflectionToString(user3));
    }

}
