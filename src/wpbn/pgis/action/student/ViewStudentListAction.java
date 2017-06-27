package wpbn.pgis.action.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class ViewStudentListAction extends AbstarctAction{
	
	@Autowired
	@Qualifier("studentService")
	private StudentService studentService;
	
	private List<Student> list;
	
	public String viewStudentsList() {
		
		list = studentService.getStudentList();
		return SUCCESS;
		
	}

	public List<Student> getList() {
		return list;
	}

	public void setList(List<Student> list) {
		this.list = list;
	}
	
	
	

}
