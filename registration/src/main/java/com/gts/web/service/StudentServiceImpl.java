package com.gts.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.gts.web.dao.StudentDao;
import com.gts.web.model.Login;
import com.gts.web.model.Student;

public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;

	//@Override
	public void register(Student student) {
		
		studentDao.register(student);
		
	}

	//@Override
	public Student validateStudent(Login login) {
		
		return studentDao.validateStudent(login);
	}

}
