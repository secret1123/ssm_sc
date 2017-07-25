package ssm.service.impl;

import ssm.model.Student;
import ssm.service.StudentService;
import ssm.dao.GenericDao;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class StudentServiceImpl extends GenericServiceImpl<Student, Integer> implements StudentService {

@Override
@Autowired
@Qualifier("studentDaoImpl")
void setGenericDao(GenericDao<Student, Integer> genericDao) {
super.genericDao = genericDao;
}
}