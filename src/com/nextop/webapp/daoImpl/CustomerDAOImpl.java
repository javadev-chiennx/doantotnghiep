package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nextop.webapp.dao.CustomerDAO;
import com.nextop.webapp.entities.Customer;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;
import com.googlecode.s2hibernate.struts2.plugin.annotations.*;

@SuppressWarnings("serial")
public class CustomerDAOImpl extends AbstractModel<Customer> implements
		CustomerDAO {
	private final SessionFactory factory = HibernateUtil.getSessionFactory();// init
																				// session
	@SessionTarget
	Session session = null;
	@TransactionTarget
	Transaction transsaction = null;

	@Override
	public Customer login(String username, String password) {
		try {
			if (!sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().beginTransaction();
			StringBuilder sql = new StringBuilder();
			sql.append("from Customer as c ");
			sql.append("where c.username = :username ");
			sql.append("and c.password = :password");
			Query query = sessionFactory.getCurrentSession().createQuery(sql.toString());
			query.setParameter("username", username);
			query.setParameter("password", password);
			return (Customer) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			sessionFactory.getCurrentSession().close();
		}
	}

	/* retrieve list customer from db */
	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> listAll() {
		List<Customer> customer = null;
		if (factory.getCurrentSession().isOpen()) {
			factory.getCurrentSession().close();
		}
		factory.getCurrentSession().beginTransaction();
		session = factory.getCurrentSession();
		try {
			Criteria cr = session.createCriteria(Customer.class);
			customer = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return customer;
	}

	@Override
	public void update(Integer integer) {

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> findByName(String name) {
		List<Customer> list = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Customer where customerName = :customerName");
			query.setString("customerName", name);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public Customer findById(Integer integer) {
		Customer customer = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			customer = (Customer) session.get(Customer.class, integer);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return customer;
	}
}
