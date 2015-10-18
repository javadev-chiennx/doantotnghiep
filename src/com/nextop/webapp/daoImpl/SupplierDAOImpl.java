package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nextop.webapp.dao.SupplierDAO;
import com.nextop.webapp.entities.Supplier;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;

public class SupplierDAOImpl extends AbstractModel<Supplier> implements
		SupplierDAO {

	private static final long serialVersionUID = 2375909477289144046L;
	protected SessionFactory sf = HibernateUtil.getSessionFactory();
	Session session = null;

	@SuppressWarnings("unchecked")
	@Override
	public List<Supplier> listAll() {
		List<Supplier> suppliers = null;
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		sf.getCurrentSession().beginTransaction();
		session = sf.getCurrentSession();
		try {
			Criteria cr = session.createCriteria(Supplier.class);
			suppliers = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return suppliers;
	}

	@Override
	public void update(Integer integer) {
		Supplier supplier = null;
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			supplier = (Supplier) session.get(Supplier.class, integer);
			session.update(supplier);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}

	}

	@Override
	public List<Supplier> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Supplier findById(Integer integer) {
		Supplier supplier = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			supplier = (Supplier) session.get(Supplier.class, integer);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return supplier;
	}
}