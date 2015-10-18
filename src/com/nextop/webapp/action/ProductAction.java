package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.nextop.webapp.daoImpl.ProductDAOImpl;
import com.nextop.webapp.entities.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProductAction extends ActionSupport implements
		ModelDriven<Product> {
	private static final long serialVersionUID = 6719901936234978287L;
	private Product product = new Product();
	private ProductDAOImpl manager = new ProductDAOImpl();
	private List<Product> listProducts = new ArrayList<Product>();
	HttpServletRequest request = (HttpServletRequest) ActionContext
			.getContext().get(ServletActionContext.HTTP_REQUEST);

	@Override
	public String execute() throws Exception {

		return INPUT;
	}

	public List<Product> getListProducts() {
		return listProducts;
	}

	public void setListProducts(List<Product> listProducts) {
		this.listProducts = listProducts;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public Product getModel() {
		return product;
	}

	public String listProducts() {
		this.listProducts = manager.listAll();
		return SUCCESS;

	}

	public String addProducts() {
		manager.addObject(product);
		return SUCCESS;
	}

	public String deleteProduct() {
		Integer integer = Integer.valueOf(request.getParameter("productId"));
		setProduct(manager.findById(integer));
		manager.delete(product);
		return SUCCESS;
	}
	public String search() {
		listProducts.clear();
		String input = request.getParameter("productName");
		listProducts = manager.findByName(input);
		return SUCCESS;
	}

	public String findCategorys() {
		listProducts.clear();
		Integer integer = Integer.valueOf(request.getParameter("category"));
		setListProducts(manager.findByCategory(integer));
		this.getListProducts();
		return SUCCESS;
	}
}
