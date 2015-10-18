package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.nextop.webapp.daoImpl.SupplierDAOImpl;
import com.nextop.webapp.entities.Supplier;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SupplierAction extends ActionSupport implements
		ModelDriven<Supplier> {

	private static final long serialVersionUID = 7208810307036804086L;
	private List<Supplier> listSupplies = new ArrayList<Supplier>();
	private SupplierDAOImpl manager = new SupplierDAOImpl();
	private Supplier supplier = new Supplier();

	@Override
	public String execute() throws Exception {
		return INPUT;
	}
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public List<Supplier> getListSupplies() {
		return listSupplies;
	}

	public void setListSupplies(List<Supplier> list) {
		this.listSupplies = list;
	}

	@Override
	public Supplier getModel() {
		return supplier;
	}

	public String listSuppelies() {
		this.listSupplies = manager.listAll();
		return SUCCESS;
	}

	public String addSupplier() {
		manager.addObject(supplier);
		return SUCCESS;
	}

	public String deleteSupplier() {
		HttpServletRequest request = (HttpServletRequest) ActionContext
				.getContext().get(ServletActionContext.HTTP_REQUEST);
		Integer supplierId = Integer
				.valueOf(request.getParameter("supplierId"));
		setSupplier(manager.findById(supplierId));
		manager.delete(supplier);
		return SUCCESS;
	}
}