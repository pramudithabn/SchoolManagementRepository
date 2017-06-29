package wpbn.pgis.action.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Course;
import wpbn.pgis.service.CourseService;

@SuppressWarnings("serial")
public class EditCourseAction extends AbstarctAction{
	
	@Autowired 
	@Qualifier("courseService")
	private CourseService courseService;
	private String id;
	private Course course;

	
	public String editCourse() {
		
		setCourse(courseService.getCourseById(id));
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}



	
	
}
