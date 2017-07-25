package ssm.dao.impl;

import ssm.model.Course;
import ssm.dao.CourseDao;

import org.springframework.stereotype.Repository;

@Repository
public class CourseDaoImpl extends GenericDaoImpl<Course, Integer> implements CourseDao {
}