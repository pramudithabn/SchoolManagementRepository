package wpbn.pgis.action.student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class EditStudentAction extends AbstarctAction{
	
	@Autowired 
	@Qualifier("studentService")
	private StudentService studentService;
	private String id;
	private Student student;

	
	public String editStudent() {
		
		setStudent(studentService.getStudentById(id));
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	

}
