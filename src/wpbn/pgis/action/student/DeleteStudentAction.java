package wpbn.pgis.action.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class DeleteStudentAction extends AbstarctAction{
	
	private List<Integer> selected;
	
	@Autowired
	private StudentService studentService;
	
	
	public String deleteStudent() {
		

		for (int i = 0; i < selected.size(); i++) {

			System.out.print(selected.get(i) + "," + "");

		}
		System.out.println(" ");
		System.out.println("Size "+ selected.size());
		
		int status=0;
		for (int i = 0; i < selected.size(); i++) {
			int id = selected.get(i);
			System.out.println(id);
			status += studentService.deleteStudentsById(id);
			
			
			
		}
		
				
		if (status > 0) {
			
			return SUCCESS;
	
		}
		
		return SUCCESS;
		
	}

	public List<Integer> getSelected() {
		return selected;
	}

	public void setSelected(List<Integer> selected) {
		this.selected = selected;
	}

}
