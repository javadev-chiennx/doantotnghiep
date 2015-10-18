package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nextop.webapp.daoImpl.CategoryDAOImpl;
import com.nextop.webapp.entities.Category;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CategoryAction extends ActionSupport implements
		ModelDriven<Category> {

	private static final long serialVersionUID = -5299583787379441986L;
	private List<Category> categorys = new ArrayList<Category>();
	private CategoryDAOImpl manager = new CategoryDAOImpl();
	private Category category = new Category();
	
	@Override
	public String execute() throws Exception {
		return INPUT;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCountrys() {
		return categorys;
	}

	public void setCountrys(List<Category> categorys) {
		this.categorys = categorys;
	}

	@Override
	public Category getModel() {
		return null;
	}

	public String listCountry() {
		categorys.clear();
		this.categorys = manager.listAll();
		return SUCCESS;
	}
	public String addCategory(){
		manager.addObject(category);
		return SUCCESS;
	}
	public String deleCategory(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Integer categoryId = Integer.valueOf(request.getParameter("categoryId"));
		setCategory(manager.findById(categoryId));
		manager.delete(getCategory());
		return SUCCESS;
	}
}
