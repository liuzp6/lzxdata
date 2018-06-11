package com.lzxuni.generator;

import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DbType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import org.junit.Test;

/**
 * 〈一句话功能简述〉<br>
 * 代码生成器测试
 *
 * @author:szq
 * @create:2018-06-11 11:07
 * @Modified BY:
 **/

public class MpGenerator {

	@Test
	public void generateCode() {
		String packageName = "com.lzxuni";
		boolean serviceNameStartWithI = false;//user -> UserService, 设置成true: user -> IUserService
		generateByTables(serviceNameStartWithI, packageName, "base_dataitem");
	}

	private void generateByTables(boolean serviceNameStartWithI, String packageName, String... tableNames) {
		GlobalConfig config = new GlobalConfig();
		String dbUrl = "jdbc:mysql://113.6.253.33:3306/db_lzxdata";
		DataSourceConfig dataSourceConfig = new DataSourceConfig();
		dataSourceConfig.setDbType(DbType.MYSQL)
				.setUrl(dbUrl)
				.setUsername("root")
				.setPassword("1qaz@WSX33")
				.setDriverName("com.mysql.jdbc.Driver");
		StrategyConfig strategyConfig = new StrategyConfig();
		strategyConfig
				.setCapitalMode(true)
				.setEntityLombokModel(false)
				.setDbColumnUnderline(true)
				.setNaming(NamingStrategy.underline_to_camel)
				.setInclude(tableNames);//修改替换成你需要的表名，多个表名传数组
		config.setActiveRecord(false)
				.setAuthor("K神带你飞")
				.setOutputDir("d:\\codeGen")
				.setFileOverride(true);
		if (!serviceNameStartWithI) {
			config.setServiceName("%sService");
		}
		new AutoGenerator().setGlobalConfig(config)
				.setDataSource(dataSourceConfig)
				.setStrategy(strategyConfig)
				.setPackageInfo(
						new PackageConfig()
								.setParent(packageName)
								.setController("controller")
								.setEntity("entity")
				).execute();
	}

	private void generateByTables(String packageName, String... tableNames) {
		generateByTables(true, packageName, tableNames);
	}


}
