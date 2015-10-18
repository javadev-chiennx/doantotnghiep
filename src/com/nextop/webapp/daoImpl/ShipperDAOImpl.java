package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.nextop.webapp.dao.ShipperDAO;
import com.nextop.webapp.entities.Shippers;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;

@SuppressWarnings("serial")
public class ShipperDAOImpl extends AbstractModel<Shippers> implements
		ShipperDAO {
	protected SessionFactory factory = HibernateUtil.getSessionFactory();

	@SuppressWarnings("unchecked")
	@Override
	public List<Shippers> listAll() {
		List<Shippers> shippers = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			Criteria criteria = session.createCriteria(Shippers.class);
			shippers = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return shippers;
	}

	@Override
	public void update(Integer integer) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Shippers> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Shippers findById(Integer integer) {
		// TODO Auto-generated method stub
		return null;
	}
}