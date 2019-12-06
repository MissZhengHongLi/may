package cn.sm1234.domain;

public class Employee {
	private Integer user_id;
	private String real_name;
	private String sex;
	private String mtel;
	private String email;
	private String sale;
	private String employdate;
	private String user_status;
	private String job;
	
	private Integer page;
	private Integer rows;
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSale() {
		return sale;
	}
	public void setSale(String sale) {
		this.sale = sale;
	}
	public String getEmploydate() {
		return employdate;
	}
	public void setEmploydate(String employdate) {
		this.employdate = employdate;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "Employee [user_id=" + user_id + ", real_name=" + real_name + ", sex=" + sex + ", mtel=" + mtel
				+ ", email=" + email + ", sale=" + sale + ", employdate=" + employdate + ", user_status=" + user_status
				+ ", job=" + job + ", page=" + page + ", rows=" + rows + "]";
	}
	
	
	
}
