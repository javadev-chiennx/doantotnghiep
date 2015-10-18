package com.nextop.webapp.action;

import com.nextop.webapp.entities.Feedaback;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FeedabackAction extends ActionSupport implements
		ModelDriven<Feedaback> {

	private static final long serialVersionUID = 5786217870951580348L;

	@Override
	public Feedaback getModel() {
		return null;
	}
}
