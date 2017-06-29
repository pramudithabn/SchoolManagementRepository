package wpbn.pgis.action.student;

import org.springframework.beans.factory.annotation.Autowired;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class UpdateStudentAction extends AbstarctAction {

	@Autowired
	private StudentService studentService;
	
	private Student student;
	
	public String updateStudent() {
		
		int status = studentService.UpdateStudent(student);
		System.out.println(student);
		
		if(status>0)
		{
			return SUCCESS;
		}
		else
		{
			return ERROR;
		}
		
		
	}
}
