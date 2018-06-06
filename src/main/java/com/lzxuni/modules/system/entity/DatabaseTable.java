package com.lzxuni.modules.system.entity;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-05 23:10
 * @Modified BY:
 **/

public class DatabaseTable {

	private String tableName; //表明
	private String tableRows;//记录数


	private String dataLength;//使用大小
	private String indexLength;//分页文件大小
	private String tableComment;//备注
	private List<Pk> pkList;  //主键

	/*方法区*/

	public List<Pk> getPkList() {
		return pkList;
	}

	public void setPkList(List<Pk> pkList) {
		this.pkList = pkList;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getTableRows() {
		return tableRows;
	}

	public void setTableRows(String tableRows) {
		this.tableRows = tableRows;
	}

	public String getDataLength() {
		return dataLength;
	}

	public void setDataLength(String dataLength) {
		this.dataLength = dataLength;
	}

	public String getIndexLength() {
		return indexLength;
	}

	public void setIndexLength(String indexLength) {
		this.indexLength = indexLength;
	}

	public String getTableComment() {
		return tableComment;
	}

	public void setTableComment(String tableComment) {
		this.tableComment = tableComment;
	}
}
