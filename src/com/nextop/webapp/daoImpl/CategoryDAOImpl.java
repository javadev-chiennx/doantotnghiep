package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.nextop.webapp.dao.CategoryDAO;
import com.nextop.webapp.entities.Category;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;

@SuppressWarnings("serial")
public class CategoryDAOImpl extends AbstractModel<Category> implements
		CategoryDAO {
	protected SessionFactory factory = HibernateUtil.getSessionFactory();
	Session session = null;
	Transaction transaction = null;

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> listAll() {
		List<Category> catergory = null;
		if (factory.getCurrentSession().isOpen()) {
			factory.getCurrentSession().close();

		}
		factory.getCurrentSession().beginTransaction();
		session = factory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Category.class);
			catergory = criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return catergory;

	}

	@Override
	public void update(Integer integer) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Category> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Category findById(Integer integer) {
		Category category = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			category = (Category) session.get(Category.class, integer);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return category;
	}
}