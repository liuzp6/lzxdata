package com.lzxuni.elasticsearch;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

//import io.searchbox.client.JestClient;
//import io.searchbox.core.Index;
//import io.searchbox.core.Search;
//import io.searchbox.core.SearchResult;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ElasticSearchTest {
//	@Autowired
//	JestClient jestClient;
//
//	@Test
//	public void index() {
//		User user = new User();
//		user.setUserId("1");
//		user.setRealname("zhangsan");
//		user.setSex("nan");
//
//		Index index = new Index.Builder(user).index("lzxuni").type("user").index(user.getUserId()).build();
//		try {
//			jestClient.execute(index);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//
//	}
//
//	@Test
//	public void search() {
//		String json = "{\n" +
//				"    \"query\" : {\n" +
//				"        \"match\" : {\n" +
//				"            \"realname\" : \"zhangsan1\"\n" +
//				"        }\n" +
//				"    }\n" +
//				"}";
//		Search search = new Search.Builder(json).addIndex("lzxuni").addType("user").build();
//
//		try {
//			SearchResult searchResult = jestClient.execute(search);
//			System.out.println(searchResult.getJsonString());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}


}
