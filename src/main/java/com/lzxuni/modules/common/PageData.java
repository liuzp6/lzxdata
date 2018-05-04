package com.lzxuni.modules.common;

import java.util.List;

public class PageData {

	private List<?> rows ;   //数据列表  30
	private Integer total ;     //总页数    3
	private Integer page ;      //当前页    1
	private Long records ;   //总记录数 30*3=90
	private Integer costtime ;  //查询时间 10ms
	
	/**
	 * @return the rows
	 */
	public List<?> getRows() {
		return rows;
	}
	/**
	 * @param rows the rows to set
	 */
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	/**
	 * @return the total
	 */
	public Integer getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(Integer total) { 
		this.total = total;
	}
	/**
	 * @return the page
	 */
	public Integer getPage() {
		return page;
	}
	/**
	 * @param page the page to set
	 */
	public void setPage(Integer page) {
		this.page = page;
	}
	/**
	 * @return the records
	 */
	public Long getRecords() {
		return records;
	}
	/**
	 * @param records the records to set
	 */
	public void setRecords(Long records) {
		this.records = records;
	}
	/**
	 * @return the costtime
	 */
	public Integer getCosttime() {
		return costtime;
	}
	/**
	 * @param costtime the costtime to set
	 */
	public void setCosttime(Integer costtime) {
		this.costtime = costtime;
	}
	
	
}
