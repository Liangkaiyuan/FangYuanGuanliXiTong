package com.lky.web.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lky.bean.Room;
import com.lky.bean.User;
import com.lky.service.RoomService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {

	private static final long serialVersionUID = 1L;
	// 加载applicationContext文件

	// 模型属性传递对象，接收前台传递过来的对象属性
	// 手动创建对象
	private Room room = new Room();
	
	@Override
	public Room getModel() {
		// TODO Auto-generated method stub
		return room;
	}
	
	private RoomService roomService;
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	public String list() throws Exception {
		List<Room> list = roomService.list();
		ActionContext.getContext().put("list", list);
		// ServletActionContext.getRequest().setAttribute("list", list);
		return "list";
	}
	public String adminlist() throws Exception {
		List<Room> list = roomService.list();
		ActionContext.getContext().put("list", list);
		// ServletActionContext.getRequest().setAttribute("list", list);
		return "adminlist";
	}
	
	public String list_index() throws Exception {
		List<Room> list = roomService.list();
		ActionContext.getContext().put("list", list);
		// ServletActionContext.getRequest().setAttribute("list", list);
		return "list_index";
	}
	
	public String userlist(int u_id) throws Exception {
		List<Room> list = roomService.list();
		ActionContext.getContext().put("list", list);
		// ServletActionContext.getRequest().setAttribute("list", list);
		return "success";
	}
	public String insert() throws Exception {
		User user = new User();
		int u_id=room.getU_id();
		System.out.println("主键"+u_id);
		user.setId(u_id);
		room.setUser(user);
		int i = roomService.insert(room);
		return "roominsert";
	}
	public String delete() throws Exception {
		int id=room.getId();
		int i = roomService.delete(id);
		return "roominsert";
	}
	
	
	public String update() throws Exception {
		
		
		int i = roomService.update(room);
		
		
		return "save";
	}
	
	
	
	
}
