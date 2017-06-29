package wpbn.pgis.action.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import wpbn.pgis.action.AbstarctAction;
import wpbn.pgis.entity.Course;
import wpbn.pgis.service.CourseService;

@SuppressWarnings("serial")
public class ViewCourseListAction extends AbstarctAction{

	@Autowired
	@Qualifier("courseService")
	private CourseService courseService;
	
	private List<Course> list;
	
	public String viewCourseList() {
		
		list = courseService.getCourseList();
		return SUCCESS;
		
	}

	public List<Course> getList() {
		return list;
	}

	public void setList(List<Course> list) {
		this.list = list;
	}
	
}
