package wpbn.pgis.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wpbn.pgis.dao.StudentMapper;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.StudentService;


@Service("studentService")
public class StudentServiceImpl implements StudentService{
	
	@Autowired private StudentMapper studentMapper;

	@Override
	public List<Student> getStudentList() {
		
		return studentMapper.selectAll();
	}

	public int deleteStudentsById(int id) {
		
		return studentMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int addStudent(Student student) {
		
		return studentMapper.insertSelective(student);
	}

	@Override
	public Student getStudentById(String id) {
		
		return studentMapper.findById(id);
	}

	@Override
	public int UpdateStudent(Student student) {
		
		return studentMapper.updateByPrimaryKeySelective(student);
	}

}
