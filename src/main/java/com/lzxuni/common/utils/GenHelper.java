package com.lzxuni.common.utils;

import java.util.ArrayList;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-03 17:22
 * @Modified BY:
 **/

public class GenHelper {
	public List<String> add(int count) {
		int min = 1;
		int max = 20;
		ArrayList<String> lists = new ArrayList<>();
		for (int i = 0; i<count;i++){
			int j = (int) (min + Math.random() * (max - min + 1));
			int shi =(int) (min + Math.random() * (max - min + 1));
			int ge =(int) (min + Math.random() * (max - min + 1));
			int result;
			if (j % 2 == 0) {
				result = shi + ge;
				if (result < 20) {
					lists.add(String.valueOf(shi) + "+" + String.valueOf(ge) + "=");
				}
			} else {
				result = shi - ge;
				if (result > 0) {
					lists.add(String.valueOf(shi) + "+" + String.valueOf(ge) + "=");
				}
			}
		}
		return lists;
	}
	public static void main(String[] args){
		GenHelper genHelper = new GenHelper();
		List<String> lists = genHelper.add(10);
		System.out.println(lists);
	}

}