package com.lky.service;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lky.bean.Room;
import com.lky.bean.User;
import com.lky.dao.RoomDao;
import com.lky.dao.UserDao;
import com.lky.dao.UserDao;

public class RoomService{
	 
	//注入
	private RoomDao roomDao;
	public void setRoomDao(RoomDao roomDao) {
		this.roomDao = roomDao;
	}

public List<Room> list() {
	List<Room> list = roomDao.list();
	return list;
}
public List<Room> userlist(int user_id) {

	List<Room> list = roomDao.list();
	
	return list;
}

public int insert(Room room) {
	int i = roomDao.insert(room);
	
	return i;
	// TODO Auto-generated method stub
	
}

public int delete(int id) {
	// TODO Auto-generated method stub
	
	int i = roomDao.delete(id);
	return i;
}

public int update(Room room) {
	
	
	roomDao.update(room);
	return 0;
	// TODO Auto-generated method stub
	
}

}
