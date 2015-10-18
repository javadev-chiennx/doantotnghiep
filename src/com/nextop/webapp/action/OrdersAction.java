package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;

import com.nextop.webapp.daoImpl.OrdersDAOImpl;
import com.nextop.webapp.entities.Orders;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ActionSupport;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {
	private static final long serialVersionUID = -1631531345388234030L;
	private List<Orders> ordersList = new ArrayList<Orders>();
	private OrdersDAOImpl manager = new OrdersDAOImpl();

	public List<Orders> getOrdersList() {
		return ordersList;
	}

	public void setOrdersList(List<Orders> ordersList) {
		this.ordersList = ordersList;
	}

	public String listOrder() {
		this.ordersList = manager.listAll();
		return SUCCESS;
	}

	@Override
	public Orders getModel() {
		return null;
	}
}
