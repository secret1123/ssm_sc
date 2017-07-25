package ssm.dao.impl;

import ssm.model.StudentCourse;
import ssm.dao.StudentCourseDao;

import org.springframework.stereotype.Repository;

@Repository
public class StudentCourseDaoImpl extends GenericDaoImpl<StudentCourse, Integer> implements StudentCourseDao {
}