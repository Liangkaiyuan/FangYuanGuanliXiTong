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

public class UserDao{
/*	public static void main(String[] args) {
		insert();
	}*/
			
	static HbUtil hb=new HbUtil();
	/**
	 * 用户注册
	 */
	public int insert(User user) {
		// 开启一个opensession
		Session session = hb.getSession();
		// 开启一个事务
		Transaction ts = session.beginTransaction();
		// 操作一对多操作
		/*User user=new User();
		user.setName("123");
		user.setPassword("123");
		*/
		session.save(user);
		// 提交事务
		ts.commit();
		// 释放session
		session.close();
		return 0;

	}

	public List<User> list() throws Exception {
		// 开启一个opensession
		Session session = hb.getSession();
		// 开启一个事务transaction
		Transaction ts = session.beginTransaction();
		// 操作
		String hql = "from User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		// 提交事务
		ts.commit();
		// 释放session
		session.close();
		return list;

	}

	public int update(User user) {
				// 开启一个opensession
				Session session = hb.getSession();
				// 开启一个事务transaction
				Transaction ts = session.beginTransaction();
				// 操作
				/*user.setName(user.getName());
				user.setAge(user.getAge());
				session.update(user);*/
				Query query = session.createQuery("update User u set u.name = '"+user.getName()+"', u.password='"+user.getPassword()+"' where id = "+user.getId()+"");
				 
				int i = query.executeUpdate();
				// 提交事务
				ts.commit();
				// 释放session
				session.close();
				
					return 0;
				
	}

	public int delete(int id) {
	 
		// 开启一个opensession
		Session session = hb.getSession();

		// 开启一个事务transaction
		Transaction ts = session.beginTransaction();

		// 操作
		//根据id删除
		User user = new User();
		user.setId(id);
		session.delete(user);
		
		/*String hql="delete from User where id = '"+id+"'";
		 Query query = session.createQuery(hql);
		 int i = query.executeUpdate();*/
  
		// 提交事务
		ts.commit();
		// 释放session
		session.close();
		
			return 0;
		
	}

	public User login(User user) {
		Session session = hb.getSession();
				// 开启一个事务transaction
	    Transaction ts = session.beginTransaction();
	   try {
	    String hql="from User where name = ? and password = ?";
	    Query q = session.createQuery(hql);
	    q.setString(0, user.getName());
	    q.setString(1, user.getPassword());
	    List<User> list = q.list();
	    ts.commit();
		// 释放session
		session.close();
		 if(list!=null) {
		    	return list.get(0);
		    }else {
		    	return null;
			}
	
	} catch (Exception e) {
		System.out.println("用户登录产生异常");
		return null;
	}
	   
	}

	
	
	/**
	 * 根据用户查询订单
	 * @param user
	 * @return
	 */
	public List<Room> userlist(User user) {
		Session session = hb.getSession();
					// 开启一个事务transaction
			Transaction ts = session.beginTransaction();
			try {
			String hql="from Room where user_id = ? ";
			Query q = session.createQuery(hql);
			q.setInteger(0, user.getId());
			List<Room> list = q.list();
			ts.commit();
			// 释放session
			session.close();
			 if(list!=null && list.size()>0) {
			    	return list;
			    }else {
			    	return null;
				}
			} catch (Exception e) {
			System.out.println("用户登录产生异常");
			return null;
			}
				}
				
	
	
	
	
}
