package ssm.service.impl;

import ssm.model.StudentCourse;
import ssm.service.StudentCourseService;
import ssm.dao.GenericDao;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class StudentCourseServiceImpl extends GenericServiceImpl<StudentCourse, Integer> implements StudentCourseService {

@Override
@Autowired
@Qualifier("studentCourseDaoImpl")
void setGenericDao(GenericDao<StudentCourse, Integer> genericDao) {
super.genericDao = genericDao;
}
}