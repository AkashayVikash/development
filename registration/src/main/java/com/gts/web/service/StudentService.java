package com.gts.web.service;

import com.gts.web.model.Login;
import com.gts.web.model.Student;

public interface StudentService {
	
	void register(Student student);
	Student validateStudent(Login login);


}
