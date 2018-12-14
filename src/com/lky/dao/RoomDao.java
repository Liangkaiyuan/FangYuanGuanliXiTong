package com.lky.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.lky.bean.Room;
import com.lky.bean.User;
import com.lky.utils.HbUtil;

public class RoomDao{
/*	public static void main(String[] args) {
		insert();
	}*/
			
	static HbUtil hb=new HbUtil();
	/**
	 * 用户注册
	 */
	public int insert(Room room) {
		 
		// 开启一个opensession
		Session session = hb.getSession();
		// 开启一个事务
		Transaction ts = session.beginTransaction();
		// 操作一对多操作
		/*User user=new User();
		user.setName("123");
		user.setPassword("123");
		*/
		session.save(room);
		// 提交事务
		ts.commit();
		// 释放session
		session.close();
		return 0;

	}
	public List<Room> list() {
		Session session = hb.getSession();
		// 开启一个事务
		Transaction tx = session.beginTransaction();
		String hql="from Room";
		Query q = session.createQuery(hql);
		List<Room> list = q.list();
		// 提交事务
		tx.commit();
		// 释放session
		session.close();
		return list;
	}
	public List<Room> userlist(int user_id) {
		Session session = hb.getSession();
		// 开启一个事务
		Transaction tx = session.beginTransaction();
		String hql="from Room where user_id = ?";
		Query q = session.createQuery(hql);
		q.setInteger(0, user_id);
		List<Room> list = q.list();
		// 提交事务
		tx.commit();
		// 释放session
		session.close();
		return list;
	}
	public int delete(int id) {
		 
		Session session = hb.getSession();
		// 开启一个事务
		Transaction tx = session.beginTransaction();
		Room room = new Room();
		room.setId(id);
		 session.delete(room);
		
		tx.commit();
		// 释放session
		session.close();
		return 0;
	}
	public int update(Room room) {
		Session session = hb.getSession();
		// 开启一个事务
		Transaction tx = session.beginTransaction();
 	
	Query query = session.createQuery("update Room r set r.leixing = '"+room.getLeixing()+"',"
			+ " r.price='"+room.getPrice()+"'"
			+ ", r.xiaoqu='"+room.getXiaoqu()+"'"
			+ ", r.addrs='"+room.getAddrs()+"'"
			+ ", r.name='"+room.getName()+"'"
			+ ", r.phone='"+room.getPhone()+"'" +"where id = "+room.getId()+"");
	int i = query.executeUpdate();

		tx.commit();
		// 释放session
		session.close();
		return i;
		// TODO Auto-generated method stub
		
	}
	
	
	
}
