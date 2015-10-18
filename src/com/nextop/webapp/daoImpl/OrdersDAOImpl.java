package com.nextop.webapp.daoImpl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.nextop.webapp.dao.OrderDAO;
import com.nextop.webapp.entities.Orders;
import com.nextop.webapp.util.*;

public class OrdersDAOImpl implements OrderDAO {
	protected SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session = null;
	Transaction transaction = null;

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> listAll() {
		List<Orders> orders = null;
		if (factory.getCurrentSession().isOpen()) {
			factory.getCurrentSession().close();

		}
		factory.getCurrentSession().beginTransaction();
		session = factory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Orders.class);
			orders = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return orders;
	}

	@Override
	public void update(Integer integer) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Orders> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Orders findById(Integer integer) {
		// TODO Auto-generated method stub
		return null;
	}

}