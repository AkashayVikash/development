package com.gts.web.dao;

import com.gts.web.model.Login;
import com.gts.web.model.Student;

public interface StudentDao {
	
	void register(Student student);
	Student validateStudent(Login login);

}
