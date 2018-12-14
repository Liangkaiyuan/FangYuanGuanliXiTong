package com.lky.web.action;

import com.lky.bean.Room;
import com.lky.bean.User;
import com.lky.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private static final long serialVersionUID = 1L;
	// 加载applicationContext文件

	// 模型属性传递对象，接收前台传递过来的对象属性
	// 手动创建对象
	private User user = new User();

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/*
	 * 用户注册
	 */
	public String save() {
		System.out.println(user.getName());
		System.out.println(user.getPassword());
		userService.save(user);
		return "save";
	}

	/**
	 * 用户登录
	 * 
	 * @return
	 */

	public String login() {

		HttpServletRequest request = (HttpServletRequest) ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		// session.setAttribute("Admin", admin);
		System.out.println(user.getName());
		System.out.println(user.getPassword());
		User user1 = userService.login(user);
		// 将list集合返回前台
		// 存在该用户时，将用户对象存入session
		if (user1!=null) {
			ActionContext.getContext().getSession().put("user1", user1);
			// 读取 User user = (User) session.getAttribute("user");
			return "login";
		} else {
			return "error";
		}
		
	}
	public String adminlogin() throws Exception {
		
	 
		// 将list集合返回前台
		// 存在该用户时，将用户对象存入session
		if (user.getName().equals("admin")&&user.getPassword().equals("admin")) {
			List<User> list = userService.list();
			ActionContext.getContext().put("list", list);
			return "adminlogin";
		} else {
			return "error";
		}
		
	}

	// 查询用户客房
	public String roomlist() {
		System.out.println(user.getId());
		List<Room> list = userService.userlist(user);
		// 将list集合返回前台
		ActionContext.getContext().put("list", list);
		return "roomlist_user";
	}

	/**
	 * 查询用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {

		// 加载配置文件

		// 每次都需要获取一个bean执行相应的方法
		// 获取第一个bean 然后他们自动调用里面注入的属性

		List<User> list = userService.list();
		ActionContext.getContext().put("list", list);
		// ServletActionContext.getRequest().setAttribute("list", list);

		return "success";
	}

	/**
	 * 修改用户
	 */

	public String update() {
		int id = user.getId();
		System.out.println(id);
		System.out.println(user.getName());
		userService.update(user);
		return "save";
	}

	/**
	 * 删除用户
	 */
	public String delete() {
		int id = user.getId();
		System.out.println("user的id" + user.getId());
		int i = userService.delete(id);
		return "save";

	}

}
