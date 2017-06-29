package wpbn.pgis.action.course;

import org.springframework.beans.factory.annotation.Autowired;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Course;
import wpbn.pgis.entity.Student;
import wpbn.pgis.service.CourseService;
import wpbn.pgis.service.StudentService;

@SuppressWarnings("serial")
public class AddCourseAction extends AbstarctAction{
	

	@Autowired
	public CourseService courseService;
	
	private Course course;
	
	public String viewAddCourseForm() {
		return SUCCESS;
		
	}
	

	public String saveCourse(){
		
		int s = courseService.addCourse(course);
		
		if(s>0)
		{
			addActionError("course.add.successful");
			return SUCCESS;}
			else{
				
			return INPUT;
			}
	}

	


}
