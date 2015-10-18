package com.nextop.webapp.model;

import java.io.*;

import org.hibernate.*;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.nextop.webapp.util.HibernateUtil;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("unchecked")
public abstract class AbstractModel<T> extends ActionSupport {

	private static final long serialVersionUID = 1345539568574000634L;
	private Class<T> entityClass;
	@SessionTarget
	Session session;
	@TransactionTarget
	Transaction transaction;
	protected final SessionFactory sessionFactory = HibernateUtil
			.getSessionFactory();

	public AbstractModel(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	public AbstractModel() {
	}

	public void update(T instance) {
		try {

		} catch (Exception e) {

		}
	}

	public boolean delete(T instance) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.delete(instance);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			return false;
		} finally {
			session.close();
		}
	}

	public void addObject(T instance) {
		Session session = sessionFactory.openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(instance);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
	}

	public T find(Object primarykey) {
		try {
			if (!sessionFactory.getCurrentSession().getTransaction().isActive())
				sessionFactory.getCurrentSession().getTransaction().begin();
			return (T) sessionFactory.getCurrentSession().get(entityClass,
					(Serializable) primarykey);
		} catch (RuntimeException re) {
			return null;
		}
	}
}