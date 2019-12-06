package cn.sm1234.domain;

import java.util.List;

public class Fenye {
	private Integer total;
	private List<?> rows;
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	public Fenye(Integer total, List<?> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}
	public Fenye() {
		super();
	}
	
	
}
