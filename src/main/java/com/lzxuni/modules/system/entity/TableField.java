package com.lzxuni.modules.system.entity;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-06 9:37
 * @Modified BY:
 **/

public class TableField {

	private String tableSchema;//数据库
	private String tableName;//表明
	private String columnName;//字段名称
	private String ordinalPosition;//编号
	private String columnDefault;//默认值
	private String isNullable;//是否为空
	private String dataType; //字段类型
	private String characterMaximum; //字段长度
	private String characterOctetLength;
	private String columnType;  //
	private String columnKey;//是否主键
	private String columnComment;//备注信息


	/*方法区*/

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public String getTableSchema() {
		return tableSchema;
	}

	public void setTableSchema(String tableSchema) {
		this.tableSchema = tableSchema;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getOrdinalPosition() {
		return ordinalPosition;
	}

	public void setOrdinalPosition(String ordinalPosition) {
		this.ordinalPosition = ordinalPosition;
	}

	public String getColumnDefault() {
		return columnDefault;
	}

	public void setColumnDefault(String columnDefault) {
		this.columnDefault = columnDefault;
	}

	public String getIsNullable() {
		return isNullable;
	}

	public void setIsNullable(String isNullable) {
		this.isNullable = isNullable;
	}

	public String getCharacterMaximum() {
		return characterMaximum;
	}

	public void setCharacterMaximum(String characterMaximum) {
		this.characterMaximum = characterMaximum;
	}

	public String getCharacterOctetLength() {
		return characterOctetLength;
	}

	public void setCharacterOctetLength(String characterOctetLength) {
		this.characterOctetLength = characterOctetLength;
	}

	public String getColumnType() {
		return columnType;
	}

	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}

	public String getColumnKey() {
		return columnKey;
	}

	public void setColumnKey(String columnKey) {
		this.columnKey = columnKey;
	}

	public String getColumnComment() {
		return columnComment;
	}

	public void setColumnComment(String columnComment) {
		this.columnComment = columnComment;
	}
}
