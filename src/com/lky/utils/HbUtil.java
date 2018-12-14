package com.lky.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HbUtil {
	// 加载配置核心文件 默认src下Hibernate.cfg.xml
			Configuration cf = new Configuration().configure();
			// built创建sessionfactory对象
			SessionFactory sessionFactory = cf.buildSessionFactory();
			public Session getSession() {
				
				//返回一个session对象
				return sessionFactory.openSession();
 			
			}

}
