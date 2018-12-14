package com.lky.bean;

public class Room {
	/*
	 * 房屋类型（大小）
	 * 价钱
	 * 所在小区
	 * 详细地址
	 * 联系人电话
	 * 联系电话
	 */
	private Integer id;
	private String leixing;
	private double price;
	private String xiaoqu;
	private String addrs;
	private String name;
	private String phone;
	private Integer u_id;
  
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	//表示多的一方
	private User user;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLeixing() {
		return leixing;
	}
	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getXiaoqu() {
		return xiaoqu;
	}
	public void setXiaoqu(String xiaoqu) {
		this.xiaoqu = xiaoqu;
	}
	public String getAddrs() {
		return addrs;
	}
	public void setAddrs(String addrs) {
		this.addrs = addrs;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	 
}
