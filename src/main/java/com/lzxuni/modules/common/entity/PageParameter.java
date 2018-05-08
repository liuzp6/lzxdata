package com.lzxuni.modules.common.entity;

public class PageParameter {

	private String _search;
	private String nd;
	
	private Integer rows;
	private Integer page;
	private String sidx;
	private String sord;
	private Integer startrow;
	private Integer endrow;
	/**
	 * @return the _search
	 */
	public String get_search() {
		return _search;
	}
	/**
	 * @param _search the _search to set
	 */
	public void set_search(String _search) {
		this._search = _search;
	}
	/**
	 * @return the nd
	 */
	public String getNd() {
		return nd;
	}
	/**
	 * @param nd the nd to set
	 */
	public void setNd(String nd) {
		this.nd = nd;
	}
	/**
	 * @return the rows
	 */
	public Integer getRows() {
		return rows;
	}
	/**
	 * @param rows the rows to set
	 */
	public void setRows(Integer rows) {
		this.rows = rows;
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
	 * @return the sidx
	 */
	public String getSidx() {
		return sidx;
	}
	/**
	 * @param sidx the sidx to set
	 */
	public void setSidx(String sidx) {
		this.sidx = sidx;
	}
	/**
	 * @return the sord
	 */
	public String getSord() {
		return sord;
	}
	/**
	 * @param sord the sord to set
	 */
	public void setSord(String sord) {
		this.sord = sord;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */

	public Integer getEndrow() {
		return getRows()*getPage();
	}
	public void setEndrow(Integer endrow) {
		this.endrow = endrow;
	}
	public Integer getStartrow() {
		return getRows()*(getPage()-1);
	}
	public void setStartrow(Integer startrow) {
		this.startrow = startrow;
	}
	@Override
	public String toString() {
		return "PageParameter [_search=" + _search + ", nd=" + nd + ", rows="
				+ rows + ", page=" + page + ", sidx=" + sidx + ", sord=" + sord
				+ ", startrow=" + startrow + ", endrow=" + endrow + "]";
	}
	
}
