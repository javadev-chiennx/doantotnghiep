package com.nextop.webapp.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nextop.webapp.daoImpl.CountryDAOImpl;
import com.nextop.webapp.entities.Country;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CountryAction extends ActionSupport implements
		ModelDriven<Country> {

	private static final long serialVersionUID = -6369394417401480093L;
	private List<Country> country = new ArrayList<Country>();
	private CountryDAOImpl manager = new CountryDAOImpl();
	private Country count = new Country();

	@Override
	public Country getModel() {
		return count;
	}
	
	@Override
	public String execute() throws Exception {
		return INPUT;
	}

	public Country getCount() {
		return count;
	}

	public void setCount(Country count) {
		this.count = count;
	}

	public List<Country> getCountry() {
		return country;
	}

	public void setCountry(List<Country> country) {
		this.country = country;
	}

	public String listCountry() {
		this.country = manager.listAll();
		return SUCCESS;
	}

	public String addCountry() {
		manager.addObject(count);
		return SUCCESS;
	}
	public String deleteCount(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		Integer countryId = Integer.valueOf(request.getParameter("countryId"));
		setCount(manager.findById(countryId));
		manager.delete(count);
		return SUCCESS;
		
	}
}
