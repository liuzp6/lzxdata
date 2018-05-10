package com.lzxuni.zookeeper;

import org.apache.zookeeper.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.CountDownLatch;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-08 16:14
 * @Modified BY:
 **/
@RunWith(SpringRunner.class)
@SpringBootTest
public class ZookeeperTest  implements Watcher {
	private static CountDownLatch connectedSemaphore = new CountDownLatch(1);
	@Test
	public void zkTest() {
		try {
			String conn = "192.168.254.201:2181,192.168.254.202:2181,192.168.254.203:2181";
			ZooKeeper zooKeeper = new ZooKeeper(conn, 5000, new ZookeeperTest());
			connectedSemaphore.await();

			ZooKeeper.States state = zooKeeper.getState();
			System.out.println(state);
			zooKeeper.create("/yxxy1", "yxxy".getBytes(), ZooDefs.Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
			Thread.sleep(2000);
			zooKeeper.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}


	@Override
	public void process(WatchedEvent watchedEvent) {
		if (Event.KeeperState.SyncConnected == watchedEvent.getState()) {
			connectedSemaphore.countDown();
		}
	}
}
class IStringCallback implements AsyncCallback.StringCallback {
	public void processResult(int rc, String path, Object ctx, String name) {
		System.out.println("Create path result: [" + rc + ", " + path + ", " + ctx + ", real path name: " + name);
	}
}
