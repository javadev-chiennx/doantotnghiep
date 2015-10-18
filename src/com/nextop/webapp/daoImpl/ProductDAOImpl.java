package com.nextop.webapp.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import com.nextop.webapp.dao.ProductsDAO;
import com.nextop.webapp.entities.Product;
import com.nextop.webapp.model.AbstractModel;
import com.nextop.webapp.util.HibernateUtil;
import com.nextop.webapp.util.IConstant;

@SuppressWarnings("serial")
public class ProductDAOImpl extends AbstractModel<Product> implements
		ProductsDAO {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	Session session = null;
	Transaction transaction = null;

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listAll() {
		List<Product> list = null;
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		sf.getCurrentSession().beginTransaction();
		session = sf.getCurrentSession();
		try {
			Criteria cr = session.createCriteria(Product.class);
			list = cr.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public void update(Integer integer) {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> findByName(String name) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		List<Product> products = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		StringBuilder sql = new StringBuilder();
		sql.append("select pd from Product pd where ");
		sql.append("pd.productName like '%" + name + "%' ");
		Session session = sessionFactory.getCurrentSession();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(sql.toString());
			products = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return products;
	}

	@Override
	public Product findById(Integer integer) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		Product product = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			product = (Product) session.get(Product.class, integer);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return product;
	}

	@SuppressWarnings("unchecked")
	public List<Product> getElementByPage(int currentPage) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		List<Product> list = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		StringBuilder sql = new StringBuilder();
		sql.append("FROM  Product pr ");
		sql.append("ORDER BY pr.productName ASC ");
		Session session = sessionFactory.getCurrentSession();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(sql.toString());
			query.setFirstResult((currentPage - 1) * IConstant.RECORD_PER_PAGE);
			query.setMaxResults(IConstant.RECORD_PER_PAGE);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	public List<Product> findByPrice(Float start, Float end) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		List<Product> list = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.getCurrentSession();
		try {
			transaction = session.beginTransaction();
			Criteria query = session.createCriteria(Product.class);
			query.add(Restrictions.between("salePrice", start, end));
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public List<Product> findByPrice() {
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Product> findByCategory(Integer categoryId) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		List<Product> products = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.getCurrentSession();
		StringBuilder sql = new StringBuilder();
		sql.append("select pr from Product pr, Category ct ");
		sql.append("where pr.categoryId = ct.categoryId ");
		sql.append("and pr.categoryId =" + categoryId + "");
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(sql.toString());
			products = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

	@SuppressWarnings("unchecked")
	public List<Product> findBySupplies(Integer suppliesID) {
		if (sf.getCurrentSession().isOpen()) {
			sf.getCurrentSession().close();
		}
		List<Product> products = null;
		@SuppressWarnings("unused")
		Transaction transaction = null;
		Session session = sessionFactory.getCurrentSession();
		StringBuilder sql = new StringBuilder();
		sql.append("select pd from Product pd, Supplier sp ");
		sql.append("where pd.supplierId = sp.supplierId ");
		sql.append("and pd.supplierId =" + suppliesID + "");
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery(sql.toString());
			products = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
}