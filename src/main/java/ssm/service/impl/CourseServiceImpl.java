package ssm.service.impl;

import ssm.model.Course;
import ssm.service.CourseService;
import ssm.dao.GenericDao;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class CourseServiceImpl extends GenericServiceImpl<Course, Integer> implements CourseService {

@Override
@Autowired
@Qualifier("courseDaoImpl")
void setGenericDao(GenericDao<Course, Integer> genericDao) {
super.genericDao = genericDao;
}
}