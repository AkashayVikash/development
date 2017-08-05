package com.gts.web.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.gts.web.model.Login;
import com.gts.web.model.Student;

public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory sessionFactory ;
	

	/*@Override*/
	public void register(Student student) {
		getCurrentSession().save(student);
		

	}

	/*@Override*/
	public Student validateStudent(Login login) {

		Criteria criteria = getCurrentSession().createCriteria(Student.class);
		criteria.add(Restrictions.eq("username", login.getUsername()));
		criteria.add(Restrictions.eq("password", login.getPassword()));

		Student result = (Student) criteria.uniqueResult();
		return null != result ? result : null;

	}
	
	protected final Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

	/*public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}*/
	
	

}
