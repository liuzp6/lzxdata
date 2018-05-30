/**
 * 
 */
package com.lzxuni.modules.system.entity;

import java.util.List;

/**
 * <b>功能：</b> <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年5月31日 上午11:37:57
 * @version 1.0 <br>
 */
public class MenuData {

	private List<Menu> authorizeMenu ;

	/**
	 * @return the authorizeMenu
	 */
	public List<Menu> getAuthorizeMenu() {
		return authorizeMenu;
	}

	/**
	 * @param authorizeMenu the authorizeMenu to set
	 */
	public void setAuthorizeMenu(List<Menu> authorizeMenu) {
		this.authorizeMenu = authorizeMenu;
	}
	
}
