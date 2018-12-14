package com.lky.service;
import java.util.List;

import com.lky.bean.Room;
import com.lky.bean.User;
import com.lky.dao.UserDao;

public class UserService{
	User user=new User();
	 
	//注入
	private UserDao userDao;
 
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/*
	 * 查询列表方法
	 */
	public List<User> list() throws Exception{
		List<User> list = userDao.list();
		return list;
	}
/*
 * 保存	
 */
	
public int save(User user) {
	int i = userDao.insert(user);
	return i;
}

/*
 * 更新
 */
public int update(User user) {
	int i = userDao.update(user);
	return i;
}

/*
 * 删除
 */
public int delete(int id) {
	int i = userDao.delete(id);
	return i;
}

public User login(User user) {
	User user1= userDao.login(user);
	return user1;
}

public List<Room> userlist(User user) {
	List<Room> list = userDao.userlist(user);
	// TODO Auto-generated method stub
	return list;
}

 

}
