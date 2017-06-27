package wpbn.pgis.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import wpbn.pgis.entity.Student;
import wpbn.pgis.entity.StudentExample;

public interface StudentMapper {

	
	
	long countByExample(StudentExample example);

	
	int deleteByExample(StudentExample example);

	int deleteByPrimaryKey(Integer id);

	
	int insert(Student record);

	
	int insertSelective(Student record);

	
	List<Student> selectByExample(StudentExample example);

	
	Student selectByPrimaryKey(Integer id);

	
	int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

	
	int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

	
	int updateByPrimaryKeySelective(Student record);

	int updateByPrimaryKey(Student record);
	
	@Select("SELECT * FROM student")
	@ResultMap(value = "BaseResultMap")
	List<Student> selectAll();
}