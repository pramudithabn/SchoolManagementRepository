package wpbn.pgis.action.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.service.CourseService;

@SuppressWarnings("serial")
public class DeleteCourseAction extends AbstarctAction{
	
	private List<Integer> selected;
	
	@Autowired
	private CourseService courseService;
	
	
	public String deleteCourse() {
		

		for (int i = 0; i < selected.size(); i++) {

			System.out.print(selected.get(i) + "," + "");

		}
		System.out.println(" ");
		System.out.println("Size "+ selected.size());
		
		int status=0;
		for (int i = 0; i < selected.size(); i++) {
			int id = selected.get(i);
			System.out.println(id);
			status += courseService.deleteCourseById(id);
			
			
			
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
