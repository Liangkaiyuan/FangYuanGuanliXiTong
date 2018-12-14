package com.lky.bean;

import java.util.HashSet;
import java.util.Set;

public class User {
	private Integer id;
	private String name;
	private String password;
	//代表一的一方
	
	private Set<Room> room=new HashSet<Room>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Room> getRoom() {
		return room;
	}

	public void setRoom(Set<Room> room) {
		this.room = room;
	}
	
	
	
	

}
