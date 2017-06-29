package wpbn.pgis.service;

import java.util.List;

import wpbn.pgis.entity.Course;

public interface CourseService {

	List<Course> getCourseList();

	int deleteCourseById(int id);

	int addCourse(Course course);

	Course getCourseById(String id);
	
	

}
