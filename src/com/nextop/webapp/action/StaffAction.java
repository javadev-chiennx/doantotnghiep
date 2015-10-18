package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.nextop.webapp.daoImpl.StaffDAOImpl;
import com.nextop.webapp.entities.Staff;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class StaffAction extends ActionSupport implements ModelDriven<Staff> {

	private static final long serialVersionUID = -1434021945955649529L;
	private String username;
	private String password;
	private Boolean isAdmin;
	private Staff staff = new Staff();
	private StaffDAOImpl manager = new StaffDAOImpl();
	private List<Staff> sList = new ArrayList<Staff>();

	public List<Staff> getsList() {
		return sList;
	}

	public void setsList(List<Staff> sList) {
		this.sList = sList;
	}

	public Staff getStaff() {
		return staff;
	}

	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	public String inputEmployee(){
		return INPUT;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(Boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Override
	public Staff getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	public String authenticate() {
		if (manager.loginAdmin(username, password, isAdmin) == null) {
			this.addActionError("Username or password invalid !");
			return ERROR;
		} else {
			Map<String, Object> map = ActionContext.getContext().getSession();
			map.put("username", username);
			return SUCCESS;
		}
	}

	public String logout() {
		Map<String, Object> map = ActionContext.getContext().getSession();
		map.remove("username");
		return SUCCESS;
	}

	public String listEmployees() {
		this.sList = manager.listAll();
		return SUCCESS;
	}
	
	public String addStaff(){
		manager.addObject(staff);
		return SUCCESS;
	}
}
