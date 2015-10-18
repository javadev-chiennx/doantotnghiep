package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nextop.webapp.dao.CountryDAO;
import com.nextop.webapp.entities.Country;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;

@SuppressWarnings("serial")
public class CountryDAOImpl extends AbstractModel<Country> implements
		CountryDAO {
	SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session = null;
	Transaction transaction = null;

	@SuppressWarnings("unchecked")
	@Override
	public List<Country> listAll() {
		List<Country> countries = null;
		if (factory.getCurrentSession().isOpen()) {
			factory.getCurrentSession().close();

		}
		factory.getCurrentSession().beginTransaction();
		session = factory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Country.class);
			countries = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return countries;
	}

	@Override
	public void update(Integer integer) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Country> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Country findById(Integer integer) {
		Country country = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = factory.openSession();
		try {
			transaction = session.beginTransaction();
			country = (Country) session.get(Country.class, integer);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return country;
	}

}