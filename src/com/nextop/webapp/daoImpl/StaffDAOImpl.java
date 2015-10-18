package com.nextop.webapp.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nextop.webapp.dao.StaffDAO;
import com.nextop.webapp.entities.Staff;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;

@SuppressWarnings("serial")
public class StaffDAOImpl extends AbstractModel<Staff> implements StaffDAO {
	SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session = null;
	Transaction transaction = null;
	StringBuilder sql = new StringBuilder();

	public StaffDAOImpl() {
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Staff> listAll() {
		List<Staff> staffs = null;
		if (factory.getCurrentSession().isOpen()) {
			factory.getCurrentSession().close();
		}
		factory.getCurrentSession().beginTransaction();
		session = factory.getCurrentSession();
		try {
			Criteria cr = session.createCriteria(Staff.class);
			staffs = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return staffs;
	}

	@Override
	public void update(Integer integer) {
		try {
			session.update(integer);
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Staff> findByName(String strName) {
		try {
			List<Staff> list = new ArrayList<Staff>();
			if (sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			sql.setLength(0);
			sql.append("from Staff sta ");
			sql.append("where sta.fullname = :fullname");
			Query query = sessionFactory.getCurrentSession().createQuery(
					sql.toString());
			query.setString("fullname", strName);
			list = query.list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Staff findById(Integer id) {
		try {
			if (sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			sql.setLength(0);
			sql.append("from Staff sta ");
			sql.append("where sta.staffID = :staffID");
			Query query = sessionFactory.getCurrentSession().createQuery(
					sql.toString());
			query.setInteger("staffID", id);
			return (Staff) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Staff loginAdmin(String username, String password, Boolean isAdmin) {
		try {
			if (!sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			StringBuilder sql = new StringBuilder();
			sql.append("from Staff as sta ");
			sql.append("where sta.username = :username ");
			sql.append("and sta.password = :password ");
			sql.append("and sta.isAdmin = :isAdmin");
			Query query = sessionFactory.getCurrentSession().createQuery(
					sql.toString());
			query.setParameter("username", username);
			query.setParameter("password", password);
			query.setParameter("isAdmin", true);
			return (Staff) query.uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			sessionFactory.getCurrentSession().close();
		}
	}

}