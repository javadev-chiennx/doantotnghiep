package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;

import com.nextop.webapp.daoImpl.ShipperDAOImpl;
import com.nextop.webapp.entities.Shippers;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ShippersAction extends ActionSupport implements
		ModelDriven<Shippers> {

	private static final long serialVersionUID = -4504163874350951044L;
	private Shippers shipper = new Shippers();
	private List<Shippers> list = new ArrayList<Shippers>();
	private ShipperDAOImpl manager = new ShipperDAOImpl();
	
	@Override
	public String execute() throws Exception {
		return INPUT;
	}

	@Override
	public Shippers getModel() {
		return shipper;
	}

	public Shippers getShipper() {
		return shipper;
	}

	public void setShipper(Shippers shipper) {
		this.shipper = shipper;
	}

	public List<Shippers> getList() {
		return list;
	}

	public void setList(List<Shippers> list) {
		this.list = list;
	}

	public String listShipper() {
		this.list = manager.listAll();
		return SUCCESS;
	}
	public String addShipper(){
		manager.addObject(shipper);
		return SUCCESS;
	}
	
}
