package wpbn.pgis.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wpbn.pgis.dao.CourseMapper;
import wpbn.pgis.entity.Course;
import wpbn.pgis.service.CourseService;

@Service("courseService")
public class CourseServiceImpl implements CourseService {
	
	@Autowired private CourseMapper courseMapper;

	@Override
	public List<Course> getCourseList() {
		
		return courseMapper.selectAll();
	}

	@Override
	public int deleteCourseById(int id) {
		
		return courseMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int addCourse(Course course) {
		return courseMapper.insertSelective(course);
	}

	@Override
	public Course getCourseById(String id) {


		return courseMapper.findById(id);
	}

}
