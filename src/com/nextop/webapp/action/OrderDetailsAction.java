package com.nextop.webapp.action;

import com.nextop.webapp.entities.OrderDetails;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderDetailsAction extends ActionSupport implements
		ModelDriven<OrderDetails> {
	private static final long serialVersionUID = 6547504316184955271L;

	@Override
	public OrderDetails getModel() {
		return null;
	}
}
