package wpbn.pgis.service;

import java.util.List;

import wpbn.pgis.entity.Student;

public interface StudentService {

	List<Student> getStudentList();

	

	int deleteStudentsById(int id);



	int addStudent(Student student);



	Student getStudentById(String id);



	int UpdateStudent(Student student);





}
