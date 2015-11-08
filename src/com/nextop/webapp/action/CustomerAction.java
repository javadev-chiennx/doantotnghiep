package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nextop.webapp.daoImpl.CustomerDAOImpl;
import com.nextop.webapp.daoImpl.ProductDAOImpl;
import com.nextop.webapp.entities.Customer;
import com.nextop.webapp.entities.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.nextop.webapp.util.*;

public class CustomerAction extends ActionSupport implements
		ModelDriven<Customer> {

	private static final long serialVersionUID = -8659987679861137315L;
	private CustomerDAOImpl manager = new CustomerDAOImpl();
	private Customer customer = new Customer();
	private List<Customer> list = new ArrayList<Customer>();
	private List<Product> products = new ArrayList<Product>();
	public ProductDAOImpl daoImpl = new ProductDAOImpl();
	private Product pro = new Product();
	private String username;
	private String password;
	private int totalPage;
	private int totalRecord;
	private int currentPage;
	HttpServletRequest request = (HttpServletRequest) ActionContext
			.getContext().get(ServletActionContext.HTTP_REQUEST);

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
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

	public List<Customer> getList() {
		return list;
	}

	public void setList(List<Customer> list) {
		this.list = list;
	}

	public Product getPro() {
		return pro;
	}

	public void setPro(Product pro) {
		this.pro = pro;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageNumber() {
		return currentPage;
	}

	public void setPageNumber(int currentPage) {
		this.currentPage = currentPage;
	}

	@Override
	public Customer getModel() {
		return null;
	}

	@Override
	public String execute() throws Exception {

		this.products = daoImpl.listAll();
		totalRecord = products.size();// lay tong so ban ghi trong db
		if (totalRecord % IConstant.RECORD_PER_PAGE != 0)
			totalPage = totalRecord / IConstant.RECORD_PER_PAGE + 1;
		else
			totalPage = totalRecord / IConstant.RECORD_PER_PAGE;
		if (request.getParameter("currentPage") == null) {
			currentPage = 1;
		} else {
			currentPage = Integer.valueOf(request.getParameter("currentPage"));
		}
		products.clear();
		this.products = daoImpl.getElementByPage(currentPage);
		return SUCCESS;
	}

	public String inputForm() {
		return INPUT;
	}

	public String switchLocale() {
		return SUCCESS;
	}

	// retrieve obj and compare with input
	public String login() {
		if (manager.login(username, password) != null) {
			Map<String, Object> map = ActionContext.getContext().getSession();
			map.put("username", username);
			return SUCCESS;
		} else {
			addActionError(getText("lable.up.incorrect"));
			return ERROR;
		}
	}

	public String listCustomer() {
		list.clear();
		this.list = manager.listAll();
		return SUCCESS;
	}

	public String addCust() {
		manager.addObject(customer);
		return SUCCESS;
	}

	public String deleteCustomer() {
		Integer customerId = Integer
				.valueOf(request.getParameter("customerId"));
		setCustomer(manager.findById(customerId));
		manager.delete(customer);
		return SUCCESS;
	}

	public String findCategorys() {
		products.clear();
		Integer integer = Integer.valueOf(request.getParameter("category"));
		this.products = daoImpl.findByCategory(integer);
		return SUCCESS;
	}

	public String findSupplies() {
		products.clear();
		Integer suppliesID = Integer.valueOf(request.getParameter("supplies"));
		this.products = daoImpl.findBySupplies(suppliesID);
		return SUCCESS;
	}

	public String findByPrices() {
		products.clear();
		Float price1 = Float.valueOf(request.getParameter("price1"));
		Float price2 = Float.valueOf(request.getParameter("price2"));
		this.products = daoImpl.findByPrice(price1, price2);
		return SUCCESS;

	}
	public String findById(){
		@SuppressWarnings("unused")
		Product product = null;
		Integer integer = Integer.valueOf(request.getParameter("productDetails"));
		product = daoImpl.findById(integer);
		return SUCCESS;
	}
	public String search() {
		HttpServletRequest request = (HttpServletRequest) ActionContext
				.getContext().get(ServletActionContext.HTTP_REQUEST);
		products.clear();
		String input = request.getParameter("productName");
		products = daoImpl.findByName(input);
		return SUCCESS;
	}
}
