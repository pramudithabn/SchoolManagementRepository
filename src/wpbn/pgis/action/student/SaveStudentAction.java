package wpbn.pgis.action.student;

import org.springframework.beans.factory.annotation.Autowired;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class SaveStudentAction extends AbstarctAction{
	
	@Autowired
	public StudentService studentService;
	
	private Student student;
	
	
	public String saveStudent(){
		
		int s = studentService.addStudent(student);
		
		if(s>0)
		{
			addActionError("item.add.successful");
			return SUCCESS;}
			else{
				
			return INPUT;
			}
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

}
